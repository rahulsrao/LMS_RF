*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/FeesByStudentPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Fees By Student Report page
    [Documentation]  This test case verifies Fees By Student Report page
    [Tags]           Report
    click element                       ${feesreportbystudent}
    wait until element is visible       ${hFeesByStudent}                           120
    page should contain element         ${hFeesByStudent}
    page should contain element         ${fbs_Organizations}
    click element                       ${fbs_Organizations}
    page should contain element         ${fbs_Refresh}
    click on button                     ${fbs_Refresh}
    wait until element is visible       ${opt_lms}                                120
    page should contain element         ${opt_lms}
    click element                       ${opt_lms}
    page should contain element         ${fbs_Program}
    click element                       ${fbs_Program}
    sleep                               5
    scroll element into view            ${fbs_Uni}
    page should contain element         ${fbs_Uni}
    click element                       ${fbs_Uni}
    page should contain element         ${fbs_CourseLevel}
    click on button                     ${fbs_courselevel}
    wait until element is visible       ${fbs_level1}
    page should contain element         ${fbs_level1}
    click element                       ${fbs_Level1}
    page should contain element         ${fbs_StudentHouse}
    page should contain element         ${fbs_Attribute2}
    page should contain element         ${fbs_Status}
    click on button                     ${fbs_Status}
    wait until element is visible       ${fbs_Active}                120
    page should contain element         ${fbs_Active}
    page should contain element         ${fbs_Inactive}
    click on button                     ${fbs_Active}
    page should contain element         ${fbs_Batch}
    click on button                     ${fbs_batch}
    wait until element is visible       ${FBS_ARTBATCHONE}                120
    page should contain element         ${FBS_ARTBATCHONE}
    click on button                     ${FBS_ARTBATCHONE}
    page should contain element         ${fbs_BatchStartDate}
    page should contain element         ${fbs_batchenddate}
    page should contain element         ${fbs_batchgroup}
    page should contain element         ${fbs_fetchdata}
    click on button                     ${fbs_fetchdata}
    sleep                               5
    wait until element is visible       ${fbs_fetchdata}            120
    page should contain element         ${fbs_th_studentname}
    page should contain element         ${fbs_th_status}
    page should contain element         ${fbs_th_level}
    page should contain element         ${fbs_th_batchname}
    page should contain element         ${fbs_th_totalfees}
    page should contain element         ${fbs_th_TotalFeesDue}
    page should contain element         ${fbs_th_FeesRecd}
    page should contain element         ${fbs_th_feesduebutnotrecd}

#-------------------------------------------------------------------------------------------
verify Fees By Student Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                         ${Program}      ${levelN}      ${StudentH}      ${status}           ${Batch}        ${BatchGrp}
    click element                       ${feesreportbystudent}
    wait until element is visible       ${hFeesByStudent}              120
    page should contain element         ${hFeesByStudent}
    page should contain element         ${fbs_Organizations}
    page should contain element         ${fbs_Refresh}
    FeesByStudentPage.Select a Program                  ${Program}
    FeesByStudentPage.Select a level                    ${levelN}
    FeesByStudentPage.Select a StudentHouse             ${StudentH}
    FeesByStudentPage.Select a Status                   ${status}
    FeesByStudentPage.Select a Batch                    ${Batch}
    FeesByStudentPage.Select a BatchGroup               ${BatchGrp}
    FeesByStudentPage.Click on Fetch Data
    FeesByStudentPage.Verify Fees By Student Report Table
    FeesByStudentPage.verify download Fees By Student Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${fbs_fetchdata}
    click on button                     ${fbs_fetchdata}
    wait until element is visible       ${fbs_fetchdata}            120

#-------------------------------------------------------------------------------------------
#                               Program
#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element         ${fbs_Program}
    click on button                     ${fbs_Program}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${Opt_Program}
    FeesByStudentPage.Click on Program
    wait until element is visible       xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a        120
    page should contain element         xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                  Course Level
#-------------------------------------------------------------------------------------------
Click on Course Level
    page should contain element         ${fbs_CourseLevel}
    click on button                     ${fbs_CourseLevel}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                         ${Opt_CourseLevel}
    FeesByStudentPage.Click on Course Level
    page should contain element         xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    Press Keys                          ${hFeesByStudent}             ESC

#-------------------------------------------------------------------------------------------
#                               Student House
#-------------------------------------------------------------------------------------------
Click on StudentHouse
    page should contain element         ${fbs_StudentHouse}
    click on button                     ${fbs_StudentHouse}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a StudentHouse
    [Arguments]                         ${Opt_studenthouse}
    FeesByStudentPage.Click on StudentHouse
    page should contain element         xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a
#-------------------------------------------------------------------------------------------
#                                       Status
#-------------------------------------------------------------------------------------------
Click on Status
    page should contain element         ${fbs_Status}
    click on button                     ${fbs_Status}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Status
    [Arguments]                         ${Opt_status}
    FeesByStudentPage.Click on Status
    page should contain element         xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    Press Keys                          ${hFeesByStudent}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${fbs_batch}
    click on button                     ${fbs_batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                         ${Opt_Batch}
    FeesByStudentPage.Click on Batch
    input text                          ${fbs_batch}      ${Opt_Batch}
    wait until element is visible       xpath:(//span[contains(text(),'${Opt_Batch}')])[1]//ancestor::a         120
    page should contain element         xpath:(//span[contains(text(),'${Opt_Batch}')])[1]//ancestor::a
    click on button                     xpath:(//span[contains(text(),'${Opt_Batch}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Group
#-------------------------------------------------------------------------------------------
Click on Batch Group
    page should contain element         ${fbs_BatchGroup}
    click on button                     ${fbs_BatchGroup}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${Opt_batchgroup}
    FeesByStudentPage.Click on Batch Group
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    wait until element is visible       xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a       120
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    Press Keys                          ${hFeesByStudent}             ESC


#-------------------------------------------------------------------------------------------
#                                       Batch Report Table
#-------------------------------------------------------------------------------------------
Verify Fees By Student Report Table
    page should contain element         ${fbs_th_studentname}
    page should contain element         ${fbs_th_status}
    page should contain element         ${fbs_th_level}
    page should contain element         ${fbs_th_batchname}
    page should contain element         ${fbs_th_totalfees}
    page should contain element         ${fbs_th_TotalFeesDue}
    page should contain element         ${fbs_th_FeesRecd}
    page should contain element         ${fbs_th_feesduebutnotrecd}


#-------------------------------------------------------------------------------------------
verify download Fees By Student Report
    [Documentation]  This test case verifies that Fees By Student Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}
