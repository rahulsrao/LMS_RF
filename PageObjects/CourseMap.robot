*** Settings ***
Documentation   All the page objects of Login page
Library         SeleniumLibrary
Resource        Generic.robot
Resource        ../Resources/TestData/TestData.robot

*** Variables ***
${CourseMap_heading}                      xpath:(//div[contains(text(),'Course Map')])[2]

#//small[normalize-space()='ART BATCH ONE']/following::div[contains(text(),'published')][1]/parent::button
#//small[normalize-space()='ART BATCH ONE']/following::div[contains(text(),'Certificate')][1]/parent::button
#//small[normalize-space()='ART BATCH ONE']/following::input[@aria-label='Start Date'][1]
#//small[normalize-space()='ART BATCH ONE']/following::input[@aria-label='End Date'][1]
#//small[normalize-space()='ART BATCH ONE']/following::button[3]


${CourseMap_h}                            xpath://div[@class='v-toolbar__title'][normalize-space()='Course Map']
${CourseMap_coursename}                   xpath://small[@class='course-name']
${CourseMap_info}                         css:div[class='v-card__title'] button[type='button']
${CourseMap_copy}                         xpath://div[normalize-space()='Copy']
${CourseMap_Publish}                      xpath://div[normalize-space()='Publish']
${CourseMap_StartDate}                    xpath:(//input[@aria-label='Start Date'])[1]
${CourseMap_EndDate}                      xpath:(//input[@aria-label='End Date'])[1]
${CourseMap_Progress1}                    xpath:(//div[@title='Progress'])[1]//button
${CourseMap_Add}                          xpath:(//i[text()='add'])[1]/parent::span


#Course Task Info
${CourseTaskInfo_h}                         xpath://div[contains(text(),'Course Task Info')]
${CourseTaskInfo_Close}                     xpath://div[contains(text(),'Course Task Info')]/parent::div/following-sibling::button
${CourseTaskInfo_Student_th}                xpath://div[contains(text(),'Course Task Info')]/following::th[contains(@aria-label,'Student:')]
${CourseTaskInfo_CompletedModules_th}       xpath://div[contains(text(),'Course Task Info')]/following::th[contains(@aria-label,'Completed Modules:')]

#Add Module Note
${AddModuleNote_h}                          xpath:(//div[text()='Add Module Note'])[1]
${AddModuleNote_Note}                       xpath:(//input[@aria-label='Note'])[1]
${AddModuleNote_ForTeacherOnly}             xpath:(//input[@aria-label='For Teacher Only'])[1]
${AddModuleNote_close}                      xpath:(//div[text()='Add Module Note']/following::div[text()='close']/parent::button)[1]
${AddModuleNote_Save}                       xpath://div[text()='Add Module Note']/following::div[text()='Save']/parent::button

#Module Task Info
${ModuleTaskInfo_h}                         xpath:(//div[contains(text(),'Module Task Info')])[1]
${ModuleTaskInfo_close}                     xpath:(//div[contains(text(),'Module Task Info')])[1]/parent::div//following-sibling::button
${ModuleTaskInfo_Student_th}                xpath:(//th[contains(@aria-label,'Student:')])[1]
${ModuleTaskInfo_CompletedTasks_th}         xpath:(//th[contains(@aria-label,'Completed Tasks:')])[1]

#Module Edit
${ModuleEdit_h}                             xpath:(//div[contains(text(),'Module Edit')])[1]
${ModuleEdit_Name}                          xpath:(//input[@aria-label='Name'])[1]
${ModuleEdit_Description}                   xpath:(//input[@aria-label='Description'])[1]
${ModuleEdit_Save}                          xpath:(//div[text()='save'])[1]/parent::button
${ModuleEdit_Close}                         xpath:(//div[text()='close'])[1]/parent::button


#Add Activities
${AddActivities_h}                          xpath:(//div[contains(text(),'Add Activities')])[1]
${AddActivities_Close}                      xpath:(//div[contains(text(),'Add Activities')])[1]/parent::div//following-sibling::button
${AddActivities_Pages}                      xpath:(//div[contains(text(),'Pages')])[1]/parent::div/button
${AddActivities_Videos}                     xpath:(//div[contains(text(),'Videos')])[1]/parent::div/button
${AddActivities_Assignments}                xpath:(//div[contains(text(),'Assignments')])[1]/parent::div/button
${AddActivities_Tests}                      xpath:(//div[contains(text(),'Tests')])[1]/parent::div/button
${AddActivities_Discussions}                xpath:(//div[contains(text(),'Discussions')])[1]/parent::div/button
${AddActivities_AddSAT}                     xpath:(//div[contains(text(),'Add SAT')])[1]/parent::div/button
${AddActivities_GetAllContent}              xpath:(//div[contains(text(),'Get All Content')])[1]

#Add Pages
${AddPages_h}                               xpath:(//div[contains(text(),'Add Pages')])[1]
${AddPages_Close}                           xpath:(//div[contains(text(),'Add Pages')])[1]/parent::div//following-sibling::button

#Add Videos
${AddVideos_h}                               xpath:(//div[contains(text(),'Add Videos')])[1]
${AddVideos_Close}                           xpath:(//div[contains(text(),'Add Videos')])[1]/parent::div//following-sibling::button

#Add Assignments
${AddAssignments_h}                          xpath:(//div[contains(text(),'Add Assignments')])[1]
${AddAssignments_Close}                      xpath:(//div[contains(text(),'Add Assignments')])[1]/parent::div//following-sibling::button

#Add Tests
${AddTests_h}                                xpath:(//div[contains(text(),'Add Tests')])[1]
${AddTests_Close}                            xpath:(//div[contains(text(),'Add Tests')])[1]/parent::div//following-sibling::button

#Add Discussion
${AddDiscussion_h}                           xpath:(//div[contains(text(),'Add Discussion')])[1]
${AddDiscussion_Close}                       xpath:(//div[contains(text(),'Add Discussion')])[1]/parent::div//following-sibling::button

#//b[normalize-space()='M1: Module 1']/ancestor::div[contains(@class,'topcardround ')]
#//b[normalize-space()='M1: Module 1']
#(//b[contains(text(),'Module 1')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[1]

#Copy from
${Copyfrom_h}                                xpath://div[normalize-space()='Copy from']
${Copyfrom_Close}                            xpath://div[normalize-space()='Copy from']/parent::div//following-sibling::button
${Copyfrom_SelectBatch}                      xpath://input[@aria-label='Select Batch']
${Copyfrom_Copy}                             xpath://div[contains(text(),'copy')]

#Course Info
${CourseInfo_Description}                   css:textarea[placeholder='Description']
${CourseInfo_Duration}                      css:input[aria-label='Duration']
${CourseInfo_Save}                          xpath://label[normalize-space()='Duration']/following::div[contains(text(),'save')]/parent::button
${CourseInfo_Close}                         xpath://label[normalize-space()='Duration']/following::div[contains(text(),'close')]/parent::button
