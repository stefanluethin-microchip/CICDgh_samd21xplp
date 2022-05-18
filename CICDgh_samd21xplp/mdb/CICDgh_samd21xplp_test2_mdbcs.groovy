 //-project, module name
package myCICDmdbcs
 //-using modules
import com.microchip.mdbcs.Debugger;

class myTest {
    //------ local functions ------------/
    byte[] long2byte( long val )
    { 
        byte[] buffer = new byte[4]
        buffer[3] = (val>>24)&0x000000FF
        buffer[2] = (val>>16)&0x000000FF
        buffer[1] = (val>>8 )&0x000000FF
        buffer[0] = (val>>0 )&0x000000FF
      
        return buffer
    } //-end long2byte()
    
    Long byte2long( byte[] buffer )
    {
        def returnValue
    
        def a = (buffer[3]<<24)&0xFFFFFFFF
        def b = (buffer[2]<<16)&0xFFFFFFFF
        def c = (buffer[1]<<8 )&0xFFFFFFFF
        def d = (buffer[0]<<0 )&0xFFFFFFFF
    
        returnValue = a | b | c | d
    } //- end 'byte2long()'

      //-class variables 
    def Debugger debugger = null;
    String MODE2USE = "debug"
    String DEV2USE = "ATSAMD21J18A"
    String DBG2USE = "EDBG"
            
    //- 3rd param of debugger-obj is type 'bool'
    //-   'true'  = connect for debugging
    //-   'false' = only download, no debugging
    Boolean CONN_MODE = true
             
     //- elf-2-load with absolute path    
    //-prj: C:\mchp\Seminars\2022\220516_cicd\FW\CICDgh_samd21xplp\CICDgh_samd21xplp\firmware\CICDgit_samd21xplp.X\
    //-elf:     dist\samd21xplp\production\CICDgit_samd21xplp.X.production.elf
    String PRJ_ROOT_ABS_P = "C:\\mchp\\Seminars\\2022\\220516_cicd\\FW\\CICDgh_samd21xplp"
    String PJR_N = "CICDgh_samd21xplp"
    String MPLAB_PRJ_N = "CICDgit_samd21xplp.X"
    String PRJ_P = PRJ_ROOT_ABS_P + "\\" + PJR_N + "\\" + "firmware" + "\\" + MPLAB_PRJ_N
    String MPLAB_CFG_N = "samd21xplp"
    String ELF_P = PRJ_P + "\\" + "dist" + "\\" + MPLAB_CFG_N + "\\" + MODE2USE + "\\"
     //-CICDgit_samd21xplp.X.production.elf
    String ELF_NAME = MPLAB_PRJ_N + "." + MODE2USE + ".elf"
    String ELF2USE= ELF_P + "\\" + ELF_NAME
     //-regression variables
    def REGR_LED_MAX = 14
    def REGR_LED_THR = REGR_LED_MAX/2
    def LED_CNT_MOD  = 10
      //-end variables 
  
    static void main(args) {
        new myTest().run();
    } //-end 'void main()'
     //-perform test
    def run() {
        try {
             //---------------- MAIN -------------------/
            println("=================================");
            println("##### Start running-" + ELF2USE + "-");
            
            Properties props = new Properties();
            //-!! use existing Props, BUT following creates Groovy-error
            //Properties props = debugger.getToolProperties();
            props.setProperty("programoptions.eraseb4program", "true");
            props.setProperty("communication.interface", "swd");

             //- set device and debugger and connect-mode=dbg/production
             //debugger = new Debugger("ATSAMD21J18A", "EDBG", true);
            debugger = new Debugger(DEV2USE, DBG2USE, CONN_MODE);          

             //-connect to dbg & program elf
            debugger.connect();
            debugger.loadFile(ELF2USE);
            debugger.program();
            
             //-################################################-//
             //-############## start test (1.run) ##############-//
             //-################################################-//
             //-run for random-num of millis
            Random randVal = new Random()
            int val3 = randVal.nextInt(10) //-so we at least run 3s
            int randMillis = val3*1000
            println("");
            println("");
            println("");
            println("============================================================================");
            println("     ########### Performing test (1.run) -> running " + val3 + "sec and then halt");
            println("");
            debugger.run();
            debugger.sleep(randMillis);
            debugger.halt();
            while (debugger.isRunning()) {};
            def pc = debugger.getPC();
            println("########### Halted at: 0x" + Long.toHexString(pc));

             //-################################################-//
             //-############## start test (2.run) ##############-//
             //-################################################-//

             //-############## regression goal #################-//
             //-solve mdb.bat-limit 'interpreting output'
             //- UARTTX prints 2 chars, ch1='a' fix and
             //-  ch2=array[char2prntIdx]={'b','c','d'} and initially
             //-  char2prntIdx=0 at start, but can be changed as global var
             //- Now decide what to print for ch2 depending on 'finalLedCnt' and re-run 
             //-   2.time with (REGR_LED_MAX=10 and REGR_LED_THR=REGR_LED_MAX/2) 'char2prntIdx'
             //-  =1 -> ch2='c' if '0               < $(finalLedCnt)%10 < $(REGR_LED_THR)' (== finalLedCnt=0-4)
             //-  =2 -> ch2='d' if '$(REGR_LED_THR) < $(finalLedCnt)%10 < $(REGR_LED_MAX)' (== finalLedCnt=5-9)

             //-############## regression loop (2.run) #################-//
             //-after 'random-milli-sec' run, halt and 
             //- read current value of global variable 'char2prntIdx'
            String char2prntIdxSymbStr = "char2prntIdx";
            def char2prntIdxSymbAddr = debugger.getSymbolAddress(char2prntIdxSymbStr)
            byte[] char2prntIdxBuf = new byte[4]
            debugger.readFileRegisters(char2prntIdxSymbAddr, char2prntIdxBuf.length, char2prntIdxBuf);
            def char2prntIdxVal = byte2long(char2prntIdxBuf);
            println("########### Address of \"" + char2prntIdxSymbStr + "\": 0x" + Long.toHexString(char2prntIdxSymbAddr) + " Value : " + char2prntIdxVal);
            
             //- also read current value of global variable 'finalLedCnt'
            String finalLedCntSymbStr = "finalLedCnt";
            def finalLedCntAddr = debugger.getSymbolAddress(finalLedCntSymbStr)
            byte[] finalLedCntBuf = new byte[4]
            debugger.readFileRegisters(finalLedCntAddr, finalLedCntBuf.length, finalLedCntBuf);
            def finalLedCntVal = byte2long(finalLedCntBuf);
            println("########### Address of \"" + finalLedCntSymbStr + "\": 0x" + Long.toHexString(finalLedCntAddr) + " Value : " + finalLedCntVal);

             //-############## decision for 2.run #################-//
             //-now for 2.run set ch2 (='char2prntIdx') depending on 'finalLedCnt'
             //-  =1 -> ch2='c' if '0               < $(finalLedCnt)%10 < $(REGR_LED_THR)' (== finalLedCnt=0-4)
             //-  =2 -> ch2='d' if '$(REGR_LED_THR) < $(finalLedCnt)%10 < $(REGR_LED_MAX)' (== finalLedCnt=5-9)
            def finalLedCntValTest = finalLedCntVal%LED_CNT_MOD 
            def CH2_IDX_NEW = 0
            if ( (0 <= finalLedCntValTest) && (finalLedCntValTest < REGR_LED_THR) )
            {
                CH2_IDX_NEW = 1
            } else if ( (REGR_LED_THR <= finalLedCntValTest) && (finalLedCntValTest < REGR_LED_MAX) )
            {
                CH2_IDX_NEW = 2
            } else 
            {
                CH2_IDX_NEW = 0
            }
            byte[] ch2IdxNewBuf = new byte[4]
            ch2IdxNewBuf = long2byte(CH2_IDX_NEW);
            debugger.writeFileRegisters(char2prntIdxSymbAddr, ch2IdxNewBuf.length, ch2IdxNewBuf);
            println("########### for 2.run ch2_idx(new): " + CH2_IDX_NEW);            
            
            
             //-new 'char2prntIdx' written, so can 'continue'/'reset+run' 2.time again for random millis
            int val4 = (1 + randVal.nextInt(10)) //-so we at least run 3s           
            int rand2Millis = val4*1000            
            println("");
            println("");
            println("");
            println("============================================================================");
            println("     ########### Performing test (2.run) -> running " + val4 + "sec and then halt");
            println("");

            debugger.run();
            debugger.sleep(rand2Millis);
            debugger.halt();
            while (debugger.isRunning()) {};

             //set breakpoint 'testEnd()' and jump there
            String testEndSymb = "testEnd"
            debugger.setBP(testEndSymb)
            def testEndAddr = debugger.getSymbolAddress(testEndSymb)
            debugger.setPC(testEndAddr)
            
             //-get final result of 'finalLedCnt'
            debugger.readFileRegisters(finalLedCntAddr, finalLedCntBuf.length, finalLedCntBuf);
            finalLedCntVal = byte2long(finalLedCntBuf);
            println("########### Address of \"" + finalLedCntSymbStr + "\": 0x" + Long.toHexString(finalLedCntAddr) + " Value : " + finalLedCntVal);

             //-finally erase target for a clean wrapup
            //debugger.erase();
            
             //-finish up 
            println "";
            println("##### ========================================");
            println("##### ======= Success: end of test =======##");
            
            // Tidy up
           debugger.disconnect()
           debugger = null
           System.exit(0)
        } //-end 'try'
        catch(e) {
            println "====================================================";
            println "================ SL: exception =====================";
            println "== Ex.class= " + e.getClass();
            println "== Ex.cause= " + e.getCause();
            println "== Ex.msg= " + e.getMessage();
            println "== Ex.stackTrace= " + e.getStackTrace();
        }
    } //end 'def run()'
} //end class myTest()