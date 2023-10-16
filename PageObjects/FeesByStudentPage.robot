*** Settings ***
Documentation   All the page objects and keywords of Fees By Student Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hFeesByStudent}                          xpath://div[contains(text(),'Fees By Student')]
${fbs_Organizations}                       css:input[aria-label='Organizations']
${fbs_Refresh}                             xpath://i[contains(text(),'refresh')]//parent::div
${opt_LMS}                                 xpath://div[contains(text(),'LMS')]//ancestor::a
${fbs_Program}                             css:input[aria-label='Program']
${fbs_Uni}                                 xpath://div[contains(text(),'Uni')]//ancestor::a
${fbs_CourseLevel}                         css:input[aria-label='Course Level']
${fbs_Level1}                              xpath://div[contains(text(),'Level 1')]//ancestor::a
${fbs_StudentHouse}                        css:input[aria-label='Student House']
${fbs_Attribute2}                          css:input[aria-label='Attribute 2']
${fbs_Status}                              css:input[aria-label='Status']
${fbs_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${fbs_Inactive}                            xpath:(//div[contains(text(),'Inactive')]//ancestor::a)[1]
${fbs_Batch}                               css:input[aria-label='Batch']
${fbs_ARTBATCHONE}                         xpath://div[contains(text(),'ART BATCH ONE')]//ancestor::a
${fbs_BatchGroup}                          css:input[aria-label='Batch Group']
${fbs_BatchStartDate}                      css:input[aria-label='Batch Start Date']
${fbs_BatchEndDate}                        css:input[aria-label='Batch End Date']
${fbs_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${fbs_th_StudentName}                      xpath://th[contains(@aria-label,'Student Name')]
${fbs_th_Status}                           xpath://th[contains(@aria-label,'Status')]
${fbs_th_Level}                            xpath://th[contains(@aria-label,'Level')]
${fbs_th_BatchName}                        xpath://th[contains(@aria-label,'Batch Name')]
${fbs_th_TotalFees}                        xpath://th[contains(@aria-label,'Total Fees')]
${fbs_th_TotalFeesDue}                     xpath://th[contains(@aria-label,'Total Fees Due')]
${fbs_th_FeesRecd}                         xpath://th[contains(@aria-label,'Fees Recd')]
${fbs_th_FeesDuebutnotRecd}                xpath://th[contains(@aria-label,'Fees Due but not Recd')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
