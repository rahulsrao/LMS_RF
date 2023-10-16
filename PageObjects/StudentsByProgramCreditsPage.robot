*** Settings ***
Documentation   All the page objects and keywords of Students by Program Credits Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hStudentsByProgramCredits}               xpath://div[contains(text(),'Students by Program Credits')]
${sc_Organizations}                       css:input[aria-label='Organizations']
${sc_Refresh}                             xpath://i[contains(text(),'refresh')]//parent::div
${opt_LMS}                                 xpath://div[contains(text(),'LMS')]//ancestor::a
${sc_Program}                             css:input[aria-label='Program']
${pr_Uni}                                  xpath://div[contains(text(),'Uni')]//ancestor::a
${sc_CourseLevel}                         css:input[aria-label='Course Level']
${opt_Level1}                              xpath://div[contains(text(),'Level 1')]//ancestor::a
${sc_StudentHouse}                        css:input[aria-label='Student House']
${sc_Attribute2}                          css:input[aria-label='Attribute 2']
${sc_BatchGroup}                          css:input[aria-label='Batch Group']
${sc_Status}                              css:input[aria-label='Status']
${opt_st_Active}                           xpath://div[contains(text(),'Active')]//ancestor::a
${opt_st_Inactive}                         xpath:(//div[contains(text(),'Inactive')]//ancestor::a)[1]
${sc_FetchData}                            xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${sc_th_StudentName}                       xpath://th[contains(@aria-label,'Student Name')]
${sc_th_Program}                           xpath://th[contains(@aria-label,'Program')]
${sc_th_Level}                             xpath://th[contains(@aria-label,'Level')]
${sc_th_Status}                            xpath://th[contains(@aria-label,'Status')]
${sc_th_RequiredCredits}                   xpath://th[contains(@aria-label,'Required Credits')]
${sc_th_TotalCreditsEarnedForProgram}      xpath://th[contains(@aria-label,'Total Credits Earned For Program')]
${sc_th_Attribute2}                        xpath://th[contains(@aria-label,'Attribute 2')]
${sc_th_StudentHouse}                      xpath://th[contains(@aria-label,'Student House')]
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button
