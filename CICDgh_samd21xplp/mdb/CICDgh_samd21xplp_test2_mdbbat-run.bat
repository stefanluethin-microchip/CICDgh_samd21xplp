@REM Description: simple bat-script to call mdb.bat script
@REM 
@REM    -> call from Jenkins-prj-directory that includes Jenkinsfile, Dockerfile, MPLABX-Prj,...:
@REM      'CICDgh_samd21xplp\
@REM              |-Dockerfile, Jenkinsfile, LICENSE, README.md physical_setup.jpg
@REM              |-CICDgh_samd21xplp\
@REM                  |-firmware\
@REM                  |-mdb\
@REM    ->call-syntax:
@REM    (DOS: CICDgh_samd21xplp\)> .\CICDgh_samd21xplp\mdb\CICDgh_samd21xplp_test2_mdbcs-run.bat
@REM
@REM Assumptions:
@REM    -) start in Jenkins-prj-directory that includes Jenkinsfile, Dockerfile, MPLABX-Prj,...:
@REM    -) mdb.bat path in your OS-search-path -> check with '(DOS)> where mdb.bat'
@REM
@REM History:
@REM   v1.0: first working version (SL, 27.6.22)

@REM   VARIABLES
@SET scrN=CICDgh_samd21xplp_test2_mdbbat-run.bat
@SET REPO_P=C:\mchp\Seminars\2022\220516_cicd\FW\CICDgh_samd21xplp
@SET MDBBAT_CMD=mdb.bat
@SET MDBBAT_CMDF_P=%REPO_P%\CICDgh_samd21xplp\mdb
@SET MDBBAT_CMDF_N=CICDgh_samd21xplp_test2_mdbbat-cmd.txt
@SET MDBBAT_CMD_F=%MDBBAT_CMDF_P%\%MDBBAT_CMDF_N%


@REM   ######- MAIN -######
@ECHO ######: =======================================================
@ECHO ######(%scrN%): Starting ...

@REM capture starting dir-path, so we can go back
@SET ORIG_P=%cd%
@CD %REPO_P%
@ECHO ######: Starting %scrN% from %cd%
@ECHO _

@REM now start mdb.bat call
@REM cmdLine: <repo>\CICDgh_samd21xplp\> mdb.bat %MDBBAT_CMD_F%
@ECHO _
@ECHO ######: Starting mdb.bat call: -%MDBBAT_CMD% "%MDBBAT_CMD_F%"-
@CALL %MDBBAT_CMD% "%MDBBAT_CMD_F%"


@REM go back to where script started
@ECHO _
@ECHO ======(%scrN%): SUCCESS
