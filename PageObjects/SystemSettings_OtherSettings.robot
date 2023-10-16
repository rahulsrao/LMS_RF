*** Settings ***
Documentation   All the page objects and keywords of Other Settings Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${OtherSettings_h}                         xpath://div[@class='v-toolbar__title' and text()='Other Settings']
${OtherSettings_ExpandAll}                 xpath://div[text()='Expand all']/parent::button
${OtherSettings_Academia_h}                xpath://b[contains(text(),'Academia')]
${OtherSettings_Rewards&Games_h}           xpath://b[contains(text(),'Rewards & Games')]
${OtherSettings_Security_h}                xpath://b[contains(text(),'Security')]
${OtherSettings_Integrations_h}            xpath://b[contains(text(),'Integrations')]
${OtherSettings_Miscellaneous_h}           xpath://b[contains(text(),'Miscellaneous')]
${OtherSettings_CollapseAll}               xpath://div[text()='Collapse All']/parent::button

#Academia
${Academia_1:1Mentoring}                   xpath://div[contains(text(),'1:1 Mentoring')]//parent::a
${Academia_BatchGroupSettings}             xpath://div[contains(text(),'Batch Group Settings')]//parent::a
${Academia_CertificatesSettings}           xpath://div[contains(text(),'Certificates Settings')]//parent::a
${Academia_ContentSettings}                xpath://div[contains(text(),'Content Settings')]//parent::a
${Academia_CustomStudentAttributes}        xpath://div[contains(text(),'Custom Student Attributes')]//parent::a
${Academia_ProgressTrackingSettings}       xpath://div[contains(text(),'Progress Tracking Settings')]//parent::a
${Academia_SATSettings}                    xpath://div[contains(text(),'SAT Settings')]
${Academia_WallPostSettings}               xpath://div[contains(text(),'Wall Post Settings')]//parent::a
${Academia_CourseMapSettings}              xpath://div[contains(text(),'Course Map Settings')]//parent::a
${Academia_AchievementApprovalSettings}    xpath://div[contains(text(),'Achievement Approval Settings')]//parent::a

#Rewards & Games
${Rewards&Games_CoinSettings}              xpath://div[contains(text(),'Coin Settings')]//parent::a
${Rewards&Games_GameSettings}              xpath://div[contains(text(),'Game Settings')]//parent::a

#Security
${Security_ConcurrentLoginSettings}        xpath://div[contains(text(),'Concurrent Login Settings')]//parent::a
${Security_RolePermissionsSettings}        xpath://div[contains(text(),'Role Permissions')]//parent::a

#Integrations
${Integrations_BBBMeetingSettings}          xpath://div[contains(text(),'BBB Meeting Settings')]//parent::a
${Integrations_GoogleSettings}              xpath://div[contains(text(),'Google Settings')]//parent::a
${Integrations_MicrosoftTeamSettings}       xpath://div[contains(text(),'Microsoft Team Settings')]//parent::a
${Integrations_ZoomMeetingSettings}         xpath://div[contains(text(),'Zoom Meeting Settings')]//parent::a

#Miscellaneous
${Miscellaneous_BirthdayBanner}              xpath://div[contains(text(),'Birthday Banner')]//parent::a
${Miscellaneous_Enable/DisableStore}         xpath://div[contains(text(),'Enable/Disable Store')]//parent::a
${Miscellaneous_VendorSettings}              xpath://div[contains(text(),'Vendor Settings')]//parent::a
${Miscellaneous_CRMSettings}                 xpath://div[contains(text(),'CRM Settings')]//parent::a
${Miscellaneous_Wheredidyouhearaboutus?}     xpath://div[contains(text(),'Where did you hear about us?')]//parent::a


#1:1 Mentoring Settings
${1:1MentoringSettings_h}                       xpath://div[contains(text(),'1:1 Mentoring Settings')]
${1:1MentoringSettings_Enabled}                 css:input[aria-label='Enabled']
${1:1MentoringSettings_AutocreateMeeting}       xpath://v-text[@class='title']
${1:1MentoringSettings_AutocreateMeeting_Yes}   css:input[aria-label='Yes']
${1:1MentoringSettings_AutocreateMeeting_No}    css:input[aria-label='No']
${1:1MentoringSettings_Zoom}                    css:input[aria-label='Zoom']
${1:1MentoringSettings_Save}                    xpath://div[contains(text(),'Save')]//parent::button

#Batch Group Settings
${BatchGroupSettings_h}                                     xpath://div[contains(text(),'Batch Group Settings')]
${BatchGroupSettings_Enabled}                               css:input[aria-label='Enable']
${BatchGroupAttendancesetting_h}                            xpath://label[contains(text(),'Batch Group Attendance setting')]
${BatchGroupAttendancesetting_Manualattendanceupdate}       css:input[aria-label='Manual attendance update']
${BatchGroupAttendancesetting_AutomaticAttendanceupdate}    css:input[aria-label='Automatic Attendance update']
${BatchGroupAttendancesetting_Save}                         xpath://div[contains(text(),'Save')]//parent::button

#Certificates Settings
${CertificatesSettings_h}                                     xpath://div[contains(text(),'Certificates Settings')]
${CertificatesSettings_SaveChanges}                           xpath://div[contains(text(),'Save Changes')]//parent::button
${CertificatesSettings_Preview}                               xpath://div[contains(text(),'Preview')]//parent::button
${CertificatesSettings_Enabled}                               css:input[aria-label='Enable']
${CertificatesSettings_ShowLogo}                              css:input[aria-label='Show Logo']
${CertificatesSettings_NameoftheUniversity}                   css:input[aria-label='Name of the University*']
${CertificatesSettings_BodyTextforCertificate}                css:input[aria-label='Body Text for Certificate*']
${CertificatesSettings_GoldLabel}                             xpath:(//div[normalize-space()='Gold Label']//ancestor::label//parent::div)[1]//input
${CertificatesSettings_PacificBlue}                           xpath:(//div[normalize-space()='Pacific Blue']//ancestor::label//parent::div)[1]//input
${CertificatesSettings_FloralAbstract}                        xpath:(//div[normalize-space()='Floral Abstract']//ancestor::label//parent::div)[1]//input
${CertificatesSettings_conformation}                          xpath://div[contains(text(),'Settings has been saved.')]
${CertificatesSettings_Validation}                            xpath://div[contains(text(),'This field is required!')]

#Content Settings
${ContentSettings_h}                                          xpath://div[contains(text(),'Content Settings')]
${ContentSettings_EditPublishedPages}                         css:input[aria-label='Edit Published Pages']
${ContentSettings_EditQuestions}                              css:input[aria-label='Edit Questions']
${ContentSettings_EditPublishedVideos}                        css:input[aria-label='Edit Published Videos']
${ContentSettings_DownloadVideos}                             css:input[aria-label='Download Videos']
${ContentSettings_ViewUniversal(Shared)Content}               css:input[aria-label='View Universal (Shared) Content']

#Custom Student Attributes
${CustomizeAttribute1_h}                                       xpath:(//div[@class='v-toolbar__title' and text()='Customize Attribute'])[2]
${CustomizeAttribute1_input}                                   xpath:(//input[@type='text'])[2]
${CustomizeAttribute1_done}                                    xpath:(//i[contains(text(),'done')]//ancestor::button)[2]
${CustomizeAttribute1_close}                                   xpath:(//i[contains(text(),'close')]//ancestor::button)[2]
${CustomizeAttribute2_h}                                       xpath:(//div[@class='v-toolbar__title' and text()='Customize Attribute'])[1]
${CustomizeAttribute2_input}                                   xpath:(//input[@type='text'])[1]
${CustomizeAttribute2_done}                                    xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${CustomizeAttribute2_close}                                   xpath:(//i[contains(text(),'close')]//ancestor::button)[1]
#${CustomizeAttribute1_AddAttribute1_h}                         xpath://div[contains(text(),'Add Student House')]
${CustomizeAttribute1_AddAttribute_input}                     css:input[aria-label='Attribute Name']
${CustomizeAttribute1_AddAttribute_save}                      xpath://div[contains(text(),'Save')]//parent::button
${CustomizeAttribute1_AddAttribute_close}                     xpath://div[contains(text(),'Close')]//parent::button
#${CustomizeAttribute1_EditAttribute1_h}                        xpath://div[contains(text(),'Edit Student House')]
${CustomizeAttribute1_EditAttribute1_AttributeName}            css:input[aria-label='Attribute Name']
${CustomizeAttribute1_EditAttribute1_Save}                     xpath://div[contains(text(),'Save')]//parent::button
${CustomizeAttribute1_EditAttribute1_Close}                    xpath://div[contains(text(),'Close')]//parent::button
${CustomizeAttribute_validation}                               xpath://div[contains(text(),'Attribute Label Changed.')]
${CustomizeAttribute_validation1}                              xpath://div[contains(text(),'Saved.')]

#Progress Tracking Settings
${ProgressTrackingSettings_h}                                  xpath://div[@class='v-toolbar__title' and text()='Progress Tracking Settings']
${EnableProgressTracking}                                      css:input[aria-label='Enable Progress Tracking']
${WeightageFor_th}                                             css:th[aria-label='Weightage For: Not sorted.']
${SelfPaced_th}                                                css:th[aria-label='Self-Paced(%): Not sorted.']
${Others_th}                                                   css:th[aria-label='Others(%): Not sorted.']

${Videos_td}                                                   xpath://tbody/tr[1]/td[1]
${PT_td}                                                       xpath://tbody/tr[2]/td[1]
${SAT_td}                                                      xpath://tbody/tr[3]/td[1]
${Assignment_td}                                               xpath://tbody/tr[4]/td[1]
${Attendence_td}                                               xpath://tbody/tr[5]/td[1]
${Total_td}                                                    xpath://tbody/tr[6]/td[1]

${Videos_Self-Paced(%)}                                        xpath://tbody/tr[1]/td[2]
${PT_Self-Paced(%)}                                            xpath://tbody/tr[2]/td[2]
${SAT_Self-Paced(%)}                                           xpath://tbody/tr[3]/td[2]
${Assignment_Self-Paced(%)}                                    xpath://tbody/tr[4]/td[2]
${Attendence_Self-Paced(%)}                                    xpath://tbody/tr[5]/td[2]
${Total_Self-Paced(%)}                                         xpath://tbody/tr[6]/td[2]

${Videos_Others(%)}                                            xpath://tbody/tr[1]/td[3]
${PT_Others(%)}                                                xpath://tbody/tr[2]/td[3]
${SAT_Others(%)}                                               xpath://tbody/tr[3]/td[3]
${Assignment_Others(%)}                                        xpath://tbody/tr[4]/td[3]
${Attendence_Others(%)}                                        xpath://tbody/tr[5]/td[3]
${Total_Others(%)}                                             xpath://tbody/tr[6]/td[3]

${ScoreForPracticeTest}                                        css:input[aria-label='Score For Practice Test']
${ScoreForSelfAssessmentTest}                                  css:input[aria-label='Score For Self Assessment Test']
${ProgressTrackingSettings_Save}                               xpath://div[contains(text(),'save')]//parent::button

#SAT Settings
${SATSettings_h}                                               xpath://div[contains(text(),'SAT Settings')]
${SATSettings_NoOfQuestions}                                   css:input[aria-label='Number of questions to be conservatively answered correctly to go to the next level of questions']
${SATSettings_Save}                                            xpath://div[contains(text(),'Save')]//parent::button
${SATSettings_validation}                                      xpath://div[contains(text(),'Number should be positive and in between 1-10.')]
${SATSettings_Confirmation}                                    xpath://div[contains(text(),'Updated')]

#Wall Settings
${WallSettings_h}                                               xpath://div[contains(text(),'Wall Settings')]
${WallSettings_Save}                                            xpath://div[contains(text(),'Save')]//parent::button
${WallSettings_CONTENT}                                         css:input[aria-label='CONTENT']
${WallSettings_COLLECTIONS}                                     css:input[aria-label='COLLECTIONS']
${WallSettings_LESSONPLANS}                                     css:input[aria-label='LESSON PLANS']
${WallSettings_ASSIGNMENTS}                                     css:input[aria-label='ASSIGNMENTS']
${WallSettings_TESTS}                                           css:input[aria-label='TESTS']
${WallSettings_STUDENTPROJECTS}                                 css:input[aria-label='STUDENT PROJECTS']
${WallSettings_DISCUSSIONS}                                     css:input[aria-label='DISCUSSIONS']
${WallSettings_VIDEOS}                                          css:input[aria-label='VIDEOS']
${WallSettings_BADGES}                                          css:input[aria-label='BADGES']
${WallSettings_ZOOM}                                            css:input[aria-label='ZOOM']
${WallSettings_BBB}                                             css:input[aria-label='BBB']
${WallSettings_MICROSOFTTEAM}                                   css:input[aria-label='MICROSOFT TEAM']
${WallSettings_BIRTHDAYGREETINGS}                               css:input[aria-label='BIRTHDAY GREETINGS']


#Course Map Settings
${CourseMapSettings_h}                                          xpath://div[contains(text(),'Course Map Settings')]
${CourseMapSettings_EnableCouseMap}                             css:input[aria-label='Enable Course Map']
${CourseMapSettings_EnableModuleLock}                           css:input[aria-label='Enable Module Lock']
${CourseMapSettings_EnableCertificateGeneration}                css:input[aria-label='Enable Certificate Generation']
${CourseMapDefaults_PT}                                         css:input[aria-label='Practice Test (PT)*']
${CourseMapDefaults_NT}                                         css:input[aria-label='Normal Test (NT)*']
${CourseMapDefaults_SAT}                                        css:input[aria-label='Self Assessment Test*']
${CourseMapDefaults_DiscussionForum}                            css:input[aria-label='Discussion Forum*']
${CourseMapSettings_Save}                                       xpath://div[contains(text(),'Save')]//parent::button
${CourseMapSettings_validation}                                 xpath:(//div[contains(text(),'This field is required!')])[1]

#Achievement Approval Settings
${AchievementApprovalSettings_h}                                xpath://div[contains(text(),'Achievement Approval Settings')]
${AchievementApprovalSettings_ApprovalRequired}                 css:input[aria-label='Approval Required']
${AchievementApprovalSettings_Update}                           css:button[title='Update']

#:::::::::::::::::::::::::::::::::Rewards & Games :::::::::::::::::::::::::
#Coin Settings
${CoinSettings_h}                                               xpath://div[contains(text(),'Coin Settings')]
${CoinSettings_Enable}                                          css:input[aria-label='Enable']
${CoinSettings_ModuleLeaderCoins}                               css:input[aria-label='Module Leader - Coins']
${CoinSettings_ConceptLeaderCoins}                              css:input[aria-label='Concept Leader - Coins']
${CoinSettings_TestTopperCoins}                                 css:input[aria-label='Test Topper - Coins']
${CoinSettings_ReferralsCoins}                                  css:input[aria-label='Referrals - Coins']
${CoinSettings_WinningaGameCoins}                               css:input[aria-label='Winning a Game - Coins']
${CoinSettings_Videowatchedandquizanswered}                     css:input[aria-label='Video watched and quiz answered - Coins']
${CoinSettings_SATPl}                                           css:input[aria-label='SAT - PL (proficiency level) Increased - Coins']
${CoinSettings_Save}                                            xpath://div[contains(text(),'Save')]//parent::button
${CoinSettings_validation}                                      xpath://div[contains(text(),'Minimum amount should be more than 0')]

#Game Settings
${GameSettings_h}                                               xpath://div[contains(text(),'Game Settings')]
${GameSettings_Enable}                                          css:input[aria-label='Enable']
${GameSettings_TimeForEachQuestion}                             css:input[type='number']
${GameSettings_validation}                                      xpath://div[contains(text(),'Minimum time should be 10 seconds')]
${GameSettings_Save}                                            xpath://div[contains(text(),'Save')]//parent::button


#Security

#Concurrent Login Settings
${ConcurrentLoginSettings_h}                                    xpath://div[contains(text(),'Concurrent Login Settings')]
${ConcurrentLoginSettings_nos}                                  css:input[aria-label='How many numbers of login you would like to allow per user?']
${ConcurrentLoginSettings_validation}                           xpath://div[contains(text(),'Only Positive Integer.')]
${ConcurrentLoginSettings_Save}                                 xpath://div[contains(text(),'Save')]//parent::button
${ConcurrentLoginSettings_validation1}                          xpath://div[contains(text(),'Number should be positive.')]

#Role Permissions
${RolePermissions_h}                                            xpath://div[contains(text(),'Role Permissions')]
${RolePermissions_Student_h}                                    xpath://b[contains(text(),'Student')]
${RolePermissions_Student_Permissions}                          xpath://b[contains(text(),'Student')]//following-sibling::button
${RolePermissions_Teacher_h}                                    xpath://b[text()='Teacher']
${RolePermissions_Teacher_Permissions}                          xpath://b[text()='Teacher']//following-sibling::button
${RolePermissions_AdminTeacher_h}                               xpath://b[contains(text(),'Admin-Teacher')]
${RolePermissions_AdminTeacher_Permissions}                     xpath://b[contains(text(),'Admin-Teacher')]//following-sibling::button
${RolePermissions_Parent_h}                                     xpath://b[contains(text(),'Parent')]
${RolePermissions_Parent_Permissions}                           xpath://b[contains(text(),'Parent')]//following-sibling::button
${RolePermissions_Admin_h}                                      xpath://b[(text()='Admin')]
${RolePermissions_Admin_Permissions}                            xpath://b[text()='Admin']//following-sibling::button
${RolePermissions_CreateNewRole}                                xpath://div[contains(text(),'Create New Role')]//parent::button
#Role: Student
${RoleStudent_h}                                                xpath://div[contains(text(),'Role: Student')]
${RoleStudent_Wall}                                             xpath:(//input[@type='checkbox'])[3]
${RoleStudent_CreateWallposts}                                  xpath:(//input[@type='checkbox'])[1]
${RoleStudent_Canuploadmediafilesinnormalwallposts}             xpath:(//input[@type='checkbox'])[2]
${RoleStudent_Attendance}                                       xpath:(//input[@type='checkbox'])[4]
${RoleStudent_Content}                                          xpath:(//input[@type='checkbox'])[8]
${RoleStudent_CreateContent}                                    xpath:(//input[@type='checkbox'])[5]
${RoleStudent_Canuploadvideos}                                  xpath:(//input[@type='checkbox'])[6]
${RoleStudent_CanPublish}                                       xpath:(//input[@type='checkbox'])[7]
${RoleStudent_Collections}                                      xpath:(//input[@type='checkbox'])[10]
${RoleStudent_CreateCollectionsforContent}                      xpath:(//input[@type='checkbox'])[9]
${RoleStudent_GradeBook}                                        xpath:(//input[@type='checkbox'])[11]
${RoleStudent_Assignments}                                      xpath:(//input[@type='checkbox'])[14]
${RoleStudent_CreateAssignment}                                 xpath:(//input[@type='checkbox'])[12]
${RoleStudent_Assignments_CanPublish}                           xpath:(//input[@type='checkbox'])[13]
${RoleStudent_Tests}                                            xpath:(//input[@type='checkbox'])[17]
${RoleStudent_CreateTest}                                       xpath:(//input[@type='checkbox'])[15]
${RoleStudent_Tests_CanPublish}                                 xpath:(//input[@type='checkbox'])[16]
${RoleStudent_QuestionBank}                                     xpath:(//input[@type='checkbox'])[19]
${RoleStudent_AddQuestionstoQuestionBank}                       xpath:(//input[@type='checkbox'])[18]
${RoleStudent_DiscussionForums}                                 xpath:(//input[@type='checkbox'])[21]
${RoleStudent_CreateDiscussion}                                 xpath:(//input[@type='checkbox'])[20]
${RoleStudent_StudentProjects}                                  xpath:(//input[@type='checkbox'])[23]
${RoleStudent_CreateProjects}                                   xpath:(//input[@type='checkbox'])[22]
${RoleStudent_Inbox}                                            xpath:(//input[@type='checkbox'])[24]
${RoleStudent_Calendar}                                         xpath:(//input[@type='checkbox'])[25]
${RoleStudent_ToDo}                                             xpath:(//input[@type='checkbox'])[26]
${RoleStudent_Search}                                           xpath:(//input[@type='checkbox'])[27]
${RoleStudent_HomeDashboard}                                    xpath:(//input[@type='checkbox'])[28]
${RoleStudent_Video}                                            xpath:(//input[@type='checkbox'])[31]
${RoleStudent_CreateVideo}                                      xpath:(//input[@type='checkbox'])[29]
${RoleStudent_Video_CanPublish}                                 xpath:(//input[@type='checkbox'])[30]
${RoleStudent_Submit}                                           xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${RoleStudent_close}                                            xpath:(//i[contains(text(),'close')]//ancestor::button)[1]

#Role: Teacher
${RoleTeacher_h}                                                xpath://div[contains(text(),'Role: Teacher')]
${RoleTeacher_Wall}                                             xpath:(//input[@type='checkbox'])[5]
${RoleTeacher_CreateWallposts}                                  xpath:(//input[@type='checkbox'])[1]
${RoleTeacher_Canuploadmediafilesinnormalwallposts}             xpath:(//input[@type='checkbox'])[2]
${RoleTeacher_CreateEmergencyWallPost}                          xpath:(//input[@type='checkbox'])[3]
${RoleTeacher_CreateScheduledWallPost}                          xpath:(//input[@type='checkbox'])[4]
${RoleTeacher_Attendance}                                       xpath:(//input[@type='checkbox'])[7]
${RoleTeacher_CanTakeAttendance}                                xpath:(//input[@type='checkbox'])[6]
${RoleTeacher_Content}                                          xpath:(//input[@type='checkbox'])[11]
${RoleTeacher_CreateContent}                                    xpath:(//input[@type='checkbox'])[8]
${RoleTeacher_Canuploadvideos}                                  xpath:(//input[@type='checkbox'])[9]
${RoleTeacher_Content_CanPublish}                               xpath:(//input[@type='checkbox'])[10]
${RoleTeacher_Collections}                                      xpath:(//input[@type='checkbox'])[13]
${RoleTeacher_CreateCollectionsforContent}                      xpath:(//input[@type='checkbox'])[12]
${RoleTeacher_GradeBook}                                        xpath:(//input[@type='checkbox'])[14]
${RoleTeacher_Assignments}                                      xpath:(//input[@type='checkbox'])[18]
${RoleTeacher_CreateAssignment}                                 xpath:(//input[@type='checkbox'])[15]
${RoleTeacher_CreateGradableAssignment}                         xpath:(//input[@type='checkbox'])[11]
${RoleTeacher_Assignments_CanPublish}                           xpath:(//input[@type='checkbox'])[11]
${RoleTeacher_Tests}                                            xpath:(//input[@type='checkbox'])[22]
${RoleTeacher_CreateTest}                                       xpath:(//input[@type='checkbox'])[19]
${RoleTeacher_CreateGradableTest}                               xpath:(//input[@type='checkbox'])[20]
${RoleTeacher_Tests_CanPublish}                                 xpath:(//input[@type='checkbox'])[21]
${RoleTeacher_QuestionBank}                                     xpath:(//input[@type='checkbox'])[24]
${RoleTeacher_AddQuestionstoQuestionBank}                       xpath:(//input[@type='checkbox'])[23]
${RoleTeacher_DiscussionForums}                                 xpath:(//input[@type='checkbox'])[28]
${RoleTeacher_CreateDiscussion}                                 xpath:(//input[@type='checkbox'])[25]
${RoleTeacher_CreateGradableDiscussion}                         xpath:(//input[@type='checkbox'])[26]
${RoleTeacher_CreatescheduledDiscussion}                        xpath:(//input[@type='checkbox'])[27]
${RoleTeacher_StudentProjects}                                  xpath:(//input[@type='checkbox'])[30]
${RoleTeacher_StudentProjects_CreateProjects}                   xpath:(//input[@type='checkbox'])[29]
${RoleTeacher_LessonPlans}                                      xpath:(//input[@type='checkbox'])[32]
${RoleTeacher_CreateLessonPlan}                                 xpath:(//input[@type='checkbox'])[31]
${RoleTeacher_Inbox}                                            xpath:(//input[@type='checkbox'])[33]
${RoleTeacher_Calendar}                                         xpath:(//input[@type='checkbox'])[34]
${RoleTeacher_ToDo}                                             xpath:(//input[@type='checkbox'])[35]
${RoleTeacher_Search}                                           xpath:(//input[@type='checkbox'])[36]
${RoleTeacher_HomeDashboard}                                    xpath:(//input[@type='checkbox'])[37]
${RoleTeacher_SystemSettings}                                   xpath:(//input[@type='checkbox'])[53]
${RoleTeacher_CreateStudentsandParents}                         xpath:(//input[@type='checkbox'])[38]
${RoleTeacher_CreateTeacher}                                    xpath:(//input[@type='checkbox'])[39]
${RoleTeacher_CreateAdmin}                                      xpath:(//input[@type='checkbox'])[40]
${RoleTeacher_CreateClassGrouping}                              xpath:(//input[@type='checkbox'])[41]
${RoleTeacher_CreateClass}                                      xpath:(//input[@type='checkbox'])[42]
${RoleTeacher_CreateCourse}                                     xpath:(//input[@type='checkbox'])[43]
${RoleTeacher_Deleteotherswallposts}                            xpath:(//input[@type='checkbox'])[44]
${RoleTeacher_Deleteotherscontents}                             xpath:(//input[@type='checkbox'])[45]
${RoleTeacher_Deleteotherscollection}                           xpath:(//input[@type='checkbox'])[46]
${RoleTeacher_Deleteothersassignments}                          xpath:(//input[@type='checkbox'])[47]
${RoleTeacher_Deleteotherscollection}                           xpath:(//input[@type='checkbox'])[48]
${RoleTeacher_DeleteothersLessonPlan}                           xpath:(//input[@type='checkbox'])[49]
${RoleTeacher_DeleteothersStudentProject}                       xpath:(//input[@type='checkbox'])[50]
${RoleTeacher_Deleteotherstests}                                xpath:(//input[@type='checkbox'])[51]
${RoleTeacher_DeleteothersDiscussion}                           xpath:(//input[@type='checkbox'])[52]
${RoleTeacher_DeleteQuestionsfromQuestionBank}                  xpath:(//input[@type='checkbox'])[53]
${RoleTeacher_Video}                                            xpath:(//input[@type='checkbox'])[56]
${RoleTeacher_CreateVideo}                                      xpath:(//input[@type='checkbox'])[54]
${RoleTeacher_Video_CanPublish}                                 xpath:(//input[@type='checkbox'])[55]
${RoleTeacher_Submit}                                           xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${RoleTeacher_close}                                            xpath:(//i[contains(text(),'close')]//ancestor::button)[1]

#Role: Admin-Teacher
${RoleAdminTeacher_h}                                                xpath://div[contains(text(),'Role: Admin-Teacher')]
${RoleAdminTeacher_Wall}                                             xpath:(//input[@type='checkbox'])[5]
${RoleAdminTeacher_CreateWallposts}                                  xpath:(//input[@type='checkbox'])[1]
${RoleAdminTeacher_Canuploadmediafilesinnormalwallposts}             xpath:(//input[@type='checkbox'])[2]
${RoleAdminTeacher_CreateEmergencyWallPost}                          xpath:(//input[@type='checkbox'])[3]
${RoleAdminTeacher_CreateScheduledWallPost}                          xpath:(//input[@type='checkbox'])[4]
${RoleAdminTeacher_Attendance}                                       xpath:(//input[@type='checkbox'])[7]
${RoleAdminTeacher_CanTakeAttendance}                                xpath:(//input[@type='checkbox'])[6]
${RoleAdminTeacher_Content}                                          xpath:(//input[@type='checkbox'])[11]
${RoleAdminTeacher_CreateContent}                                    xpath:(//input[@type='checkbox'])[8]
${RoleAdminTeacher_Canuploadvideos}                                  xpath:(//input[@type='checkbox'])[9]
${RoleAdminTeacher_Content_CanPublish}                               xpath:(//input[@type='checkbox'])[10]
${RoleAdminTeacher_Collections}                                      xpath:(//input[@type='checkbox'])[13]
${RoleAdminTeacher_CreateCollectionsforContent}                      xpath:(//input[@type='checkbox'])[12]
${RoleAdminTeacher_GradeBook}                                        xpath:(//input[@type='checkbox'])[14]
${RoleAdminTeacher_Assignments}                                      xpath:(//input[@type='checkbox'])[18]
${RoleAdminTeacher_CreateAssignment}                                 xpath:(//input[@type='checkbox'])[15]
${RoleAdminTeacher_CreateGradableAssignment}                         xpath:(//input[@type='checkbox'])[11]
${RoleAdminTeacher_Assignments_CanPublish}                           xpath:(//input[@type='checkbox'])[11]
${RoleAdminTeacher_Tests}                                            xpath:(//input[@type='checkbox'])[22]
${RoleAdminTeacher_CreateTest}                                       xpath:(//input[@type='checkbox'])[19]
${RoleAdminTeacher_CreateGradableTest}                               xpath:(//input[@type='checkbox'])[20]
${RoleAdminTeacher_Tests_CanPublish}                                 xpath:(//input[@type='checkbox'])[21]
${RoleAdminTeacher_QuestionBank}                                     xpath:(//input[@type='checkbox'])[24]
${RoleAdminTeacher_AddQuestionstoQuestionBank}                       xpath:(//input[@type='checkbox'])[23]
${RoleAdminTeacher_DiscussionForums}                                 xpath:(//input[@type='checkbox'])[28]
${RoleAdminTeacher_CreateDiscussion}                                 xpath:(//input[@type='checkbox'])[25]
${RoleAdminTeacher_CreateGradableDiscussion}                         xpath:(//input[@type='checkbox'])[26]
${RoleAdminTeacher_CreatescheduledDiscussion}                        xpath:(//input[@type='checkbox'])[27]
${RoleAdminTeacher_StudentProjects}                                  xpath:(//input[@type='checkbox'])[30]
${RoleAdminTeacher_StudentProjects_CreateProjects}                   xpath:(//input[@type='checkbox'])[29]
${RoleAdminTeacher_LessonPlans}                                      xpath:(//input[@type='checkbox'])[32]
${RoleAdminTeacher_CreateLessonPlan}                                 xpath:(//input[@type='checkbox'])[31]
${RoleAdminTeacher_Inbox}                                            xpath:(//input[@type='checkbox'])[33]
${RoleAdminTeacher_Calendar}                                         xpath:(//input[@type='checkbox'])[34]
${RoleAdminTeacher_ToDo}                                             xpath:(//input[@type='checkbox'])[35]
${RoleAdminTeacher_Search}                                           xpath:(//input[@type='checkbox'])[36]
${RoleAdminTeacher_HomeDashboard}                                    xpath:(//input[@type='checkbox'])[37]
${RoleAdminTeacher_SystemSettings}                                   xpath:(//input[@type='checkbox'])[54]
${RoleAdminTeacher_CreateStudentsandParents}                         xpath:(//input[@type='checkbox'])[38]
${RoleAdminTeacher_CreateTeacher}                                    xpath:(//input[@type='checkbox'])[39]
${RoleAdminTeacher_CreateAdmin}                                      xpath:(//input[@type='checkbox'])[40]
${RoleAdminTeacher_CreateClassGrouping}                              xpath:(//input[@type='checkbox'])[41]
${RoleAdminTeacher_CreateClass}                                      xpath:(//input[@type='checkbox'])[42]
${RoleAdminTeacher_CreateCourse}                                     xpath:(//input[@type='checkbox'])[43]
${RoleAdminTeacher_ChangePermission}                                 xpath:(//input[@type='checkbox'])[44]
${RoleAdminTeacher_Deleteotherswallposts}                            xpath:(//input[@type='checkbox'])[45]
${RoleAdminTeacher_Deleteotherscontents}                             xpath:(//input[@type='checkbox'])[46]
${RoleAdminTeacher_Deleteotherscollection}                           xpath:(//input[@type='checkbox'])[47]
${RoleAdminTeacher_Deleteothersassignments}                          xpath:(//input[@type='checkbox'])[48]
${RoleAdminTeacher_Deleteotherscollection}                           xpath:(//input[@type='checkbox'])[49]
${RoleAdminTeacher_DeleteothersLessonPlan}                           xpath:(//input[@type='checkbox'])[50]
${RoleAdminTeacher_DeleteothersStudentProject}                       xpath:(//input[@type='checkbox'])[51]
${RoleAdminTeacher_Deleteotherstests}                                xpath:(//input[@type='checkbox'])[52]
${RoleAdminTeacher_DeleteothersDiscussion}                           xpath:(//input[@type='checkbox'])[53]
${RoleAdminTeacher_DeleteQuestionsfromQuestionBank}                  xpath:(//input[@type='checkbox'])[54]
${RoleAdminTeacher_Video}                                            xpath:(//input[@type='checkbox'])[57]
${RoleAdminTeacher_CreateVideo}                                      xpath:(//input[@type='checkbox'])[55]
${RoleAdminTeacher_Video_CanPublish}                                 xpath:(//input[@type='checkbox'])[56]
${RoleAdminTeacher_Submit}                                           xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${RoleAdminTeacher_close}                                            xpath:(//i[contains(text(),'close')]//ancestor::button)[1]

#Role: Admin
${RoleAdmin_h}                                                xpath://div[contains(text(),'Role: Admin')]
${RoleAdmin_Wall}                                             xpath:(//input[@type='checkbox'])[5]
${RoleAdmin_CreateWallposts}                                  xpath:(//input[@type='checkbox'])[1]
${RoleAdmin_Canuploadmediafilesinnormalwallposts}             xpath:(//input[@type='checkbox'])[2]
${RoleAdmin_CreateEmergencyWallPost}                          xpath:(//input[@type='checkbox'])[3]
${RoleAdmin_CreateScheduledWallPost}                          xpath:(//input[@type='checkbox'])[4]
${RoleAdmin_Attendance}                                       xpath:(//input[@type='checkbox'])[7]
${RoleAdmin_CanTakeAttendance}                                xpath:(//input[@type='checkbox'])[6]
${RoleAdmin_Content}                                          xpath:(//input[@type='checkbox'])[11]
${RoleAdmin_CreateContent}                                    xpath:(//input[@type='checkbox'])[8]
${RoleAdmin_Canuploadvideos}                                  xpath:(//input[@type='checkbox'])[9]
${RoleAdmin_Content_CanPublish}                               xpath:(//input[@type='checkbox'])[10]
${RoleAdmin_Collections}                                      xpath:(//input[@type='checkbox'])[13]
${RoleAdmin_CreateCollectionsforContent}                      xpath:(//input[@type='checkbox'])[12]
${RoleAdmin_GradeBook}                                        xpath:(//input[@type='checkbox'])[14]
${RoleAdmin_Assignments}                                      xpath:(//input[@type='checkbox'])[17]
${RoleAdmin_CreateAssignment}                                 xpath:(//input[@type='checkbox'])[15]
${RoleAdmin_Assignments_CanPublish}                           xpath:(//input[@type='checkbox'])[16]
${RoleAdmin_Tests}                                            xpath:(//input[@type='checkbox'])[20]
${RoleAdmin_CreateTest}                                       xpath:(//input[@type='checkbox'])[18]
${RoleAdmin_Tests_CanPublish}                                 xpath:(//input[@type='checkbox'])[19]
${RoleAdmin_QuestionBank}                                     xpath:(//input[@type='checkbox'])[22]
${RoleAdmin_AddQuestionstoQuestionBank}                       xpath:(//input[@type='checkbox'])[21]
${RoleAdmin_DiscussionForums}                                 xpath:(//input[@type='checkbox'])[23]
${RoleAdmin_StudentProjects}                                  xpath:(//input[@type='checkbox'])[24]
${RoleAdmin_LessonPlans}                                      xpath:(//input[@type='checkbox'])[26]
${RoleAdmin_CreateLessonPlan}                                 xpath:(//input[@type='checkbox'])[25]
${RoleAdmin_Inbox}                                            xpath:(//input[@type='checkbox'])[27]
${RoleAdmin_Calendar}                                         xpath:(//input[@type='checkbox'])[28]
${RoleAdmin_ToDo}                                             xpath:(//input[@type='checkbox'])[29]
${RoleAdmin_Search}                                           xpath:(//input[@type='checkbox'])[30]
${RoleAdmin_HomeDashboard}                                    xpath:(//input[@type='checkbox'])[31]
${RoleAdmin_SystemSettings}                                   xpath:(//input[@type='checkbox'])[48]
${RoleAdmin_CreateStudentsandParents}                         xpath:(//input[@type='checkbox'])[32]
${RoleAdmin_CreateTeacher}                                    xpath:(//input[@type='checkbox'])[33]
${RoleAdmin_CreateAdmin}                                      xpath:(//input[@type='checkbox'])[34]
${RoleAdmin_CreateClassGrouping}                              xpath:(//input[@type='checkbox'])[35]
${RoleAdmin_CreateClass}                                      xpath:(//input[@type='checkbox'])[36]
${RoleAdmin_CreateCourse}                                     xpath:(//input[@type='checkbox'])[37]
${RoleAdmin_ChangePermission}                                 xpath:(//input[@type='checkbox'])[38]
${RoleAdmin_Deleteotherswallposts}                            xpath:(//input[@type='checkbox'])[39]
${RoleAdmin_Deleteotherscontents}                             xpath:(//input[@type='checkbox'])[40]
${RoleAdmin_Deleteotherscollection}                           xpath:(//input[@type='checkbox'])[41]
${RoleAdmin_Deleteothersassignments}                          xpath:(//input[@type='checkbox'])[42]
${RoleAdmin_DeleteothersLessonPlan}                           xpath:(//input[@type='checkbox'])[43]
${RoleAdmin_DeleteothersStudentProject}                       xpath:(//input[@type='checkbox'])[44]
${RoleAdmin_Deleteotherstests}                                xpath:(//input[@type='checkbox'])[45]
${RoleAdmin_DeleteothersDiscussion}                           xpath:(//input[@type='checkbox'])[46]
${RoleAdmin_DeleteQuestionsfromQuestionBank}                  xpath:(//input[@type='checkbox'])[47]
${RoleAdmin_Video}                                            xpath:(//input[@type='checkbox'])[51]
${RoleAdmin_CreateVideo}                                      xpath:(//input[@type='checkbox'])[49]
${RoleAdmin_Video_CanPublish}                                 xpath:(//input[@type='checkbox'])[50]
${RoleAdmin_Submit}                                           xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${RoleAdmin_close}                                            xpath:(//i[contains(text(),'close')]//ancestor::button)[1]

#Role: Parent
${RoleParent_h}                                                xpath://div[contains(text(),'Role: Parent')]
${RoleParent_Wall}                                             xpath:(//input[@type='checkbox'])[1]
${RoleParent_Content}                                          xpath:(//input[@type='checkbox'])[2]
${RoleParent_Collections}                                      xpath:(//input[@type='checkbox'])[3]
${RoleParent_GradeBook}                                        xpath:(//input[@type='checkbox'])[4]
${RoleParent_Assignments}                                      xpath:(//input[@type='checkbox'])[5]
${RoleParent_Tests}                                            xpath:(//input[@type='checkbox'])[6]
${RoleParent_QuestionBank}                                     xpath:(//input[@type='checkbox'])[7]
${RoleParent_DiscussionForums}                                 xpath:(//input[@type='checkbox'])[8]
${RoleParent_StudentProjects}                                  xpath:(//input[@type='checkbox'])[9]
${RoleParent_Inbox}                                            xpath:(//input[@type='checkbox'])[10]
${RoleParent_Calendar}                                         xpath:(//input[@type='checkbox'])[11]
${RoleParent_ToDo}                                             xpath:(//input[@type='checkbox'])[12]
${RoleParent_Search}                                           xpath:(//input[@type='checkbox'])[13]
${RoleParent_HomeDashboard}                                    xpath:(//input[@type='checkbox'])[14]
${RoleParent_Video}                                            xpath:(//input[@type='checkbox'])[15]
${RoleParent_Submit}                                           xpath:(//i[contains(text(),'done')]//ancestor::button)[1]
${RoleParent_close}                                            xpath:(//i[contains(text(),'close')]//ancestor::button)[1]

#Create New Role
${NewRole_h}                                                 xpath://h3[contains(text(),'New Role')]
${NewRole_DisplayName}                                       css:input[aria-label='Display Name']
${NewRole_Usertype}                                          css:input[aria-label='User type']
${NewRole_Save}                                              xpath:(//i[contains(text(),'done')]//ancestor::button)[2]

#::::::::::::::::::::::::::::::::: Integrations  :::::::::::::::::::::::::
#BBB Meeting Settings

${BBBMeetingSettings_h}                                      xpath://div[contains(text(),'BBB Meeting Settings')]
${BBBMeetingSettings_Enable}                                 css:input[aria-label='Enable']
${BBBMeetingSettings_CreateaTickettoEnable}                  css:button[title='Create a Ticket to Enable Feature.']

#Google Settings
${GoogleSettings_h}                                         xpath://div[contains(text(),'Google Settings')]
${GoogleSettings_Enable}                                    css:input[aria-label='Enable']
${GoogleSettings_Save}                                      xpath://div[contains(text(),'Save')]/parent::button
${GoogleAccountDetails_h}                                   xpath://div[contains(text(),'Google Account Details')]
${GoogleAccountDetails_code}                                xpath:(//input[@aria-label='Code*'])[1]
${GoogleSettings_Clientid}                                  css:input[aria-label='Client ID*']
${GoogleSettings_ClientSecret}                              css:input[aria-label='Client Secret*']
${GoogleSettings_ClientEmailID}                             css:input[aria-label='Email ID*']
${GoogleAccount_Enable}                                     xpath:(//input[@aria-label='Enable'])[2]
${GoogleAccount_SendMailNotificationForCalender}            css:input[aria-label='Send Mail Notification For Calender']
${GoogleAccount_code}                                       xpath:(//input[@aria-label='Code*'])[2]
${GoogleAccount_SendMailNotificationForWallPost}            css:input[aria-label='Send Mail Notification For Wall Post']
${SendMailNotificationForWallPost_CONTENT}                  css:input[aria-label='CONTENT']
${SendMailNotificationForWallPost_COLLECTIONS}              css:input[aria-label='COLLECTIONS']
${SendMailNotificationForWallPost_LESSONPLANS}              css:input[aria-label='LESSON PLANS']
${SendMailNotificationForWallPost_ASSIGNMENTS}              css:input[aria-label='ASSIGNMENTS']
${SendMailNotificationForWallPost_TESTS}                    css:input[aria-label='TESTS']
${SendMailNotificationForWallPost_STUDENTPROJECTS}          css:input[aria-label='STUDENT PROJECTS']
${SendMailNotificationForWallPost_DISCUSSIONS}              css:input[aria-label='DISCUSSIONS']
${SendMailNotificationForWallPost_VIDEOS}                   css:input[aria-label='VIDEOS']
${SendMailNotificationForWallPost_ZOOM}                     css:input[aria-label='ZOOM']
${SendMailNotificationForWallPost_MICROSOFTTEAM}            css:input[aria-label='MICROSOFT TEAM']
${SendMailNotificationForWallPost_BIRTHDAYGREETINGS}        css:input[aria-label='BIRTHDAY GREETINGS']
${SendMailNotificationForWallPost_Mentoring}                css:input[aria-label='Mentoring']
${GoogleSettings_note}                                      xpath://b[contains(text(),'*checked will send auto wall post mail to concerne')]
${GoogleSettings_Save}                                      xpath://div[contains(text(),'Save')]//ancestor::button
${GoogleSettings_Info}                                      xpath://i[contains(text(),'info')]//ancestor::button

#Microsoft Teams Meeting Settings
${MicrosoftTeamsMeetingSettings_h}                          xpath://div[contains(text(),'Microsoft Teams Meeting Settings')]
${MicrosoftTeamsMeetingSettings_Enable}                     css:input[aria-label='Enable']
${MicrosoftTeamAccountDetails_ClientID}                     css:input[aria-label='Client ID*']
${MicrosoftTeamAccountDetails_ClientSecret}                 css:input[aria-label='Client Secret*']
${MicrosoftTeamAccountDetails_TenantID}                     css:input[aria-label='Tenant ID*']
${MicrosoftTeamAccountDetails_EmailID}                      css:input[aria-label='Email ID*']
${MicrosoftTeamAccountDetails_Password}                     css:input[aria-label='Password*']
${MicrosoftTeamsMeetingSettings_Save}                       xpath://div[contains(text(),'Save')]//ancestor::button

#Zoom Meeting Settings
${ZoomMeetingSettings_h}                                    xpath://div[contains(text(),'Zoom Meeting Settings')]
${ZoomMeetingSettings_Enable}                               css:input[aria-label='Enable']
${ZoomMeetingSettings_ShowParticipantsList}                 css:input[aria-label='Show Participants List']
${ZoomMeetingSettings_JoinBeforeHost}                       css:input[aria-label='Join Before Host']
${ZoomMeetingSettings_BusinessAccount}                      css:input[aria-label='Business Account']
${ZoomMeetingSettings_Registrationisrequired}               css:input[aria-label='Registration is required']
${ZoomMeetingSettings_Registrationisnotrequired}            css:input[aria-label='Registration is not required']
${ZoomMeetingSettings_AddZoomAccount}                       xpath://div[contains(text(),'Add Zoom Account')]/parent::button
${ZoomMeetingSettings_AddZoomAccount_h}                     xpath:(//div[contains(text(),'Add Zoom Account')])[1]
${ZoomMeetingSettings_AddZoomAccount_ZoomAccount}           css:input[aria-label='Zoom Account']
${ZoomMeetingSettings_AddZoomAccount_Close}                 xpath://div[normalize-space()='Close']/parent::button
${ZoomMeetingSettings_AddZoomAccount_Save}                  xpath:(//div[normalize-space()='Save']/parent::button)[1]
${ZoomMeetingSettings_Save}                                 xpath:(//div[normalize-space()='Save']/parent::button)[2]

#::::::::::::::::::::::::::::::: Miscellaneous    ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#Birthday Banner Settings
${BirthdayBannerSettings_h}                                 xpath://div[contains(text(),'Birthday Banner Settings')]
${BirthdayBannerSettings_BirthDayMessage}                   css:input[aria-label='Birth Day Message*']
${BirthdayBannerSettings_BirthDayBanner1}                   xpath:input[type='radio'][value='1']
${BirthdayBannerSettings_BirthDayBanner2}                   xpath:input[type='radio'][value='2']
${BirthdayBannerSettings_BirthDayBanner3}                   xpath:input[type='radio'][value='3']
${BirthdayBannerSettings_Uploadcustombanner}                xpath://div[contains(text(),'Upload custom banner')]/parent::button
${BirthdayBannerSettings_Info}                              xpath://i[contains(text(),'info')]//ancestor::button
${BirthdayBannerSettings_SaveChanges}                       xpath://div[contains(text(),'Save Changes')]//parent::button

#Enable/Disable Store
${Enable/DisableStore_h}                                    xpath://div[contains(text(),'Enable/Disable Store')]
${Enable/DisableStore_enable}                               css:input[aria-label='Enable']
${Enable/DisableStore_disable}                              css:input[aria-label='Disable']

#Vendor Settings
${VendorSettings_h}                                    xpath://div[contains(text(),'Vendor Settings')]
${VendorSettings_becomeVendor}                         css:input[aria-label='become Vendor']

#Where did you hear about us?
${Wheredidyouhearaboutus?_h}                          xpath://div[normalize-space()='Where did you hear about us?']
${Wheredidyouhearaboutus?_Addoption}                  xpath://div[normalize-space()='Add option']//parent::button
${Wheredidyouhearaboutus?_Addoption_h}                xpath:(//div[contains(text(),'Add Option')])[1]
${Wheredidyouhearaboutus?_Addoption_Enteranoption}    css:input[placeholder='Enter an option']
${Wheredidyouhearaboutus?_Addoption_Addoption}        xpath:(//div[contains(text(),'Add Option')])[2]/parent::button
${Wheredidyouhearaboutus?_Google}                     xpath://div[normalize-space()='Google']
${Wheredidyouhearaboutus?_Google_delete}              xpath://div[normalize-space()='Google']// following-sibling::div/button
${Wheredidyouhearaboutus?_Phone}                      xpath://div[normalize-space()='Phone']
${Wheredidyouhearaboutus?_Phone_delete}               xpath://div[normalize-space()='Phone']// following-sibling::div/button
${Wheredidyouhearaboutus?_socialmedia}                xpath://div[normalize-space()='social media']
${Wheredidyouhearaboutus?_socialmedia_delete}         xpath://div[normalize-space()='social media']// following-sibling::div/button
${Wheredidyouhearaboutus?_T.V.}                       xpath://div[normalize-space()='T.V.']
${Wheredidyouhearaboutus?_T.V._delete}                xpath://div[normalize-space()='T.V.']// following-sibling::div/button


#Store Settings
${StoreSettings_h}                                          xpath://div[contains(text(),'Store Settings')]
${StoreSettings_Edit}                                       xpath://div[contains(text(),'Edit')]/parent::button
${StoreSettings_EditStoreInformation_h}                     xpath://div[normalize-space()='Edit Store Information']
${StoreSettings_EditStoreInformation_CompanyName}           css:input[aria-label='Company Name']
${StoreSettings_EditStoreInformation_Website}               css:input[aria-label='Website']
${StoreSettings_EditStoreInformation_Description}           css:input[aria-label='Description']
${StoreSettings_EditStoreInformation_Address}               css:input[aria-label='Address']
${StoreSettings_EditStoreInformation_AddressLine1}          css:input[aria-label='Address Line 1']
${StoreSettings_EditStoreInformation_AddressLine2}          css:input[aria-label='Address Line 2']
${StoreSettings_EditStoreInformation_City}                  css:input[aria-label='City']
${StoreSettings_EditStoreInformation_State}                 css:input[aria-label='State']
${StoreSettings_EditStoreInformation_Country}               css:input[aria-label='Country']
${StoreSettings_EditStoreInformation_Save}                  xpath:(//div[contains(text(),'Save')]//parent::button)[1]
${StoreSettings_EditStoreInformation_Cancel}                xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]
${StoreSettings_SetDefaultPrices}                           css:input[type='text'][readonly='readonly']
${StoreSettings_SetDefaultPrices_INR}                       xpath:(//div[contains(text(),'INR')])[1]
${StoreSettings_SetDefaultPrices_GBP}                       xpath://div[contains(text(),'GBP')]
${StoreSettings_SetDefaultPrices_USD}                       xpath://div[contains(text(),'USD')]
${StoreSettings_SetDefaultPrices_EUR}                       xpath://div[contains(text(),'EUR')]
${StoreSettings_Info}                                       xpath://i[contains(text(),'info')]//ancestor::button
${StoreSettings_Assignment_IndividualPrice}                 xpath:(//input[@aria-label='Individual Price'])[1]
${StoreSettings_Assignment_SchoolPrice}                     xpath:(//input[@aria-label='School Price'])[1]
${StoreSettings_Collection_IndividualPrice}                 xpath:(//input[@aria-label='Individual Price'])[2]
${StoreSettings_Collection_SchoolPrice}                     xpath:(//input[@aria-label='School Price'])[2]
${StoreSettings_Page_IndividualPrice}                       xpath:(//input[@aria-label='Individual Price'])[3]
${StoreSettings_Page_SchoolPrice}                           xpath:(//input[@aria-label='School Price'])[3]
${StoreSettings_Test_IndividualPrice}                       xpath:(//input[@aria-label='Individual Price'])[4]
${StoreSettings_Test_SchoolPrice}                           xpath:(//input[@aria-label='School Price'])[4]
${StoreSettings_Save}                                       xpath://div[normalize-space()='Save']/parent::button