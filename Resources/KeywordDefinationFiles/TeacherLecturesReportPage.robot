*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/TeacherLecturesReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Teacher Lectures Report page
    [Documentation]  This test case verifies Teacher Lectures Report page
    [Tags]           Report
    click element                       ${teacherlecturesreport}
    wait until element is visible       ${hTeacherLecturesReport}                 120
    page should contain element         ${hTeacherLecturesReport}
    page should contain element         ${tlr_Teacher}
    click element                       ${tlr_Teacher}
    wait until element is visible       ${tlr_opt_GuruDronacharya}                   120
    page should contain element         ${tlr_opt_GuruDronacharya}
    click on button                     ${tlr_opt_GuruDronacharya}
    wait until element is visible       ${tlr_Course}                                120
    page should contain element         ${tlr_Course}
    click element                       ${tlr_Course}
    wait until element is visible       ${tlr_opt_art}                              120
    page should contain element         ${tlr_opt_ART}
    click on button                     ${tlr_opt_ART}
    wait until element is visible       ${tlr_batchtype}                            120
    page should contain element         ${tlr_batchtype}
    click on button                     ${tlr_batchtype}
    wait until element is visible       ${tlr_active}                               120
    page should contain element         ${tlr_Active}
    page should contain element         ${tlr_Inactive}
    click on button                     ${tlr_Active}
    wait until element is visible       ${tlr_batch}                                120
    page should contain element         ${tlr_batch}
    click on button                     ${tlr_batch}
    wait until element is visible       ${tlr_opt_artbatchthree}
    page should contain element         ${tlr_opt_ARTBATCHTHREE}
    click on button                     ${tlr_opt_ARTBATCHTHREE}
    Press Keys                          ${hTeacherLecturesReport}                   ESC
    wait until element is visible       ${tlr_StartDate}                            120
    page should contain element         ${tlr_StartDate}
    page should contain element         ${tlr_EndDate}
    page should contain element         ${tlr_FetchData}
    click on button                     ${tlr_FetchData}
    sleep                               5
    wait until element is visible       ${tlr_FetchData}                            120
    page should contain element         ${tlr_th_BatchName}
    page should contain element         ${tlr_th_course}
    page should contain element         ${tlr_th_Module}
    page should contain element         ${tlr_th_NumberofLectures}
    page should contain element         ${tlr_totallectures}
    ${Lectures}=     Get Text           ${tlr_totallectures}
    @{tlectures} =  split string        ${Lectures}           :
    printvalue                          The total Teacher Lectures are${tlectures}[1]

#-------------------------------------------------------------------------------------------
verify Teacher Performance Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                  ${TeacherN}      ${CourseN}      ${BatchType}       ${Batch}
    click element                                                ${teacherlecturesreport}
    wait until element is visible                                ${hTeacherLecturesReport}              120
    page should contain element                                  ${hTeacherLecturesReport}
    TeacherLecturesReportPage.Select a Teacher                   ${TeacherN}
    TeacherLecturesReportPage.Select a Course                    ${CourseN}
    TeacherLecturesReportPage.Select a BatchType                 ${BatchType}
    TeacherLecturesReportPage.Select a Batch                     ${Batch}
    TeacherLecturesReportPage.Click on Fetch Data
    TeacherLecturesReportPage.Verify Teacher Lectures Report Table
    TeacherLecturesReportPage.Verify Total Lectures
    TeacherLecturesReportPage.verify download Teacher Lectures Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${tlr_FetchData}
    click on button                     ${tlr_FetchData}
    wait until element is visible       ${tlr_FetchData}            120

#-------------------------------------------------------------------------------------------
#                                  Teacher
#-------------------------------------------------------------------------------------------
Click on Teacher
    page should contain element         ${tlr_teacher}
    click on button                     ${tlr_teacher}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Teacher
    [Arguments]                         ${Opt_teacher}
    TeacherLecturesReportPage.Click on Teacher
    scroll element into view            xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    page should contain element         xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    Press Keys                          ${hTeacherLecturesReport}             ESC

#-------------------------------------------------------------------------------------------
#                                  Course
#-------------------------------------------------------------------------------------------
Click on Course
    page should contain element         ${tlr_course}
    click on button                     ${tlr_course}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Opt_course}
    TeacherLecturesReportPage.Click on Course
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    Press Keys                          ${hTeacherLecturesReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Type
#-------------------------------------------------------------------------------------------
Click on BatchType
    page should contain element         ${tlr_batchtype}
    click on button                     ${tlr_batchtype}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchType
    [Arguments]                           ${Opt_BatchType}
    TeacherLecturesReportPage.Click on BatchType
    page should contain element           xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    Press Keys                            ${hTeacherLecturesReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${tlr_batch}
    click on button                     ${tlr_batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                           ${Opt_Batch}
    TeacherLecturesReportPage.Click on Batch
    page should contain element           xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                     Report Table
#-------------------------------------------------------------------------------------------
Verify Teacher Lectures Report Table
    page should contain element         ${tlr_th_BatchName}
    page should contain element         ${tlr_th_course}
    page should contain element         ${tlr_th_Module}
    page should contain element         ${tlr_th_NumberofLectures}


#-------------------------------------------------------------------------------------------
#                                     Total Lectures
#-------------------------------------------------------------------------------------------
Verify Total Lectures
    page should contain element         ${tlr_totallectures}
    ${Lectures}=     Get Text           ${tlr_totallectures}
    @{tlectures} =  split string        ${Lectures}           :
    printvalue                          The total Teacher Lectures are${tlectures}[1]


#-------------------------------------------------------------------------------------------
verify download Teacher Lectures Report
    [Documentation]  This test case verifies that Teacher Lectures Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}