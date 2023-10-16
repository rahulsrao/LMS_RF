*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/TeacherPerformanceReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Teacher Performance Report page
    [Documentation]  This test case verifies Teacher Performance Report page
    [Tags]           Report
    click element                       ${teacherperformancereport}
    wait until element is visible       ${hTeacherPerformanceReport}                 120
    page should contain element         ${hTeacherPerformanceReport}
    page should contain element         ${tpr_teacher}
    click element                       ${tpr_teacher}
    wait until element is visible       ${tpr_opt_GuruDronacharya}                   120
    page should contain element         ${tpr_opt_GuruDronacharya}
    click on button                     ${tpr_opt_GuruDronacharya}
    wait until element is visible       ${tpr_Course}                                120
    page should contain element         ${tpr_Course}
    click element                       ${tpr_Course}
    wait until element is visible       ${tpr_opt_art}                              120
    page should contain element         ${tpr_opt_ART}
    click on button                     ${tpr_opt_ART}
    wait until element is visible       ${trp_batchtype}                            120
    page should contain element         ${trp_batchtype}
    click on button                     ${trp_batchtype}
    wait until element is visible       ${trp_active}                               120
    page should contain element         ${trp_Active}
    page should contain element         ${trp_Inactive}
    click on button                     ${trp_Active}
    wait until element is visible       ${trp_batch}                                120
    page should contain element         ${trp_batch}
    click on button                     ${trp_batch}
    page should contain element         ${tpr_opt_ARTBATCHTHREE}
    click on button                     ${tpr_opt_ARTBATCHTHREE}
    Press Keys                          ${hTeacherPerformanceReport}                ESC
    wait until element is visible       ${trp_StartDate}                            120
    page should contain element         ${trp_StartDate}
    page should contain element         ${trp_EndDate}
    page should contain element         ${trp_FetchData}
    click on button                     ${trp_FetchData}
    sleep                               5
    wait until element is visible       ${trp_FetchData}                            120
    page should contain element         ${trp_th_batchname}
    page should contain element         ${trp_th_course}
    page should contain element         ${trp_th_modules}
    page should contain element         ${trp_th_attendancedays}
    page should contain element         ${trp_th_Attendance}
    page should contain element         ${trp_th_MeetingDone}
    page should contain element         ${trp_th_Assignments}
    page should contain element         ${trp_th_AssignmentsSubmission}
    page should contain element         ${trp_th_AssignmentsBatchAvg}
    scroll element into view            ${trp_th_mentoringsessionsdone}
    page should contain element         ${trp_th_tests}
    page should contain element         ${trp_th_TestSubmission}
    page should contain element         ${trp_th_TestBatchAvg}
    page should contain element         ${trp_th_ProgressBatchAvg}
    page should contain element         ${trp_th_MentoringSessionsDone}

#-------------------------------------------------------------------------------------------
verify Teacher Performance Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                  ${TeacherN}      ${CourseN}      ${BatchType}       ${Batch}
    click element                                                ${teacherperformancereport}
    wait until element is visible                                ${hTeacherPerformanceReport}              120
    page should contain element                                  ${hTeacherPerformanceReport}
    TeacherPerformanceReportPage.Select a Teacher                ${TeacherN}
    TeacherPerformanceReportPage.Select a Course                 ${CourseN}
    TeacherPerformanceReportPage.Select a BatchType              ${BatchType}
    TeacherPerformanceReportPage.Select a Batch                  ${Batch}
    TeacherPerformanceReportPage.Click on Fetch Data
    TeacherPerformanceReportPage.Verify Teacher Performance Report Table
    TeacherPerformanceReportPage.verify download Teacher Performance Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${trp_FetchData}
    click on button                     ${trp_FetchData}
    wait until element is visible       ${trp_FetchData}            120

#-------------------------------------------------------------------------------------------
#                                  Teacher
#-------------------------------------------------------------------------------------------
Click on Teacher
    page should contain element         ${tpr_teacher}
    click on button                     ${tpr_teacher}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Teacher
    [Arguments]                         ${Opt_teacher}
    TeacherPerformanceReportPage.Click on Teacher
    scroll element into view            xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    page should contain element         xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    Press Keys                          ${hTeacherPerformanceReport}             ESC

#-------------------------------------------------------------------------------------------
#                                  Course
#-------------------------------------------------------------------------------------------
Click on Course
    page should contain element         ${tpr_course}
    click on button                     ${tpr_course}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Opt_course}
    TeacherPerformanceReportPage.Click on Course
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    Press Keys                          ${hTeacherPerformanceReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Type
#-------------------------------------------------------------------------------------------
Click on BatchType
    page should contain element         ${trp_BatchType}
    click on button                     ${trp_BatchType}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchType
    [Arguments]                           ${Opt_BatchType}
    TeacherPerformanceReportPage.Click on BatchType
    page should contain element           xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    Press Keys                            ${hTeacherPerformanceReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${trp_Batch}
    click on button                     ${trp_Batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                           ${Opt_Batch}
    TeacherPerformanceReportPage.Click on Batch
    page should contain element           xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                     Report Table
#-------------------------------------------------------------------------------------------
Verify Teacher Performance Report Table
    page should contain element         ${trp_th_batchname}
    page should contain element         ${trp_th_course}
    page should contain element         ${trp_th_modules}
    page should contain element         ${trp_th_attendancedays}
    page should contain element         ${trp_th_Attendance}
    page should contain element         ${trp_th_MeetingDone}
    page should contain element         ${trp_th_Assignments}
    page should contain element         ${trp_th_AssignmentsSubmission}
    page should contain element         ${trp_th_AssignmentsBatchAvg}
    scroll element into view            ${trp_th_mentoringsessionsdone}
    page should contain element         ${trp_th_tests}
    page should contain element         ${trp_th_TestSubmission}
    page should contain element         ${trp_th_TestBatchAvg}
    page should contain element         ${trp_th_ProgressBatchAvg}
    page should contain element         ${trp_th_MentoringSessionsDone}

#-------------------------------------------------------------------------------------------
verify download Teacher Performance Report
    [Documentation]  This test case verifies that Teacher Performance Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}