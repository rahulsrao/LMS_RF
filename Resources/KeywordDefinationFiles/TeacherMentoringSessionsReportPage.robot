*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/TeacherMentoringSessionsReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Teacher Mentoring Sessions Report page
    [Documentation]  This test case verifies Teacher Mentoring Sessions Report page
    [Tags]           Report
    click element                       ${teachermentoringsessionsreport}
    wait until element is visible       ${hTeacherMentoringSessionsReport}                 120
    page should contain element         ${hTeacherMentoringSessionsReport}
    page should contain element         ${tms_Teacher}
    click element                       ${tms_Teacher}
    wait until element is visible       ${tms_opt_GuruDronacharya}                   120
    page should contain element         ${tms_opt_GuruDronacharya}
    click on button                     ${tms_opt_GuruDronacharya}
    wait until element is visible       ${tms_batchtype}                            120
    page should contain element         ${tms_batchtype}
    click on button                     ${tms_batchtype}
    wait until element is visible       ${tms_active}                               120
    page should contain element         ${tms_active}
    page should contain element         ${tms_Inactive}
    click on button                     ${tms_active}
    wait until element is visible       ${tms_batch}                                120
    page should contain element         ${tms_batch}
    click on button                     ${tms_batch}
    wait until element is visible       ${tms_opt_ARTBATCHONE}
    page should contain element         ${tms_opt_ARTBATCHONE}
    click on button                     ${tms_opt_ARTBATCHONE}
    Press Keys                          ${hTeacherMentoringSessionsReport}          ESC
    wait until element is visible       ${tms_StartDate}                            120
    page should contain element         ${tms_StartDate}
    page should contain element         ${tms_EndDate}
    page should contain element         ${tms_FetchData}
    click on button                     ${tms_FetchData}
    sleep                               5
    wait until element is visible       ${tms_FetchData}                            120
    page should contain element         ${tms_th_BatchName}
    page should contain element         ${tms_th_course}
    page should contain element         ${tms_th_Teacher}
    page should contain element         ${tms_th_NumberofMentoringSessions}
    page should contain element         ${tms_TotalMentoringSessions}
    ${Mentors}=     Get Text            ${tms_TotalMentoringSessions}
    @{Sessions} =  split string          ${Mentors}           :
    printvalue                          The Total Mentoring Sessions are${Sessions}[1]



#-------------------------------------------------------------------------------------------
verify Teacher Mentoring Sessions Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                           ${TeacherN}       ${BatchType}       ${Batch}
    click element                                                         ${teachermentoringsessionsreport}
    wait until element is visible                                         ${hTeacherMentoringSessionsReport}              120
    page should contain element                                           ${hTeacherMentoringSessionsReport}
    TeacherMentoringSessionsReportPage.Select a Teacher                   ${TeacherN}
    TeacherMentoringSessionsReportPage.Select a BatchType                 ${BatchType}
    TeacherMentoringSessionsReportPage.Select a Batch                     ${Batch}
    TeacherMentoringSessionsReportPage.Click on Fetch Data
    TeacherMentoringSessionsReportPage.Verify Teacher Mentoring Sessions Report Table
    TeacherMentoringSessionsReportPage.Verify Total Mentoring Sessions
    TeacherMentoringSessionsReportPage.verify download Teacher Mentoring Sessions Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${tms_fetchdata}
    click on button                     ${tms_fetchdata}
    wait until element is visible       ${tms_fetchdata}            120

#-------------------------------------------------------------------------------------------
#                                  Teacher
#-------------------------------------------------------------------------------------------
Click on Teacher
    page should contain element         ${tms_teacher}
    click on button                     ${tms_teacher}
    sleep                               8

#-------------------------------------------------------------------------------------------
Select a Teacher
    [Arguments]                         ${Opt_teacher}
    TeacherMentoringSessionsReportPage.Click on Teacher
    scroll element into view            xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    page should contain element         xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_teacher}')]//ancestor::a
    Press Keys                          ${hTeacherMentoringSessionsReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Type
#-------------------------------------------------------------------------------------------
Click on BatchType
    page should contain element         ${tms_batchtype}
    click on button                     ${tms_batchtype}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchType
    [Arguments]                           ${Opt_BatchType}
    TeacherMentoringSessionsReportPage.Click on BatchType
    page should contain element           xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    Press Keys                            ${hTeacherMentoringSessionsReport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${tms_batch}
    click on button                     ${tms_batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                           ${Opt_Batch}
    TeacherMentoringSessionsReportPage.Click on Batch
    scroll element into view              xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    page should contain element           xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                     Report Table
#-------------------------------------------------------------------------------------------
Verify Teacher Mentoring Sessions Report Table
    page should contain element         ${tms_th_BatchName}
    page should contain element         ${tms_th_course}
    page should contain element         ${tms_th_Teacher}
    page should contain element         ${tms_th_NumberofMentoringSessions}

#-------------------------------------------------------------------------------------------
#                                     Total Mentoring Sessions
#-------------------------------------------------------------------------------------------
Verify Total Mentoring Sessions
    page should contain element         ${tms_TotalMentoringSessions}
    ${Mentors}=     Get Text            ${tms_TotalMentoringSessions}
    @{Sessions} =  split string          ${Mentors}           :
    printvalue                          The Total Mentoring Sessions are${Sessions}[1]

#-------------------------------------------------------------------------------------------
verify download Teacher Mentoring Sessions Report
    [Documentation]  This test case verifies that Teacher Mentoring Sessions Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}