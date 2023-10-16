*** Settings ***
Documentation   All the page objects and keywords of Students by Program & Custom Attributes Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hStudentsByProgramCustomAttributes}      xpath://div[contains(text(),'Students by Program & Custom Attributes')]
${sa_Organizations}                       css:input[aria-label='Organizations']
${sa_Refresh}                             xpath://i[contains(text(),'refresh')]//parent::div
${opt_LMS}                                 xpath://div[contains(text(),'LMS')]//ancestor::a
${btn_Program}                             css:input[aria-label='Program']
${pr_Uni}                                 xpath://div[contains(text(),'Uni')]//ancestor::a
${btn_CourseLevel}                         css:input[aria-label='Course Level']
${opt_Level1}                              xpath://div[contains(text(),'Level 1')]//ancestor::a
${btn_StudentHouse}                        css:input[aria-label='Student House']
${btn_Attribute2}                          css:input[aria-label='Attribute 2']
${btn_BatchGroup}                          css:input[aria-label='Batch Group']
${btn_Status}                              css:input[aria-label='Status']
${opt_st_Active}                           xpath://div[contains(text(),'Active')]//ancestor::a
${opt_st_Inactive}                         xpath:(//div[contains(text(),'Inactive')]//ancestor::a)[1]
${btn_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${sa_th_StudentName}                          xpath://th[contains(@aria-label,'Student Name')]
${sa_th_Program}                              xpath://th[contains(@aria-label,'Program')]
${sa_th_Level}                                xpath://th[contains(@aria-label,'Level')]
${sa_th_Status}                               xpath://th[contains(@aria-label,'Status')]
${sa_th_BatchName}                            xpath://th[contains(@aria-label,'Batch Name')]
${sa_th_BatchStartDate}                       xpath://th[contains(@aria-label,'Batch Start Date')]
${sa_th_BatchEndDate}                         xpath://th[contains(@aria-label,'Batch End Date')]
${sa_th_Progress}                             xpath://th[contains(@aria-label,'Progress%')]
${sa_th_CreditEarned}                         xpath://th[contains(@aria-label,'Credit Earned')]
${sa_th_NoOfBadgesEarned}                     xpath://th[contains(@aria-label,'No of Badges Earned')]
${sa_th_Attribute2}                           xpath://th[contains(@aria-label,'Attribute 2')]
${sa_th_StudentHouse}                         xpath://th[contains(@aria-label,'Student House')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
