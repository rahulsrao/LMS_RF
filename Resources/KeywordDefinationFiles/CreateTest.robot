*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CreateTest.robot
Resource        ../../Resources/TestData/TestData.robot


*** Keywords ***
set Test Name
    [Arguments]     ${TestName}
    wait until Element is present in the page       ${txt_Title}
    ${TName}=       get test name                   ${TestName}
    input text      ${txt_Title}                    ${TName}

select Course and Module
    [Arguments]                         ${Course}               ${Module}
    click element                       ${btnedit}
    wait until element is visible       ${hclassify}            120
    sleep                               10
    page should contain element         ${hclassify}
    select from list by label           ${btnSelectCourse}      ${Course}
    select from list by label           ${btnSelectModule}      ${Module}
    click element                       ${btnApply}

select normal test
    wait until page contains element                ${ntpt}             120
    click on button                                 ${ntpt}

set test time
     [Arguments]                        ${hr}               ${min}
     page should contain element        ${hrs}
     page should contain element        ${mins}
     Press Keys                         ${hrs}              BACK_SPACE
     input text                         ${hrs}              ${hr}
     Press Keys                         ${mins}             BACK_SPACE
     Press Keys                         ${mins}             BACK_SPACE
     input text                         ${mins}             ${min}