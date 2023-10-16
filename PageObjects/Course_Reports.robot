*** Settings ***
Documentation   All the page objects of Login page
Library         SeleniumLibrary
Resource        Generic.robot
Resource          ../Resources/TestData/TestData.robot

*** Variables ***
${Reports_h}                            xpath://div[contains(text(),'Reports - ${batch2}')]
${Reports_QuestionReport}               xpath://div[contains(text(),'Question Report')]
${Reports_AssignmentsReport}            xpath://div[contains(text(),'Assignments Report')]
${Reports_AttendanceReport}             xpath://div[contains(text(),'Attendance Report')]
${Reports_AssignmentsReport_download}   xpath://div[contains(text(),'Download')]/parent::button