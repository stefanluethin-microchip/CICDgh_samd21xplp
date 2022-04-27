#!/usr/bin/env groovy

// This file was generated by the CI/CD Wizard version 1.0.375.
// See the user guide for information on how to customize and use this file.

pipeline {
    environment {
        BUILD_CONFIGURATION = "samd21xplp"
        MPLABX_ROOT = "/opt/microchip/mplabx"
        MPLABX_V_2_USE = "v6.00.06.5453"
        MPLABX_EXE = "mplab_ide"
         //-SL: /opt/microchip/mplabx/v6.00.06.5453/mplab_platform/bin/mplab_ide
        MPLABX_EXE_2_USE = "${MPLABX_ROOT}" + "/" + "${MPLABX_V_2_USE}" + "/mplab_platform/bin/" + "${MPLABX_EXE}"
         //-SL: /opt/microchip/mplabx/v6.00.06.5453/mplab_platform/bin/xclm
        XCLM_EXE = "xclm"
        XCLM_EXE_2_USE   = "${MPLABX_ROOT}" + "/" + "${MPLABX_V_2_USE}" + "/mplab_platform/bin/" + "${XCLM_EXE}"
         //-SL: /opt/microchip/xc32/v2.50/bin/xc32-gcc
        XC32_ROOT = "/opt/microchip/xc32"
        XC32_V_2_USE = "v2.50"
        XC32_GCC_EXE = "xc32-gcc"
        XC32_GCC_2_USE = "${XC32_ROOT}" + "/" + "${XC32_V_2_USE}" + "/bin/" + "${XC32_GCC_EXE}"       
         //-SL: see <https://www.jenkins.io/doc/book/pipeline/jenkinsfile/#using-environment-variables>
         //-SL:  which env-variables are known
        PRJ_NAME=   "CICDgh_samd21xplp"
        PRJ_ROOT_P= "${env.WORKSPACE}" + "/" + "${PRJ_NAME}" + "/firmware"
        PRJ_X_NAME= "${PRJ_NAME}" + ".X"
        PRJ_X_P=    "${PRJ_ROOT_P}" + "${PRJ_X_NAME}"
        PRJ_SCR_P=  "${PRJ_ROOT_P}" + "/src"        
    }
    agent any
    
    stages {
        stage('Build') {
            steps {
                    echo "###SL: env check"
                    echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                    echo "###SL: prj_root_p = ${env.PRJ_ROOT_P}"
                    echo "###SL: WS = ${env.WORKSPACE}"                
//                 sh(
//                     label: 'Generate build makefiles'
//                     script: "prjMakefilesGenerator.sh -v -f ./@${env.BUILD_CONFIGURATION}"
//                     cd ${PRJ_ROOT_P}
//                     script: "prjMakefilesGenerator.sh -v -f ./@${env.BUILD_CONFIGURATION}"
//                 )
//                 sh(
//                     label: 'Running Makefile',
//                     script: """
//                             rm -rf ./build
//                             rm -rf ./dist
//                             make clean
//                             make CONF=${env.BUILD_CONFIGURATION}
//                             """
//                 )
//                 stash name: 'build',
//                       includes: 'dist/**/*',
//                       allowEmpty: true
            } //-end 'steps' in 'stage=build'
        } //-end stage=build
        
//         stage('Analyse') {
//             agent {
//                 dockerfile  {
//                     label 'docker'
//                     filename 'Dockerfile'
//                     registryUrl "https://hub.docker.com/"
//                 }
//             }
//             steps {
//                 sh(
//                     label: 'Running MISRA Analysis',
//                     script: """
//                             rm -rf cppcheck-result.xml
//                             misracli.sh --xml cppcheck-result.xml ./ || true
//                             """
//                 )
//                 stash name: 'misra',
//                       includes: 'cppcheck-result.xml',
//                       allowEmpty: true
//             }
//         } //-end stage=Analyse

//         stage('Simulate') {
//             agent {
//                 dockerfile  {
//                     label 'docker'
//                     filename 'Dockerfile'
//                     registryUrl "https://hub.docker.com/"
//                 }
//             }
//             environment {
//                 SIMULATE_MDB_SCRIPT_FILE = 'mdb-simulator-script.txt'
//                 SIMULATE_BINARY_FILE = './dist/build.elf'
//                 SIMULATE_SERIAL_OUTPUT_FILE = 'sercom_output.txt'
//                 SIMULATE_COVERAGE_FILE = 'simulator-coverage.txt'
//             }
//             steps {
//                 sh(
//                     label: 'Remove possible local dist dir before unstashing build',
//                     script: """
//                             rm -rf ./dist
//                             """
//                 )
//                 unstash 'build'
//                 sh(
//                     label: 'Copy binary file to location expected by MDB script',
//                     script: """
//                             rm -rf ${env.SIMULATE_BINARY_FILE}
//                             rm -rf ${env.SIMULATE_SERIAL_OUTPUT_FILE}
//                             cp ./dist/**/**/*.elf ${env.SIMULATE_BINARY_FILE}
//                             """
//                 )
//                 sh(
//                     label: 'Run MDB script on simulator',
//                     script: """
//                             mdb.sh ${env.SIMULATE_MDB_SCRIPT_FILE}
//                             rm -rf ${env.SIMULATE_BINARY_FILE}
//                             """
//                 )
//                 sh(
//                     label: 'Convert simulator coverage to xml and html using gcov / gcovr',
//                     script: """
//                             if [ -f "${env.SIMULATE_COVERAGE_FILE}" ]; then
//                                 curl ${env.SUPPORT_SCRIPT_REPO}/simcov2gcov.js -o simcov2gcov.js
//                                 node simcov2gcov.js ${env.SIMULATE_COVERAGE_FILE} .
// 
//                                 rm -rf ${env.SIMULATE_COVERAGE_DIR}
//                                 mkdir  ${env.SIMULATE_COVERAGE_DIR}
//                                 gcovr --use-gcov-files --keep --print-summary --xml --output ${env.SIMULATE_COVERAGE_XML} -r .
//                                 gcovr --use-gcov-files --keep --print-summary --html --html-details --output  ${env.SIMULATE_COVERAGE_DIR}/index.html -r .
//                             else
//                                 echo "Warning: The simulation did not generate any coverage data"
//                             fi
//                             """
//                 )
//                 stash name: 'simulate',
//                       includes: "${env.SIMULATE_COVERAGE_DIR}/**/*,${env.SIMULATE_COVERAGE_XML}",
//                       allowEmpty: true
//             }
//         } //-end stage=Simulate
        
//         stage('Documentation') {
//             agent {
//                 dockerfile  {
//                     label 'docker'
//                     filename 'Dockerfile'
//                     registryUrl "https://hub.docker.com/"
//                 }
//             }
//             steps {
//                 sh(
//                     label: 'Generate Doxygen documentation',
//                     script: """
//                             [ -f Doxyfile ] || doxygen -g Doxyfile
//                             doxygen Doxyfile
//                             """
//                 )
//                 stash name: 'doxygen',
//                       includes: 'html/**/*,latex/**/*',
//                       allowEmpty: true
//             }
//         } //-end stage=Documentation
        
//         stage('Publish') {
//             steps {
//                 unstash 'build'
//                 dir('dist') {
//                     zip archive: true,
//                         glob: '**/*',
//                         overwrite: true,
//                         zipFile: 'dist.zip'
//                 }
//                 unstash 'doxygen'
//                 unstash 'simulate'
//                 Publish a zip file with coverage in html
//                 zip archive: true,
//                     glob: "${env.SIMULATE_COVERAGE_DIR}/*",
//                     overwrite: true,
//                     zipFile: 'simulator-coverage-html.zip'
//                 Publish coverage using cobertura xml adapter
//                 publishCoverage adapters: [istanbulCoberturaAdapter("${env.SIMULATE_COVERAGE_XML}")], failNoReports: false, sourceFileResolver: sourceFiles('NEVER_STORE')
//                 recordIssues(tools: [gcc()])
//                 unstash 'misra'
//                 publishCppcheck allowNoReport: false, pattern: 'cppcheck-result.xml'
//             } //-end 'steps' in 'stage=Publish'
//         } //-end stage=Publish
        
    } //-end 'stages'
    
    post {
        // Optional: Add success build steps here.
        // success {
        //
        // }
        always {
            // Clean workspace after build
            echo "post / always: ..."
            //cleanWs()   ????
        }
    }  //-end 'post'

} //- end 'pipeline'
