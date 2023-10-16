*** Settings ***
Documentation   All the page objects and keywords of Fees By Batch Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hFeesByBatch}                            xpath://div[contains(text(),'Fees By Batch')]
${fbb_Organizations}                       css:input[aria-label='Organizations']
${fbb_Refresh}                             xpath://i[contains(text(),'refresh')]//parent::div
${opt_LMS}                                 xpath://div[contains(text(),'LMS')]//ancestor::a
${btn_Terms}                               css:input[aria-label='Terms']
${trm_SPRING2020}                          xpath://div[contains(text(),'SPRING 2020')]//ancestor::a
${fbb_Course}                              css:input[aria-label='Course']
${fbb_ART}                                 xpath://div[@class='v-list__tile__title' and text()='ART']//ancestor::a
${fbb_Status}                              css:input[aria-label='Status']
${fbb_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${fbb_Inactive}                            xpath:(//div[contains(text(),'Inactive')]//ancestor::a)[1]
${fbb_StartDate}                           css:input[aria-label='Start Date']
${fbb_EndDate}                             css:input[aria-label='End Date']
${fbb_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${fbb_th_BatchName}                        xpath://th[contains(@aria-label,'Batch Name')]
${fbb_th_Status}                           xpath://th[contains(@aria-label,'Status')]
${fbb_th_StudentName}                      xpath://th[contains(@aria-label,'Student Name')]
${fbb_th_Course}                           xpath://th[contains(@aria-label,'Course')]
${fbb_th_Students}                         xpath://th[contains(@aria-label,'Students')]
${fbb_th_TotalFees}                        xpath://th[contains(@aria-label,'Total Fees')]
${fbb_th_TotalFeesDue}                     xpath://th[contains(@aria-label,'Total Fees Due')]
${fbb_th_FeesRecd}                         xpath://th[contains(@aria-label,'Fees Recd')]
${fbb_th_FeesDuebutnotRecd}                xpath://th[contains(@aria-label,'Fees Due but not Recd')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
