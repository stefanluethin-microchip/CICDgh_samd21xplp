@REM
@SET REPO_P=C:\mchp\Seminars\2022\220516_cicd\FW\CICDgh_samd21xplp
@SET PRJ_P=%REPO_P%\CICDgh_samd21xplp\firmware\CICDgit_samd21xplp.X
@REM expect that 'groovysh' is in your OS-searchpath
@SET GROOVY_C=groovy
@REM  relativ path from prj.X directory
@SET GROOVY_SCR_RELP=..\\..\\mdb
@SET GROOVY_SCR_N=CICDgh_samd21xplp_test2_mdbcs.groovy
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
@ECHO ""
@REM just capture starting dir-path, so we can go back
@SET ORIG_P=%cd%
@CD %PRJ_P%
@ECHO "Starting %GROOVY_SCR% from %cd%"
@ECHO ""

@REM setup env, OS-path
@REM ---------CALL %SETUP_ENV_SCR%
@REM setup java-env, CLASSPATH
@REM ---------CALL %SETUP_JAVA_SCR%

@REM now start groovy-script with mdbcs
@REM cmdLine: <repo>\CICDgh_samd21xplp\firmware\CICDgit_samd21xplp.X>groovy "..\\..\\mdb\\CICDgh_samd21xplp_test2_mdbcs.groovy"
@CALL %GROOVY_C% "%GROOVY_SCR%"

@REM go back to where script started
@CD %ORIG_P%
@ECHO ""
@ECHO "DONE"



