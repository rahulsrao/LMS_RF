*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***

${Course_Batch_h}                               css:small[class='course-name']
${Course_info}                                  css:div[class='v-toolbar__title'] button[type='button']
${Batch_info}                                   css:div[class='v-toolbar__title mt-2'] button[type='button']

${Course_progressbar_Highest}                   xpath://div[contains(@title,'Highest ')]
${CourseMapScore}                               css:div[title='Course Map Score'] button[type='button']


${Course_progressbar_ClassAverage}              xpath://div[contains(@title,'Class Average')]
${Course_Learn}                                 xpath:(//button[@title='Learn'])[1]
${Course_AverageOfModules}                      css:div[title='Average Of Modules']
${Course_AverageOfChapters}                     css:div[title='Average Of Chapters']
${Course_Reports}                               css:button[title='Reports']
${Course_Mentoring}                             css:button[title='Mentoring']
${Course_TakeAttendance}                        css:button[title='Take Attendance']
${Course_More}                                  xpath:(//i[text()='more_vert'])[2]//ancestor::button
${Course_Leaderboard}                           xpath://div[@class='v-card__title title' and contains(text(),'Leaderboard')]
${Course_Viewlatestawardedbadges}               css:button[title='Share on wall']
${Course_BadgeInformation}                      css:button[title='Badge Information']
${Course_ModuleLeader}                          xpath://div[contains(@style,'module_leader.svg')]
${Course_conceptleader}                         xpath://div[contains(@style,'concept_leader.svg')]
${Course_testtopper}                            xpath://div[contains(@style,'test_topper.svg')]
${Course_assignmenttopper}                      xpath://div[contains(@style,'assignment_topper.svg')]
${Course_starperformer}                         xpath://div[contains(@style,'star_performer.svg')]
${Course_moststudious}                          xpath://div[contains(@style,'most_studious.svg')]
${Course_bingewatcher}                          xpath://div[contains(@style,'binge_watcher.svg')]
${Course_discussionstopper}                     xpath://div[contains(@style,'discussions_topper.svg')]
${Course_mostpunctual}                          xpath://div[contains(@style,'most_punctual.svg')]

${Course_Dashboard}                             xpath://a[normalize-space()='Dashboard']
${Course_Pages}                                 xpath://a[normalize-space()='Pages']
${Course_Videos}                                xpath://a[normalize-space()='Videos']
${Course_Collections}                           xpath://a[normalize-space()='Collections']
${Course_Assignments}                           xpath://a[normalize-space()='Assignments']
${Course_Tests}                                 xpath://a[normalize-space()='Tests']
${Course_StudentProjects}                       xpath://a[normalize-space()='Student Projects']
${Course_Discussions}                           xpath://a[normalize-space()='Discussions']
${Course_LessonPlan}                            xpath://a[normalize-space()='Lesson Plan']
${Course_Zoom}                                  xpath://a[normalize-space()='Zoom']
${Course_MicrosoftTeam}                         xpath://a[normalize-space()='MIcrosoft Team' or normalize-space()='Microsoft Team']


#-------------------------------------------------------------------------------------------
#                                  Modules List
#-------------------------------------------------------------------------------------------
${ModulesList_h}                                    xpath:(//div[normalize-space()='Modules List' or normalize-space()='Module List'])[1]
${ModulesList_Add}                                  xpath://div[normalize-space()='Modules List']/following-sibling::button
${ModulesList_Module1}                              xpath://span[@title='Module 1'] | //div[@title='Module 1'] | //span[contains(text(),'Module 1')]
${ModulesList_Module1_description}                  xpath:(//span[@title='Module 1'] | //div[@title='Module 1'] | //span[contains(text(),'Module 1')])//following-sibling::span
${ModulesList_Module1_ModuleRestrictions}           xpath:(//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])/following::button[@title='Module Restrictions'][1]
${ModulesList_Module_Active}                        xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])/following::button)[2]
${ModulesList_Module1_LeadTeacher}                  xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::i[contains(@title,'Lead Teacher')][1])//ancestor::button
${ModulesList_Module1_Leader}                       xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::div[contains(text(),'Leaders')][1])//ancestor::button
${ModulesList_Module1_ModuleProgressTracking}       xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::div[@title='Module Progress Tracking'][1])
${ModulesList_Module1_Learn}                        xpath:(//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::button[@title='Learn'][1]
${ModulesList_Module1_Measure}                      xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::button[@title='Measure'])[1]
${ModulesList_Module1_Score}                        xpath:(//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::div[@title='Score'][1]
${ModulesList_Module1_edit}                         xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::i[contains(text(),'edit')][1])//ancestor::button
${ModulesList_Module1_delete}                       xpath:((//span[@title='Module 1'] | //div[@title='Module 1']| //span[contains(text(),'Module 1')])//following::i[contains(text(),'delete')][1])//ancestor::button

#-------------------------------------------------------------------------------------------
#                                  Module Restrictions
#-------------------------------------------------------------------------------------------
${ModuleRestrictions_h}                             xpath://div[contains(text(),'Module Restrictions')]
${ModuleRestrictions_Pages&Videos_lock}             css:button[title='Pages & Videos']
${ModuleRestrictions_PracticeTest_lock}             css:button[title='Practice Test']
${ModuleRestrictions_AdaptiveTest_lock}             css:button[title='Adaptive Test']
${ModuleRestrictions_SelfAdaptiveTest_lock}         css:button[title='Self Adaptive Test']
${ModuleRestrictions_QuestionBank_lock}             css:button[title='Question Bank']
${ModuleRestrictions_FlashCards_lock}               css:button[title='Flash Cards']
${ModuleRestrictions_Update}                        xpath:(//div[contains(text(),'Module Restrictions')]//following::div[contains(text(),'Update')])[1]
${ModuleRestrictions_Cancel}                        xpath:(//div[contains(text(),'Module Restrictions')]//following::div[contains(text(),'Cancel')])[1]
${ModuleRestrictions_Close}                         xpath:(//div[contains(text(),'Module Restrictions')]//following::div[contains(text(),'Close')])[1]

#-------------------------------------------------------------------------------------------
#                                  Module Active
#-------------------------------------------------------------------------------------------
${ModuleActive_conf_msg}                            xpath:(//h2[contains(text(),'Are you sure you want to change not started to in ')])[2]
${ModuleActive_msg_Yes}                             xpath:(//div[contains(text(),'Yes')])[2]/parent::button
${ModuleActive_msg_No}                              xpath:(//div[contains(text(),'No')])[10]/parent::button

#-------------------------------------------------------------------------------------------
#                                  Edit Lead Teacher For Module
#-------------------------------------------------------------------------------------------
${EditLeadTeacherForModule_h}                       xpath://div[contains(text(),'Edit Lead Teacher For Module')]
${EditLeadTeacherForModule_h}                       xpath://div[contains(text(),'Edit Lead Teacher For Module')]//following::i[contains(text(),'close')]//ancestor::button
${EditLeadTeacherForModule_SelectTeacher}           xpath://div[contains(text(),'Edit Lead Teacher For Module')]/following::input[@aria-label='Select Teacher']
${EditLeadTeacherForModule_Save}                    xpath://div[contains(text(),'Edit Lead Teacher For Module')]//following::div[contains(text(),'Save')]/parent::button
${EditLeadTeacherForModule_Cancel}                  xpath://div[contains(text(),'Edit Lead Teacher For Module')]//following::div[contains(text(),'Cancel')]/parent::button

#-------------------------------------------------------------------------------------------
#                                  Leader
#-------------------------------------------------------------------------------------------
${Leaders_h}                                        xpath:(//div[contains(text(),'Leaders')])[2]
${Leaders_Close}                                    xpath:(//div[contains(text(),'Leaders')])[2]//following::i[contains(text(),'close')]//ancestor::button


#-------------------------------------------------------------------------------------------
#                                  Edit/Create Module
#-------------------------------------------------------------------------------------------
${EditModule_Name}                                  css:input[aria-label='Name']
${EditModule_Description}                           css:input[aria-label='Description']
${EditModule_Remove}                                xpath://div[normalize-space()='Remove']
${EditModule_Selectanimage}                         css:input[name='image']
${EditModule_Save}                                  xpath:(//input[@aria-label='Description']/following::div[contains(text(),'Save')])[1]/parent::button
${EditModule_Close}                                 xpath:(//input[@aria-label='Description']/following::div[contains(text(),'Close')])[1]/parent::button


#-------------------------------------------------------------------------------------------
#                                  Concepts List
#-------------------------------------------------------------------------------------------
${ConceptsList_h}                                   xpath://div[contains(text(),'Concepts List')]
${ConceptsList_Concept1_h}                          xpath://div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')]
${ConceptsList_Add}                                 xpath://div[normalize-space()='Concepts List']/following-sibling::button
${ConceptsList_Concept1_h}                          xpath://div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')]
${ConceptsList_Concept1_Leaders}                    xpath:(//div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')])//following::div[contains(text(),'Leaders')][1]//ancestor::button
${ConceptsList_Concept1_Learn}                      xpath:((//div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')])//following::button[@title='Learn'])[1]
${ConceptsList_Concept1_Measure}                    xpath:((//div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')])//following::button[@title='Measure'])[1]
${ConceptsList_Concept1_Score}                      xpath:((//div[contains(text(),'Concept 1')] | //span[contains(text(),'Concept 1')])//following::div[@role='progressbar'])[1]
${ConceptsList_Concept1_Edit}                       xpath://div[contains(text(),'Concept 1')]//following::button[4]
${ConceptsList_Concept1_Delete}                     xpath://div[contains(text(),'Concept 1')]//following::button[5]
${RecentPages_h}                                    xpath://div[contains(text(),'Recent Pages')]

#-------------------------------------------------------------------------------------------
#                                  Course Data
#-------------------------------------------------------------------------------------------
${CourseData_h}                                     xpath://h4[normalize-space()='Course Data'] | //div[contains(text(),'Course Data')]
${CourseData_LeadTeacher}                           xpath://div[contains(text(),'Lead Teacher:')]
${CourseData_EnrollmentList}                        xpath://div[contains(text(),'Enrollment List')]/parent::button
${CourseData_FeeDetails}                            xpath://div[normalize-space()='Fee Details']/parent::button
${CourseData_LeadTeacher_edit}                      xpath://div[contains(text(),'Lead Teacher:')]//button[@type='button']

#-------------------------------------------------------------------------------------------
#                                  Fees
#-------------------------------------------------------------------------------------------
${Fees_h}                                           xpath://h4[normalize-space()='Fees']
${Fees_SetupFees}                                   xpath://div[normalize-space()='Setup Fees']/parent::button
${Fees_ManageFees}                                  xpath://div[normalize-space()='Manage fees']/parent::button
${Fees_StudentDetails}                              xpath://div[normalize-space()='Student Details']/parent::button

${UpcomingEvents_h}                                 xpath://h4[normalize-space()='Upcoming Events'] | //div[contains(text(),'Upcoming Events')]
${RecentDiscussions_h}                              xpath://h4[normalize-space()='Recent Discussions'] | //div[contains(text(),'Recent Discussions')]
${RecentWallPosts_h}                                xpath://h4[normalize-space()='Recent Wall Posts'] | //div[contains(text(),'Recent Wall Posts')]
${UpcomingConferences_h}                            xpath://h4[normalize-space()='Upcoming Conferences'] | //div[contains(text(),'Upcoming Conferences')]
${RecentAssignments_h}                              xpath://h4[normalize-space()='Recent Assignments']

${CourseMap}                                        xpath://h4[normalize-space()='Course Map']
${CourseMap_progress}                               xpath://h4[normalize-space()='Course Map']/following::div[@role='progressbar']//child::button


${StudentFeeDetails_TotalFees}                      xpath://p[contains(text(),'Total Fees :')]
${StudentFeeDetails_Totaldue}                       xpath://p[contains(text(),'Total due :')]
${StudentFeeDetails_PaidAmount}                     xpath://p[contains(text(),'Paid Amount :')]
${StudentFeeDetails_BalanceDue}                     xpath://p[contains(text(),'Balance Due :')]
${StudentFeeDetails_FeesAmount}                     css:input[aria-label='Fees Amount']
${StudentFeeDetails_StudentFeesData}                xpath://div[contains(text(),'Student Fees Data')]
${StudentFeeDetails_StudentPaymentData}             xpath://div[contains(text(),'Student Payment Data')]

#Student Fees Data Table
${StudentFeesData_no}                               xpath://th[contains(@aria-label,'I.no.:')]
${StudentFeesData_InstalmentLabel}                  xpath://th[contains(@aria-label,'Instalment Label:')]
${StudentFeesData_InstalmentDate}                   xpath://th[contains(@aria-label,'Instalment Date:')]
${StudentFeesData_TermFees}                         xpath://th[contains(@aria-label,'Term Fees')]
${StudentFeesData_ExamFees}                         xpath://th[contains(@aria-label,'Exam Fees')]
${StudentFeesData_LibraryFees}                      xpath://th[contains(@aria-label,'Library Fees')]
${StudentFeesData_TotalFees}                        xpath://th[contains(@aria-label,'Total Fees')]

#Student Payment Data Table
${StudentPaymentData_Date}                          xpath:(//th[contains(@aria-label,'Date:')])[2]
${StudentPaymentData_Status}                        xpath://th[contains(@aria-label,'Status:')]
${StudentPaymentData_Amount}                        xpath://th[contains(@aria-label,'Amount:')]
${StudentPaymentData_Currency}                      xpath://th[contains(@aria-label,'Currency:')]
${StudentPaymentData_ModeofPayment}                 xpath://th[contains(@aria-label,'Mode of Payment:')]
${StudentPaymentData_Remarks}                       xpath://th[contains(@aria-label,'Remarks:')]


#-------------------------------------------------------------------------------------------
#                                  More Settings
#-------------------------------------------------------------------------------------------
${ManagePages}                                      xpath://div[contains(text(),'Manage Pages')]/parent::a
${ManageLessonPlan}                                 xpath://div[contains(text(),'Manage Lesson Plan')]/parent::a
${StudentsCredits&Certificates}                     xpath://div[contains(text(),'Students Credits & Certificates')]/parent::a
${ActivateGradebook}                                xpath://div[contains(text(),'Activate Gradebook')]/parent::a
${Enrolmentsettings}                                xpath://div[contains(text(),'Enrolment settings')]/parent::a
${MentoringSettings}                                xpath://div[contains(text(),'1:1 Mentoring Settings')]/parent::a

#-------------------------------------------------------------------------------------------
#                                  1:1 Mentoring Settings
#-------------------------------------------------------------------------------------------
${MentoringSettings_h}                              xpath:(//div[contains(text(),'1:1 Mentoring Settings')])[1]
${MentoringSettings_Enabled}                        xpath://input[@aria-label='Enabled']

#-------------------------------------------------------------------------------------------
#                                  Manage Fees
#-------------------------------------------------------------------------------------------
${ManageFees_h}                                     xpath://div[contains(text(),'Manage Fees ')]
${ManageFees_Close}                                 xpath://div[contains(text(),'Manage Fees ')]/following-sibling::button
${ManageFees_EnableFeeModule}                       css:input[aria-label='Enable Fee Module']
${ManageFees_Update}                                xpath:(//div[contains(text(),'Update')])[1]/parent::button
${ManageFees_Currency}                              xpath://div[contains(text(),'Currency')]
${ManageFees_Currency_type}                         xpath:((//div[contains(text(),'Update')])[2]/parent::button//preceding::input)[2]
${ManageFees_Currency_Update}                       xpath:(//div[contains(text(),'Update')])[2]/parent::button
${ManageFees_FeeTypes}                              xpath://div[normalize-space()='Fee Types :']


#-------------------------------------------------------------------------------------------
#                                  Assignments Due
#-------------------------------------------------------------------------------------------
${AssignmentsDue_h}                                 xpath://div[contains(text(),'Assignments Due')]

#-------------------------------------------------------------------------------------------
#                                  Add Duration
#-------------------------------------------------------------------------------------------
${AddDuration_Minutes}                              xpath://input[@aria-label='Minutes']


#-------------------------------------------------------------------------------------------
#                                  Concept
#-------------------------------------------------------------------------------------------
${Concept_Leaders_h}                                xpath:(//div[normalize-space()='Leaders'])[1]
${Concept_Leaders_close}                            css:div[class='v-dialog v-dialog--active'] button[type='button']
${Concept_FlashCards}                               xpath://div[normalize-space()='Flash Cards']
${AbortTest_button}                                 xpath://div[contains(text(),'Abort Test')]/parent::button
${AbortTest_button}                                 xpath://h3[contains(text(),'Abort Test')]
${AbortTest_Yes}                                    xpath://div[contains(text(),'Yes')]//parent::button

