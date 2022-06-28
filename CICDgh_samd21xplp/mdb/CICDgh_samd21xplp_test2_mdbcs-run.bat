@REM SET x+
@ECHO off
@REM Description: simple dos-bat script to run the mdbcs-example with
@REM               using groovy - before actually running the 
@REM               mdbcs.groovy you have to setup your environment
@REM               a) the OS-search path   -> setup_env.bat
@REM               b) the Java-search path -> classpath
@REM            For simplicity 'setup_env.bat' requires to
@REM             to have the current OS-path stored into a 
@REM             new environment-variable BASEPATH, otherwise
@REM             it would stop!!  So 1.time you run it in a 
@REM             new DOS-shell, you must do (as the printout)
@REM             proposes):
@REM                  (dos)> set BASEPATH=%PATH%
@REM             and now the script would run!!
@REM   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
@REM   !!! requirement to run this mdbcs.groovy example !!!
@REM   !!!  though is that you have download+install    !!!
@REM   !!!  the MPLAB-SDK and built the 'mdbcs.jar'     !!!
@REM   !!! How to get+install the MPLAB-SDK and build   !!!
@REM   !!!  'mdbcs.jar' is covered in Master-2016-class !!!
@REM   !!!  20019_DEV8 (currently to be renew!)         !!!
@REM   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
@REM 
@REM Call-syntax:
@REM    (DOS: CICDgh_samd21xplp)> .\CICDgh_samd21xplp\mdb\CICDgh_samd21xplp_test2_mdbcs-run.bat
@REM 
@REM History:
@REM   v1.0: first working version (SL, 17.5.22)
@REM
@SET scrN=CICDgh_samd21xplp_test2_mdbcs-run.bat
@SET REPO_P=C:\mchp\Seminars\2022\220516_cicd\FW\CICDgh_samd21xplp
@SET PRJ_P=%REPO_P%\CICDgh_samd21xplp\firmware\CICDgit_samd21xplp.X
@REM expect that 'groovysh' is in your OS-searchpath
@SET GROOVY_C=groovy
@REM  relativ path from prj.X directory
@SET GROOVY_SCR_RELP=..\\..\\mdb
@SET GROOVY_SCR_N=CICDgh_samd21xplp_test2_mdbcs-scr.groovy
@SET GROOVY_SCR=%GROOVY_SCR_RELP%\\%GROOVY_SCR_N%
@REM environment setup
@SET SETUP_ENV_SCR_P=%GROOVY_SCR_RELP%
@SET SETUP_ENV_SCR_N=setup_env.bat
@SET SETUP_ENV_SCR=%SETUP_ENV_SCR_P%\%SETUP_ENV_SCR_N%
@REM java setup
@SET SETUP_JAVA_SCR_P=%GROOVY_SCR_RELP%
@SET SETUP_JAVA_SCR_N=classpath.bat
@SET SETUP_JAVA_SCR=%SETUP_JAVA_SCR_P%\%SETUP_JAVA_SCR_N%

@REM   ######- MAIN -######
@ECHO ######: =======================================================
@ECHO ######(%scrN%): Starting ...

@REM capture starting dir-path, so we can go back
@SET ORIG_P=%cd%
@CD %PRJ_P%
@ECHO ######: Starting %GROOVY_SCR% from %cd%
@ECHO _

@REM setup env, OS-path
@ECHO ######: setting up OS-path...
@CALL %SETUP_ENV_SCR%
@IF %ERRORLEVEL% EQU 1 (
    @ECHO    %SETUP_ENV_SCR% caused errors
    @CD %ORIG_P%
    @GOTO SCR_ERROR
) ELSE (
    @ECHO    %SETUP_ENV_SCR% run ok
)

@REM setup java-env, CLASSPATH
@ECHO ######: setting up Java-path...
CALL %SETUP_JAVA_SCR%

@REM now start groovy-script with mdbcs
@REM cmdLine: <repo>\CICDgh_samd21xplp\firmware\CICDgit_samd21xplp.X>groovy "..\\..\\mdb\\CICDgh_samd21xplp_test2_mdbcs.groovy"
@ECHO _
@ECHO ######: Starting mdbcs.groovy: -%GROOVY_C% "%GROOVY_SCR%"-
@CALL %GROOVY_C% "%GROOVY_SCR%"

@REM go back to where script started
@ECHO _
@ECHO ======(%scrN%): SUCCESS
@GOTO END

:SCR_ERROR
  @CD %ORIG_P%
  @ECHO ######(%scrN%): FAILURE

:END
  @CD %ORIG_P%
  @ECHO ######(%scrN%): DONE
  @ECHO on