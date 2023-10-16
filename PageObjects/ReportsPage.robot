*** Settings ***
Documentation   All the page objects and keywords of Reports Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hReports}                         xpath://div[@class='v-toolbar__title ml-2'][contains(text(),'Reports')]
${BatchReport}                      xpath://b[contains(text(),'Batch Report')]//ancestor::a
${CourseReport}                     xpath://b[contains(text(),'Course Report')]//ancestor::a
${StudentsByProgramAttributes}      xpath://b[contains(text(),'Students By Program Attributes')]//ancestor::a
${StudentsByProgramCredits}         xpath://b[contains(text(),'Students By Program Credits')]//ancestor::a
${FeesReportByBatch}                xpath://b[contains(text(),'Fees Report By Batch')]//ancestor::a
${FeesReportByStudent}              xpath://b[contains(text(),'Fees Report By Student')]//ancestor::a
${TeacherPerformanceReport}         xpath://b[contains(text(),'Teacher Performance Report')]//ancestor::a
${TeacherLecturesReport}            xpath://b[contains(text(),'Teacher Lectures Report')]//ancestor::a
${TeacherMentoringSessionsReport}   xpath://b[contains(text(),'Teacher Mentoring Sessions Report')]//ancestor::a
${BatchTestReport}                  xpath://b[contains(text(),'Batch Test Report')]//ancestor::a
${StudentReport}                    xpath://b[contains(text(),'Student Report')]//ancestor::a
${StudentDetailReport}              xpath://b[contains(text(),'Student Detail Report')]//ancestor::a
