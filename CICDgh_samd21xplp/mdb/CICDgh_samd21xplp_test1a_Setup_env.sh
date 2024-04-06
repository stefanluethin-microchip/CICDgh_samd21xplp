#!/bin/bash
#- Description: simple bat-script to setup the environment for M24_24014DEV4.
#-			  It basically extends the OS-search with the needed tools
#-
#- History:
#-   v1.0: first version (SL, 21.3.2024)
#-
#- Hints:
#-	user-Variables: to be adjusted for user-environment. 
#-	Important notice: DOS-shell does NOT allow spaces/tab
#-        around the '=' when defining env-variables !!!
export MPLABX_V=v6.20
export JAVA_VERS=zulu8.64.0.19-ca-fx-jre8.0.345-win_x64
export XC32_V=v4.35
export MPLABX_HOME=C:\Program Files\Microchip\MPLABX\%MPLABX_V%
export GNU_HOME=%MPLABX_HOME%\gnuBins\GnuWin32
export XC32_HOME=C:\Program Files\Microchip\xc32\%XC32_V%

#-fix Variable
scrN=M24_24014DEV4-0_Setup_env.sh


echo "###--------------------------------------------------------"
echo "###${scrN}: Starting ..."

#-  Copy current OS-searchpath PATH into BASEPATH, so
#-	below path-extending doesn't overflow doing it multiple times
#-  So if env-variable BASEPATH not set, then this script runs 1.time,
#-	hence BASEPATH=%PATH%, otherwise it ran before and BASEPATH already set.
#-  To keep it simple this must be done manually by user
if [[ -z "${BASEPATHSETDONE}" ]]; then
  echo   "###${scrN}: store current PATH in BASEPATH"
  export BASEPATH=${PATH}
  export BASEPATHSETDONE=1
else
  echo   "###${scrN}: BASEPATH set -> nothing to do" 
fi

#- extend OS-search
echo   "###${scrN}: extending OS-searchpath"
export PATH=${MPLABX_HOME}\mplab_platform\bin;{GNU_HOME}\bin;{XC32_HOME}\bin;${BASEPATH}

echo   "###${scrN}: end"
echo   ""


