*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ReportsPage.robot
Resource        ../../Resources/TestData/TestData.robot
Resource        ../../Resources/KeywordDefinationFiles/BatchReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/CourseReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/StudentsByProgramCustomAttributesPage.robot
Resource        ../../Resources/KeywordDefinationFiles/StudentsByProgramCreditsPage.robot
Resource        ../../Resources/KeywordDefinationFiles/FeesByBatchPage.robot
Resource        ../../Resources/KeywordDefinationFiles/FeesByStudentPage.robot
Resource        ../../Resources/KeywordDefinationFiles/TeacherPerformanceReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/TeacherLecturesReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/TeacherMentoringSessionsReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/BatchTestReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/StudentReportPage.robot
Resource        ../../Resources/KeywordDefinationFiles/StudentDetailReportPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Reports
    [Arguments]                                                          ${TermN}        ${levelN}      ${CourseN}       ${BatchType}        ${Batch}       ${Program}       ${StudentH}       ${BatchGrp}        ${status}     ${TeacherN}     ${TestType}     ${pass%}        ${studentN}
    ReportsPage.verify Report page
    BatchReportPage.verify Batch Report page of Teacher User             ${TermN}        ${levelN}      ${CourseN}       ${BatchType}        ${Batch}
    CourseReportPage.verify Course Report Page of Teacher User          ${levelN}       ${CourseN}
    StudentsByProgramCustomAttributesPage.verify StudentsByProgramCustomAttributes Report page of Teacher User      ${Program}                  ${levelN}      ${StudentH}       ${BatchGrp}        ${status}
    StudentsByProgramCreditsPage.verify StudentsByProgramCredits Report page of Teacher User                        ${Program}                  ${levelN}      ${StudentH}       ${BatchGrp}        ${status}
    FeesByBatchPage.verify Fees By Batch Report page of Teacher User     ${TermN}       ${CourseN}           ${status}
    FeesByStudentPage.verify Fees By Student Report page of Teacher User   ${Program}      ${levelN}      ${StudentH}      ${status}           ${Batch}        ${BatchGrp}
    TeacherPerformanceReportPage.verify Teacher Performance Report page of Teacher User     ${TeacherN}      ${CourseN}      ${BatchType}       ${Batch}
    TeacherLecturesReportPage.verify Teacher Performance Report page of Teacher User        ${TeacherN}      ${CourseN}      ${BatchType}        ${Batch}
    TeacherMentoringSessionsReportPage.verify Teacher Mentoring Sessions Report page of Teacher User        ${TeacherN}       ${BatchType}       ${Batch}
    BatchTestReportPage.verify Batch Test Report page of Teacher User           ${BatchType}       ${Batch}          ${TestType}     ${pass%}
    StudentReportPage.verify Student Report page of Teacher User                 ${Program}                 ${BatchGrp}
    StudentDetailReportPage.verifyStudent Detail Report page of Teacher User     ${studentN}                ${Program}          ${BatchGrp}

#-------------------------------------------------------------------------------------------
verify Report page
    wait until element is visible       ${hreports}         120
    page should contain element         ${hreports}
    page should contain element         ${batchreport}
    page should contain element         ${coursereport}
    page should contain element         ${studentsbyprogramattributes}
    page should contain element         ${studentsbyprogramcredits}
    page should contain element         ${feesreportbybatch}
    page should contain element         ${feesreportbystudent}
    page should contain element         ${teacherperformancereport}
    page should contain element         ${teacherlecturesreport}
    page should contain element         ${teachermentoringsessionsreport}
    page should contain element         ${batchtestreport}
    page should contain element         ${studentreport}
    page should contain element         ${studentdetailreport}