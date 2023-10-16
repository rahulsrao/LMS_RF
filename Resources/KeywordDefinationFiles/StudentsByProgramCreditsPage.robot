*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentsByProgramCreditsPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify course Report page
    [Documentation]  This test case verifies Students by Program Credits Report page
    [Tags]           Report
    click element                       ${studentsbyprogramcredits}
    wait until element is visible       ${hStudentsByProgramCredits}              120
    page should contain element         ${hStudentsByProgramCredits}
    page should contain element         ${sc_organizations}
    click element                       ${sc_organizations}
    page should contain element         ${sc_refresh}
    click on button                     ${sc_refresh}
    wait until element is visible       ${opt_lms}                                120
    page should contain element         ${opt_lms}
    click element                       ${opt_lms}
    page should contain element         ${sc_Program}
    click element                       ${sc_Program}
    sleep                               5
    scroll element into view            ${pr_Uni}
    page should contain element         ${pr_Uni}
    click element                       ${pr_Uni}
    page should contain element         ${sc_CourseLevel}
    click element                       ${sc_CourseLevel}
    scroll element into view            ${opt_level1}
    page should contain element         ${opt_level1}
    click element                       ${opt_Level1}
    wait until element is visible       ${sc_studenthouse}                120
    page should contain element         ${sc_studenthouse}
    page should contain element         ${sc_Attribute2}
    page should contain element         ${sc_batchgroup}
    click on button                     ${sc_Status}
    wait until element is visible       ${opt_st_Active}            120
    page should contain element         ${opt_st_Active}
    page should contain element         ${opt_st_Inactive}
    click on button                     ${opt_st_Active}
    page should contain element         ${sc_FetchData}
    click on button                     ${sc_FetchData}
    wait until element is visible       ${sc_FetchData}            120
    page should contain element         ${sc_th_studentname}
    page should contain element         ${sc_th_Program}
    page should contain element         ${sc_th_level}
    page should contain element         ${sc_th_status}
    page should contain element         ${sc_th_requiredcredits}
    page should contain element         ${sc_th_attribute2}
    page should contain element         ${sc_th_studenthouse}


#-------------------------------------------------------------------------------------------
verify StudentsByProgramCredits Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                         ${Program}                  ${levelN}      ${StudentH}       ${BatchGrp}        ${status}
    click element                       ${studentsbyprogramcredits}
    wait until element is visible       ${hStudentsByProgramCredits}              120
    page should contain element         ${hStudentsByProgramCredits}
    page should contain element         ${sc_Organizations}
    page should contain element         ${sc_Refresh}
    StudentsByProgramCreditsPage.Select a Program          ${Program}
    StudentsByProgramCreditsPage.Select a level            ${levelN}
    StudentsByProgramCreditsPage.Select a StudentHouse     ${StudentH}
    StudentsByProgramCreditsPage.Select a BatchGroup       ${BatchGrp}
    StudentsByProgramCreditsPage.Select a Status           ${status}
    StudentsByProgramCreditsPage.Click on Fetch Data
    StudentsByProgramCreditsPage.Verify Students By Program Credits Report Table
    StudentsByProgramCreditsPage.verify download Course Report


#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${sc_FetchData}
    click on button                     ${sc_FetchData}
    wait until element is visible       ${sc_FetchData}            120

#-------------------------------------------------------------------------------------------
#                               Program
#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element         ${sc_program}
    click on button                     ${sc_program}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${Opt_Program}
    StudentsByProgramCreditsPage.Click on Program
    page should contain element         xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                  Course Level
#-------------------------------------------------------------------------------------------
Click on Course Level
    page should contain element         ${sc_courselevel}
    click on button                     ${sc_courselevel}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                         ${Opt_CourseLevel}
    StudentsByProgramCreditsPage.Click on Course Level
    page should contain element         xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_CourseLevel}')]//ancestor::a
    Press Keys                          ${hStudentsByProgramCredits}             ESC

#-------------------------------------------------------------------------------------------
#                               Student House
#-------------------------------------------------------------------------------------------
Click on StudentHouse
    page should contain element         ${sc_studenthouse}
    click on button                     ${sc_studenthouse}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a StudentHouse
    [Arguments]                         ${Opt_studenthouse}
    StudentsByProgramCreditsPage.Click on StudentHouse
    page should contain element         xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_studenthouse}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Group
#-------------------------------------------------------------------------------------------
Click on Batch Group
    page should contain element         ${sc_batchgroup}
    click on button                     ${sc_batchgroup}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${Opt_batchgroup}
    StudentsByProgramCreditsPage.Click on Batch Group
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    Press Keys                          ${hStudentsByProgramCredits}             ESC

#-------------------------------------------------------------------------------------------
#                                       Status
#-------------------------------------------------------------------------------------------
Click on Status
    page should contain element         ${sc_status}
    click on button                     ${sc_status}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Status
    [Arguments]                         ${Opt_status}
    StudentsByProgramCreditsPage.Click on Status
    page should contain element         xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    Press Keys                          ${hStudentsByProgramCredits}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Report Table
#-------------------------------------------------------------------------------------------
Verify Students By Program Credits Report Table
    page should contain element         ${sc_th_studentname}
    page should contain element         ${sc_th_Program}
    page should contain element         ${sc_th_level}
    page should contain element         ${sc_th_status}
    page should contain element         ${sc_th_requiredcredits}
    page should contain element         ${sc_th_attribute2}
    page should contain element         ${sc_th_studenthouse}

#-------------------------------------------------------------------------------------------
verify download Course Report
    [Documentation]  This test case verifies that Students by Program Credits successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}
