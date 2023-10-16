*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/BatchTestReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Batch Test Report page
    [Documentation]  This test case verifies Batch Test Report page
    [Tags]           Report
    click element                       ${batchtestreport}
    wait until element is visible       ${hBatchTestReport}                          120
    page should contain element         ${hBatchTestReport}
    page should contain element         ${bts_batchtype}
    click on button                     ${bts_batchtype}
    wait until element is visible       ${bts_Active}                                120
    page should contain element         ${bts_Active}
    page should contain element         ${bts_inactive}
    click on button                     ${bts_Active}
    wait until element is visible       ${bts_batch}                                 120
    page should contain element         ${bts_batch}
    click on button                     ${bts_batch}
    wait until element is visible       ${bts_opt_ARTBATHTHREE}                      120
    page should contain element         ${bts_opt_ARTBATHTHREE}
    click on button                     ${bts_opt_ARTBATHTHREE}
    wait until element is visible       ${bts_TestType}                              120
    page should contain element         ${bts_TestType}
    click on button                     ${bts_TestType}
    wait until element is visible       ${bts_NT}
    page should contain element         ${bts_NT}
    page should contain element         ${bts_pt}
    click on button                     ${bts_pt}
    wait until element is visible       ${bts_pass%}                                 120
    page should contain element         ${bts_pass%}
    page should contain element         ${bts_FetchData}
    click on button                     ${bts_FetchData}
    sleep                               5
    wait until element is visible       ${bts_FetchData}                             120
    page should contain element         ${bts_th_EnrollmentNumber}
    page should contain element         ${bts_th_Firstname}
    page should contain element         ${bts_th_lastname}
    page should contain element         ${bts_th_Attribute1}
    page should contain element         ${bts_th_Attribute2}
    page should contain element         ${bts_th_phone}
    page should contain element         ${bts_th_email}
    page should contain element         ${bts_th_attendance(%)}
    page should contain element         ${bts_th_modulename}
    page should contain element         ${bts_testtype}
    page should contain element         ${bts_th_testtitle}
    page should contain element         ${bts_th_totalmarks}
    page should contain element         ${bts_th_marksobtained}
    page should contain element         ${bts_th_%}
    page should contain element         ${bts_th_TestResult}

#-------------------------------------------------------------------------------------------
verify Batch Test Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                           ${BatchType}       ${Batch}       ${TestType}     ${pass%}
    click element                                                         ${batchtestreport}
    wait until element is visible                                         ${hBatchTestReport}              120
    page should contain element                                           ${hBatchTestReport}
    BatchTestReportPage.Select a BatchType                                ${BatchType}
    BatchTestReportPage.Select a Batch                                    ${Batch}
    BatchTestReportPage.Select a TestType                                 ${TestType}
    BatchTestReportPage.Enter Pass%                                       ${pass%}
    BatchTestReportPage.Click on Fetch Data
    BatchTestReportPage.Verify Batch Test Report Table
    BatchTestReportPage.verify download Batch Test Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${bts_FetchData}
    click on button                     ${bts_FetchData}
    wait until element is visible       ${bts_FetchData}            120

#-------------------------------------------------------------------------------------------
#                                       Batch Type
#-------------------------------------------------------------------------------------------
Click on BatchType
    page should contain element         ${bts_batchtype}
    click on button                     ${bts_batchtype}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchType
    [Arguments]                           ${Opt_BatchType}
    BatchTestReportPage.Click on BatchType
    page should contain element           xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    Press Keys                            ${hBatchTestReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${bts_batch}
    click on button                     ${bts_batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                           ${Opt_Batch}
    BatchTestReportPage.Click on Batch
    page should contain element           xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                   Test Type
#-------------------------------------------------------------------------------------------
Click on TestType
    page should contain element         ${bts_testtype}
    click on button                     ${bts_testtype}
    sleep                               5
#-------------------------------------------------------------------------------------------
Select a TestType
    [Arguments]                           ${Opt_TestType}
    BatchTestReportPage.Click on TestType
    page should contain element           xpath://div[contains(text(),'${Opt_TestType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_TestType}')]//ancestor::a

#-------------------------------------------------------------------------------------------
Enter Pass%
    [Arguments]                      ${pass%}
    page should contain element      ${bts_Pass%}
    Press Keys                       ${bts_Pass%}           CTRL+a   BACKSPACE
    input text                       ${bts_Pass%}           ${pass%}
    sleep                            5

#-------------------------------------------------------------------------------------------
#                                     Report Table
#-------------------------------------------------------------------------------------------
Verify Batch Test Report Table
    page should contain element         ${bts_th_EnrollmentNumber}
    page should contain element         ${bts_th_Firstname}
    page should contain element         ${bts_th_lastname}
    page should contain element         ${bts_th_Attribute1}
    page should contain element         ${bts_th_Attribute2}
    page should contain element         ${bts_th_phone}
    page should contain element         ${bts_th_email}
    page should contain element         ${bts_th_attendance(%)}
    page should contain element         ${bts_th_modulename}
    page should contain element         ${bts_testtype}
    page should contain element         ${bts_th_testtitle}
    page should contain element         ${bts_th_totalmarks}
    page should contain element         ${bts_th_marksobtained}
    page should contain element         ${bts_th_%}
    page should contain element         ${bts_th_TestResult}

#-------------------------------------------------------------------------------------------
verify download Batch Test Report
    [Documentation]  This test case verifies that Batch Test Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}