*** Settings ***
Documentation   All the page objects and keywords of Teacher Performance Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hTeacherPerformanceReport}               xpath://div[contains(text(),'Teacher Performance Report')]
${tpr_Teacher}                             css:input[aria-label='Teacher*']
${tpr_opt_GuruDronacharya}                 xpath://div[contains(text(),'Guru Dronacharya')]//ancestor::a
${tpr_Course}                              css:input[aria-label='Course']
${tpr_opt_ART}                             xpath:(//div[@class='v-list__tile__title' and contains(text(),'ART')]//ancestor::a)[5]
${trp_BatchType}                           css:input[aria-label='Batch Type']
${trp_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${trp_Inactive}                            xpath://div[contains(text(),'Inactive')]//ancestor::a
${trp_Batch}                               css:input[aria-label='Batch*']
${tpr_opt_ARTBATCHTHREE}                   xpath://div[contains(text(),'ART BATCH THREE')]//ancestor::a
${trp_StartDate}                           css:input[aria-label='Start Date']
${trp_EndDate}                             css:input[aria-label='End Date']
${trp_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${trp_th_BatchName}                        xpath://th[contains(@aria-label,'Batch Name')]
${trp_th_Course}                           xpath://th[contains(@aria-label,'Course')]
${trp_th_Modules}                          xpath://th[contains(@aria-label,'Modules')]
${trp_th_AttendanceDays}                   xpath://th[contains(@aria-label,'Attendance Days')]
${trp_th_Attendance}                       xpath://th[contains(@aria-label,'Attendance(%)')]
${trp_th_MeetingDone}                      xpath://th[contains(@aria-label,'Meeting Done')]
${trp_th_Assignments}                      xpath://th[contains(@aria-label,'Assignments')]
${trp_th_AssignmentsSubmission}            xpath://th[contains(@aria-label,'Assignments Submission(%)')]
${trp_th_AssignmentsBatchAvg}              xpath://th[contains(@aria-label,'Assignments Batch Avg(%)')]
${trp_th_Tests}                            xpath://th[contains(@aria-label,'Tests')]
${trp_th_TestSubmission}                   xpath://th[contains(@aria-label,'Tests Submission(%)')]
${trp_th_TestBatchAvg}                     xpath://th[contains(@aria-label,'Tests Batch Avg(%)')]
${trp_th_ProgressBatchAvg}                 xpath://th[contains(@aria-label,'Progress Batch Avg')]
${trp_th_MentoringSessionsDone}            xpath://th[contains(@aria-label,'Mentoring Sessions Done')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button