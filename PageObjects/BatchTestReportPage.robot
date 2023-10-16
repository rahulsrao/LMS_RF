*** Settings ***
Documentation   All the page objects and keywords of Batch Test Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hBatchTestReport}                        xpath://div[@class='v-toolbar__title headline font-weight-bold']
${bts_BatchType}                           css:input[aria-label='Batch Type']
${bts_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${bts_Inactive}                            xpath://div[contains(text(),'Inactive')]//ancestor::a
${bts_Batch}                               css:input[aria-label='Batch']
${bts_opt_ARTBATHTHREE}                    xpath://div[contains(text(),'ART BATCH THREE')]//ancestor::a
${bts_TestType}                            css:input[aria-label='Test Type']
${bts_NT}                                  xpath://div[contains(text(),'NT')]//ancestor::a
${bts_PT}                                  xpath://div[contains(text(),'PT')]//ancestor::a
${bts_Pass%}                               css:input[aria-label='Pass(%)']
${bts_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${bts_th_EnrollmentNumber}                 xpath://th[contains(@aria-label,'Enrollment Number')]
${bts_th_Firstname}                        xpath://th[contains(@aria-label,'Firstname')]
${bts_th_Lastname}                         xpath://th[contains(@aria-label,'Lastname')]
${bts_th_Attribute1}                       xpath://th[contains(@aria-label,'Attribute1')]
${bts_th_Attribute2}                       xpath://th[contains(@aria-label,'Attribute2')]
${bts_th_Phone}                            xpath://th[contains(@aria-label,'Phone')]
${bts_th_Email}                            xpath://th[contains(@aria-label,'Email')]
${bts_th_Attendance(%)}                    xpath://th[contains(@aria-label,'Attendance(%)')]
${bts_th_ModuleName}                       xpath://th[contains(@aria-label,'Module Name')]
${bts_th_TestType}                         xpath://th[contains(@aria-label,'Test Type')]
${bts_th_TestTitle}                        xpath://th[contains(@aria-label,'Test Title')]
${bts_th_TotalMarks}                       xpath://th[contains(@aria-label,'Total Marks')]
${bts_th_MarksObtained}                    xpath://th[contains(@aria-label,'Marks Obtained')]
${bts_th_%}                                xpath://th[contains(@aria-label,'%')]
${bts_th_TestResult}                       xpath://th[contains(@aria-label,'Test Result')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
