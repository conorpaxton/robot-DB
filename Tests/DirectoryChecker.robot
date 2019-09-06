*** Settings ***
Documentation  A test case to insure file directory is correct

Library  OperatingSystem

*** Variables ***
${DIR_PATH} =  /home/conor/robot-jenkins-demo
${NO_OF_DIRECTORIES}

*** Test Cases ***
Project should contain two directories
    Count Directories  ${DIR_PATH}
    #Verify two directories

*** Keywords ***
Count Directories
    [Arguments]   ${DIR_PATH}
     ${NO_OF_DIRECTORIES} =  Count Directories in Directory  ${DIR_PATH}
     Should be True  ${NO_OF_DIRECTORIES} == 2




