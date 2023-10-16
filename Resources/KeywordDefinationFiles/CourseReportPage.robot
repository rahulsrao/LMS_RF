*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CourseReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify course Report page
    [Documentation]  This test case verifies Course Report page
    [Tags]  Report
    click element                       ${coursereport}
    wait until element is visible       ${hCourseReport}              120
    page should contain element         ${hCourseReport}
    page should contain element         ${btn_levels}
    sleep                               5
    click element                       ${btn_levels}
    page should contain element         ${opt_level7}
    click element                       ${opt_Level7}
    wait until element is visible       ${BR_Course}                120
    page should contain element         ${BR_Course}
    click on button                     ${BR_Course}
    wait until element is visible       ${opt_art}                  120
    page should contain element         ${OPT_ART}
    click element                       ${OPT_ART}
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120
    page should contain element         ${th_coursename}
    page should contain element         ${th_courselevel}
    page should contain element         ${th_modules}
    page should contain element         ${th_concepts}
    page should contain element         ${th_Pages}
    page should contain element         ${th_Videos}
    page should contain element         ${th_collections}
    page should contain element         ${th_flashCard}
    page should contain element         ${th_Questions}
    page should contain element         ${th_Questions}
    scroll element into view            ${th_gameQuestion}
    page should contain element         ${th_studentprojects}

#-------------------------------------------------------------------------------------------
verify Course Report Page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                             ${levelN}                     ${CourseN}
    click element                           ${coursereport}
    wait until element is visible           ${hCourseReport}              120
    page should contain element             ${hCourseReport}
    page should contain element             ${btn_Levels}
    page should contain element             ${br_course}
    CourseReportPage.Select a level         ${levelN}
    CourseReportPage.Select a Course        ${CourseN}
    CourseReportPage.Click on Fetch Data
    CourseReportPage.Verify Course Report Table
    CourseReportPage.verify download Course Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120

#-------------------------------------------------------------------------------------------
#                                   Level
#-------------------------------------------------------------------------------------------
Click on level
    page should contain element         ${btn_Levels}
    click on button                     ${btn_Levels}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                         ${Opt_level}
    CourseReportPage.Click on level
    page should contain element         xpath://div[contains(text(),'${Opt_level}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_level}')]//ancestor::a
    Press Keys                          ${btn_Levels}             ESC

#-------------------------------------------------------------------------------------------
#                                  Course
#-------------------------------------------------------------------------------------------
Click on Course
    page should contain element         ${br_course}
    click on button                     ${br_course}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Opt_course}
    CourseReportPage.Click on Course
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    Press Keys                          ${hCourseReport}             ESC

#-------------------------------------------------------------------------------------------
#                          Course Report Page Table
#-------------------------------------------------------------------------------------------
Verify Course Report Table
    page should contain element         ${th_coursename}
    page should contain element         ${th_courselevel}
    page should contain element         ${th_modules}
    page should contain element         ${th_concepts}
    page should contain element         ${th_Pages}
    page should contain element         ${th_Videos}
    page should contain element         ${th_collections}
    page should contain element         ${th_flashCard}
    page should contain element         ${th_Questions}
    page should contain element         ${th_Questions}
    scroll element into view            ${th_gameQuestion}
    page should contain element         ${th_studentprojects}

#-------------------------------------------------------------------------------------------
verify download Course Report
    [Documentation]  This test case verifies that Batch Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}