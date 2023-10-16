*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentsByProgramCustomAttributesPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify course Report page
    [Documentation]  This test case verifies Course Students by Program & Custom Attributes page
    [Tags]  Report
    click element                       ${studentsbyprogramattributes}
    wait until element is visible       ${hStudentsByProgramCustomAttributes}              120
    page should contain element         ${hStudentsByProgramCustomAttributes}
    page should contain element         ${sa_organizations}
    click element                       ${sa_organizations}
    page should contain element         ${sa_refresh}
    click on button                     ${sa_refresh}
    wait until element is visible       ${opt_lms}                   120
    page should contain element         ${opt_lms}
    click element                       ${opt_lms}
    page should contain element         ${btn_Program}
    click element                       ${btn_Program}
    scroll element into view            ${pr_Uni}
    page should contain element         ${pr_Uni}
    click element                       ${pr_Uni}
    page should contain element         ${btn_CourseLevel}
    click element                       ${btn_CourseLevel}
    scroll element into view            ${opt_level1}
    page should contain element         ${opt_level1}
    click element                       ${opt_Level1}
    wait until element is visible       ${btn_studenthouse}                120
    page should contain element         ${btn_studenthouse}
    page should contain element         ${btn_Attribute2}
    page should contain element         ${btn_batchgroup}
    click on button                     ${btn_Status}
    wait until element is visible       ${opt_st_Active}            120
    page should contain element         ${opt_st_Active}
    page should contain element         ${opt_st_Inactive}
    click on button                     ${opt_st_Active}
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120
    page should contain element         ${sa_th_studentname}
    page should contain element         ${sa_th_Program}
    page should contain element         ${sa_th_level}
    page should contain element         ${sa_th_status}
    page should contain element         ${sa_th_batchname}
    page should contain element         ${sa_th_batchstartdate}
    page should contain element         ${sa_th_batchenddate}
    page should contain element         ${sa_th_progress}
    page should contain element         ${sa_th_CreditEarned}
    page should contain element         ${sa_th_NoOfBadgesEarned}
    scroll element into view            ${sa_th_studenthouse}
    scroll element into view            ${sa_th_Attribute2}
    page should contain element         ${sa_th_studenthouse}

#-------------------------------------------------------------------------------------------
verify StudentsByProgramCustomAttributes Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                         ${Program}                  ${levelN}      ${StudentH}       ${BatchGrp}        ${status}
    click element                       ${studentsbyprogramattributes}
    wait until element is visible       ${hStudentsByProgramCustomAttributes}              120
    page should contain element         ${hStudentsByProgramCustomAttributes}
    page should contain element         ${sa_Organizations}
    page should contain element         ${sa_Refresh}
    StudentsByProgramCustomAttributesPage.Select a Program          ${Program}
    StudentsByProgramCustomAttributesPage.Select a level            ${levelN}
    StudentsByProgramCustomAttributesPage.Select a StudentHouse     ${StudentH}
    StudentsByProgramCustomAttributesPage.Select a BatchGroup       ${BatchGrp}
    StudentsByProgramCustomAttributesPage.Select a Status           ${status}
    StudentsByProgramCustomAttributesPage.Click on Fetch Data
    StudentsByProgramCustomAttributesPage.Verify Students By Program Custom Attributes Report Table
    StudentsByProgramCustomAttributesPage.verify download StudentsByProgramCustomAttributes Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120

#-------------------------------------------------------------------------------------------
#                               Program
#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element         ${btn_Program}
    click on button                     ${btn_Program}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${Opt_Program}
    StudentsByProgramCustomAttributesPage.Click on Program
    wait until element is visible       xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a        120
    page should contain element         xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                  Course Level
#-------------------------------------------------------------------------------------------
Click on Course Level
    page should contain element         ${btn_CourseLevel}
    click on button                     ${btn_CourseLevel}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                         ${Opt_CourseLevel}
    StudentsByProgramCustomAttributesPage.Click on Course Level
    page should contain element         xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    Press Keys                          ${hStudentsByProgramCustomAttributes}             ESC

#-------------------------------------------------------------------------------------------
#                               Student House
#-------------------------------------------------------------------------------------------
Click on StudentHouse
    page should contain element         ${btn_studenthouse}
    click on button                     ${btn_studenthouse}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a StudentHouse
    [Arguments]                         ${Opt_studenthouse}
    StudentsByProgramCustomAttributesPage.Click on StudentHouse
    page should contain element         xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Group
#-------------------------------------------------------------------------------------------
Click on Batch Group
    page should contain element         ${btn_batchgroup}
    click on button                     ${btn_batchgroup}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${Opt_batchgroup}
    StudentsByProgramCustomAttributesPage.Click on Batch Group
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    Press Keys                          ${hStudentsByProgramCustomAttributes}             ESC

#-------------------------------------------------------------------------------------------
#                                       Status
#-------------------------------------------------------------------------------------------
Click on Status
    page should contain element         ${btn_Status}
    click on button                     ${btn_Status}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Status
    [Arguments]                         ${Opt_status}
    StudentsByProgramCustomAttributesPage.Click on Status
    page should contain element         xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    Press Keys                          ${hStudentsByProgramCustomAttributes}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Report Table
#-------------------------------------------------------------------------------------------
Verify Students By Program Custom Attributes Report Table
    page should contain element         ${sa_th_studentname}
    page should contain element         ${sa_th_Program}
    page should contain element         ${sa_th_level}
    page should contain element         ${sa_th_status}
    page should contain element         ${sa_th_batchname}
    page should contain element         ${sa_th_batchstartdate}
    page should contain element         ${sa_th_batchenddate}
    page should contain element         ${sa_th_progress}
    page should contain element         ${sa_th_CreditEarned}
    page should contain element         ${sa_th_NoOfBadgesEarned}
    scroll element into view            ${sa_th_studenthouse}
    scroll element into view            ${sa_th_Attribute2}
    page should contain element         ${sa_th_studenthouse}

#-------------------------------------------------------------------------------------------
verify download StudentsByProgramCustomAttributes Report
    [Documentation]  This test case verifies that Students by Program & Custom Attributes Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}