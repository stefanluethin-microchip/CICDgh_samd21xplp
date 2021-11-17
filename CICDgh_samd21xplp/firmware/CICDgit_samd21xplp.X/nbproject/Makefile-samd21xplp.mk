#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-samd21xplp.mk)" "nbproject/Makefile-local-samd21xplp.mk"
include nbproject/Makefile-local-samd21xplp.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=samd21xplp
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/samd21xplp/peripheral/clock/plib_clock.c ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/samd21xplp/peripheral/port/plib_port.c ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/samd21xplp/peripheral/systick/plib_systick.c ../src/config/samd21xplp/stdio/xc32_monitor.c ../src/config/samd21xplp/initialization.c ../src/config/samd21xplp/interrupts.c ../src/config/samd21xplp/exceptions.c ../src/config/samd21xplp/startup_xc32.c ../src/config/samd21xplp/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1475634167/plib_clock.o ${OBJECTDIR}/_ext/1477783653/plib_evsys.o ${OBJECTDIR}/_ext/1433411545/plib_nvic.o ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o ${OBJECTDIR}/_ext/1433464696/plib_port.o ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1858202733/plib_systick.o ${OBJECTDIR}/_ext/396530125/xc32_monitor.o ${OBJECTDIR}/_ext/1024145325/initialization.o ${OBJECTDIR}/_ext/1024145325/interrupts.o ${OBJECTDIR}/_ext/1024145325/exceptions.o ${OBJECTDIR}/_ext/1024145325/startup_xc32.o ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1475634167/plib_clock.o.d ${OBJECTDIR}/_ext/1477783653/plib_evsys.o.d ${OBJECTDIR}/_ext/1433411545/plib_nvic.o.d ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1433464696/plib_port.o.d ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1858202733/plib_systick.o.d ${OBJECTDIR}/_ext/396530125/xc32_monitor.o.d ${OBJECTDIR}/_ext/1024145325/initialization.o.d ${OBJECTDIR}/_ext/1024145325/interrupts.o.d ${OBJECTDIR}/_ext/1024145325/exceptions.o.d ${OBJECTDIR}/_ext/1024145325/startup_xc32.o.d ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1475634167/plib_clock.o ${OBJECTDIR}/_ext/1477783653/plib_evsys.o ${OBJECTDIR}/_ext/1433411545/plib_nvic.o ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o ${OBJECTDIR}/_ext/1433464696/plib_port.o ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1858202733/plib_systick.o ${OBJECTDIR}/_ext/396530125/xc32_monitor.o ${OBJECTDIR}/_ext/1024145325/initialization.o ${OBJECTDIR}/_ext/1024145325/interrupts.o ${OBJECTDIR}/_ext/1024145325/exceptions.o ${OBJECTDIR}/_ext/1024145325/startup_xc32.o ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/samd21xplp/peripheral/clock/plib_clock.c ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/samd21xplp/peripheral/port/plib_port.c ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/samd21xplp/peripheral/systick/plib_systick.c ../src/config/samd21xplp/stdio/xc32_monitor.c ../src/config/samd21xplp/initialization.c ../src/config/samd21xplp/interrupts.c ../src/config/samd21xplp/exceptions.c ../src/config/samd21xplp/startup_xc32.c ../src/config/samd21xplp/libc_syscalls.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-samd21xplp.mk dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\samd21xplp\ATSAMD21J18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1475634167/plib_clock.o: ../src/config/samd21xplp/peripheral/clock/plib_clock.c  .generated_files/flags/samd21xplp/667da6d83be10fded4c1405de30323e90abad19 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1475634167" 
	@${RM} ${OBJECTDIR}/_ext/1475634167/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1475634167/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1475634167/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1475634167/plib_clock.o ../src/config/samd21xplp/peripheral/clock/plib_clock.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477783653/plib_evsys.o: ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c  .generated_files/flags/samd21xplp/c6019a2e94ad3f320709de437c77a93850c9ed05 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1477783653" 
	@${RM} ${OBJECTDIR}/_ext/1477783653/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477783653/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477783653/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1477783653/plib_evsys.o ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1433411545/plib_nvic.o: ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c  .generated_files/flags/samd21xplp/c9b88386f2c68d9803ccd6c1565abba160729fce .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1433411545" 
	@${RM} ${OBJECTDIR}/_ext/1433411545/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1433411545/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1433411545/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1433411545/plib_nvic.o ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o: ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/samd21xplp/c39c42eaba26c1397019e5b154d4b082d5837c49 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/2092677831" 
	@${RM} ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1433464696/plib_port.o: ../src/config/samd21xplp/peripheral/port/plib_port.c  .generated_files/flags/samd21xplp/9f617dd51903a8b9be91a2d02f7e5c8e2e4af8a .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1433464696" 
	@${RM} ${OBJECTDIR}/_ext/1433464696/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1433464696/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1433464696/plib_port.o.d" -o ${OBJECTDIR}/_ext/1433464696/plib_port.o ../src/config/samd21xplp/peripheral/port/plib_port.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o: ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/samd21xplp/7581c3d6eba7cd44583eef5331c94a8c7480f38a .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1639677810" 
	@${RM} ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1858202733/plib_systick.o: ../src/config/samd21xplp/peripheral/systick/plib_systick.c  .generated_files/flags/samd21xplp/df1319d647e2a351266b585af537200d7c663069 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1858202733" 
	@${RM} ${OBJECTDIR}/_ext/1858202733/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1858202733/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1858202733/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1858202733/plib_systick.o ../src/config/samd21xplp/peripheral/systick/plib_systick.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/396530125/xc32_monitor.o: ../src/config/samd21xplp/stdio/xc32_monitor.c  .generated_files/flags/samd21xplp/2b4c7871cfe04ad4d26ce911bcc725516d8ef851 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/396530125" 
	@${RM} ${OBJECTDIR}/_ext/396530125/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/396530125/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/396530125/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/396530125/xc32_monitor.o ../src/config/samd21xplp/stdio/xc32_monitor.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/initialization.o: ../src/config/samd21xplp/initialization.c  .generated_files/flags/samd21xplp/7bac1bcf9821b722862b87386079a5b8aa09b8b6 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/initialization.o.d" -o ${OBJECTDIR}/_ext/1024145325/initialization.o ../src/config/samd21xplp/initialization.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/interrupts.o: ../src/config/samd21xplp/interrupts.c  .generated_files/flags/samd21xplp/77b16b07c7cf60386fd674fff3d6054066eab654 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/interrupts.o.d" -o ${OBJECTDIR}/_ext/1024145325/interrupts.o ../src/config/samd21xplp/interrupts.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/exceptions.o: ../src/config/samd21xplp/exceptions.c  .generated_files/flags/samd21xplp/17b4e58a00651af344441ef678ae8809b96e046c .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/exceptions.o.d" -o ${OBJECTDIR}/_ext/1024145325/exceptions.o ../src/config/samd21xplp/exceptions.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/startup_xc32.o: ../src/config/samd21xplp/startup_xc32.c  .generated_files/flags/samd21xplp/3d1da68fc10ac7c8cab862089f8d93db6a0411d9 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1024145325/startup_xc32.o ../src/config/samd21xplp/startup_xc32.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/libc_syscalls.o: ../src/config/samd21xplp/libc_syscalls.c  .generated_files/flags/samd21xplp/c8efb81549629c6acb8cfcb4d20710f659c61564 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o ../src/config/samd21xplp/libc_syscalls.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/samd21xplp/14e43974fdc286ccff003af6cc784bd72a8244ad .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1475634167/plib_clock.o: ../src/config/samd21xplp/peripheral/clock/plib_clock.c  .generated_files/flags/samd21xplp/6732524d6c285b0a97d566ffff01d042f67005c0 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1475634167" 
	@${RM} ${OBJECTDIR}/_ext/1475634167/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1475634167/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1475634167/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1475634167/plib_clock.o ../src/config/samd21xplp/peripheral/clock/plib_clock.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477783653/plib_evsys.o: ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c  .generated_files/flags/samd21xplp/b6c5204d35a08f6b1492ed970066f67e42ab9ab9 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1477783653" 
	@${RM} ${OBJECTDIR}/_ext/1477783653/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477783653/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477783653/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1477783653/plib_evsys.o ../src/config/samd21xplp/peripheral/evsys/plib_evsys.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1433411545/plib_nvic.o: ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c  .generated_files/flags/samd21xplp/436ea1f38a559458deab7de33e70a39b2c41bbaf .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1433411545" 
	@${RM} ${OBJECTDIR}/_ext/1433411545/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1433411545/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1433411545/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1433411545/plib_nvic.o ../src/config/samd21xplp/peripheral/nvic/plib_nvic.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o: ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/samd21xplp/5600c36498cbb46e86e12e136ed143010e05a356 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/2092677831" 
	@${RM} ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2092677831/plib_nvmctrl.o ../src/config/samd21xplp/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1433464696/plib_port.o: ../src/config/samd21xplp/peripheral/port/plib_port.c  .generated_files/flags/samd21xplp/9755367d11320a68dca25368f1a2d61bc04ef90 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1433464696" 
	@${RM} ${OBJECTDIR}/_ext/1433464696/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1433464696/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1433464696/plib_port.o.d" -o ${OBJECTDIR}/_ext/1433464696/plib_port.o ../src/config/samd21xplp/peripheral/port/plib_port.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o: ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/samd21xplp/9eb9a2f781bbf4e25fdac01118e8c09feb1d6297 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1639677810" 
	@${RM} ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1639677810/plib_sercom3_usart.o ../src/config/samd21xplp/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1858202733/plib_systick.o: ../src/config/samd21xplp/peripheral/systick/plib_systick.c  .generated_files/flags/samd21xplp/d4e19094c1ad22fc2f17e9fa5851199cca8fe1c2 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1858202733" 
	@${RM} ${OBJECTDIR}/_ext/1858202733/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1858202733/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1858202733/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1858202733/plib_systick.o ../src/config/samd21xplp/peripheral/systick/plib_systick.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/396530125/xc32_monitor.o: ../src/config/samd21xplp/stdio/xc32_monitor.c  .generated_files/flags/samd21xplp/8866eeafeb7115e03d2a3660714f9f7cce8eff78 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/396530125" 
	@${RM} ${OBJECTDIR}/_ext/396530125/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/396530125/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/396530125/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/396530125/xc32_monitor.o ../src/config/samd21xplp/stdio/xc32_monitor.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/initialization.o: ../src/config/samd21xplp/initialization.c  .generated_files/flags/samd21xplp/3024db0e44cb0c0b9c39c465a92484025276b810 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/initialization.o.d" -o ${OBJECTDIR}/_ext/1024145325/initialization.o ../src/config/samd21xplp/initialization.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/interrupts.o: ../src/config/samd21xplp/interrupts.c  .generated_files/flags/samd21xplp/58c481c5a662d5cabf799cafb344ccc13f54d86 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/interrupts.o.d" -o ${OBJECTDIR}/_ext/1024145325/interrupts.o ../src/config/samd21xplp/interrupts.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/exceptions.o: ../src/config/samd21xplp/exceptions.c  .generated_files/flags/samd21xplp/df48e3d28fd5a0d01e7965e72831e61da287ed9a .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/exceptions.o.d" -o ${OBJECTDIR}/_ext/1024145325/exceptions.o ../src/config/samd21xplp/exceptions.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/startup_xc32.o: ../src/config/samd21xplp/startup_xc32.c  .generated_files/flags/samd21xplp/6727b584ea33d0eb640918495edc06fbed93eed8 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1024145325/startup_xc32.o ../src/config/samd21xplp/startup_xc32.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1024145325/libc_syscalls.o: ../src/config/samd21xplp/libc_syscalls.c  .generated_files/flags/samd21xplp/2c09c25c0c7ab4d5601342858c0ec11308e88cc3 .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1024145325" 
	@${RM} ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1024145325/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1024145325/libc_syscalls.o ../src/config/samd21xplp/libc_syscalls.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/samd21xplp/b23b524f58b0dcf78af6d54946f0f17a03c1c4fc .generated_files/flags/samd21xplp/5e9a9b44337dd91c3c66f227e40234e555ed7b3e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/samd21xplp" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/samd21xplp/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/samd21xplp/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_samd21xplp=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/CICDgit_samd21xplp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/samd21xplp
	${RM} -r dist/samd21xplp

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
