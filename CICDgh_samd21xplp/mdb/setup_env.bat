ECHO off
REM Description: this script sets up the environment to use 'mdbcs' with 'groovy'
REM              Basically it uses some environment-variables you must adjust to your 
REM               (->see below section 'user-Variables:') and then extends the
REM               OS-searchpath.
REM              As the global searchpath %Path% is extended without checking if
REM               one of the items is already defined with an older version maybe,
REM               the Path would be extended over and over again, if you call this
REM               script multiple times (w/ changes). 
REM               ->to prevent this problem, the script copies the orig %Path% first
REM                 into a new variable %BASEPATH% and to check if it ran before
REM                 it first checks if %BASEPATH% exists and if not then asks the user
REM                 once to manually set it - could be automatize, but this is the simple 
REM                 way. So basically if %BASEPATH% is not yet set, then you must manually
REM                 set it, to continue and setup your env and finally extend the 
REM                 global %Path% only once
REM History:
REM   v1.1: adapt to v6.00 and improved comment (SL, 5.5.2022)
REM   v1.0: first version (SL, 12.5.21)

 REM user-Variables: to be adjusted for user-environment
 REM   Important notice: DOS-shell does NOT allow spaces/tab
 REM        around the '=' when defining env-variables !!!
set MPLABX_V=v6.00
set JAVA_VERS=zulu8.54.0.21-ca-fx-jre8.0.292-win_x64
set MPLABX_HOME=C:\Program Files\Microchip\MPLABX\%MPLABX_V%
set JAVA_HOME=%MPLABX_HOME%\sys\java\%JAVA_VERS%
set GNU_HOME=%MPLABX_HOME%\gnuBins\GnuWin32
set GROOVY_HOME=C:\Program Files (x86)\Groovy\Groovy-2.5.8
set PYTHON2_HOME=C:\Python\v2.7.14

 REM fix Variable
set scrN=setup_env.bat


ECHO Starting %scrN%...

 REM check if environment-variable BASEPATH path is set 
 REM  -> break if not and continue if set
 REM Reason: below the searchpath PATH is extended and
 REM          without this trick the PATH would grow every time
 REM          you run this script. So force user just to keep
 REM          the basic PATH with this check
IF "%BASEPATH%"=="" (
    ECHO    XXXXXXXXXXXXXX: for simplicity you must copy the current OS-searchpath into BASEPATH with:
    ECHO    XXXXXXXXXXXXXX:        set BASEPATH=^%%PATH%%
    ECHO    XXXXXXXXXXXXXX:  and then run this script again
    GOTO END
) ELSE (
    ECHO    ##: BASEPATH set -^> continue
    GOTO CONTINUE
)

:CONTINUE
REM BASEPATH set manually - see check above
REM GROOVY_PATH must be before JAVA_PATH, so put first in 
REM     search-path to prevent various issues
ECHO    ##: extending OS-searchpath
set PATH=%GROOVY_HOME%\bin;%JAVA_HOME%\bin;%GNU_HOME%\bin;%PYTHON2_HOME%;%BASEPATH%


:END
  ECHO END %scrN%