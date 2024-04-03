# CICD
** CICD = ContinuousIntegration, ContinuousDeloyment **
 A CICD system is basically a system to automatically+regularily (=Continuous) execute a certain set of checks&tests (eg: xc-compile or misra-check) with your FW-development to ensure correctness at all times, so that you don't develop for x months and then need another x+y months to fix all integration-problems that get bigger the longer you wait and the more code you have to integrate.
 
# Pillars of a CICD system
 A CICD-system consists of three major parts:
 1.  a source-control system like 'github, bitbucket,...'
 2. some automation-tool, like 'Jenkins, Bamboo,...'
 3. some tool to freeze/capture you environment, like 'Docker'

 The FW created for demonstration will run on ATSAMD21-xplained
  (-> www.microchip.com/en-us/development-tool/atsamd21-xpro)
  without any other tools (except the usb-cable to connect the board
  to the host-PC).
 
 'setup_physical.jpg' shows how the physical setup looks like, so you
  see how to connnect up the SAMD21-xpl board.
 'setup_on_host.jpg' shows the setup used on the host - which tools,
  terminals are used and which commands are executed as well their 
  resulting output

The content of this repo is:
 - complete MPLABX-prj 'CICDgh_samd21xplp'
 - .gitignore file
 - Dockerfile -> from CICD-wizard
 - Jenkinsfile -> from CICD-wizard (mostly commented for testing)
 - Jenkinsfile_* -> 2 Jenkinsfiles for testing
 - LICENSE     -> a MCHP-license file
 - setup_on_host.jpg  -> setup on the host where mdb.bat/mdbcs runs are done
 - setup_physical.jpg -> physical setup of SAMD21 used in above MPLAB-prj
 - README.md   -> this file

**Author:** stefan.luethin@microchip.com 
**History:** v1.0( SL, 15.3.2024)