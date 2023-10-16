*** Settings ***
Documentation   All the page objects and keywords of Teacher Mentoring Sessions Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hTeacherMentoringSessionsReport}         xpath://div[@class='v-toolbar__title headline font-weight-bold']
${tms_Teacher}                             css:input[aria-label='Teacher']
${tms_opt_GuruDronacharya}                 xpath://div[contains(text(),'Guru Dronacharya')]//ancestor::a
${tms_BatchType}                           css:input[aria-label='Batch Type']
${tms_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${tms_Inactive}                            xpath://div[contains(text(),'Inactive')]//ancestor::a
${tms_Batch}                               css:input[aria-label='Batch']
${tms_opt_ARTBATCHONE}                     xpath://div[contains(text(),'ART BATCH ONE')]//ancestor::a
${tms_StartDate}                           css:input[aria-label='Start Date']
${tms_EndDate}                             css:input[aria-label='End Date']
${tms_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${tms_th_BatchName}                        css:th[aria-label='Batch Name: Sorted ascending. Activate to sort descending.']
${tms_th_Course}                           css:th[aria-label='Course: Not sorted. Activate to sort ascending.']
${tms_th_Teacher}                          css:th[aria-label='Teacher: Not sorted. Activate to sort ascending.']
${tms_th_NumberofMentoringSessions}        css:th[aria-label='Number of Mentoring Sessions: Not sorted. Activate to sort ascending.']
${tms_TotalMentoringSessions}              css:div[class='flex md12'] div b
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
