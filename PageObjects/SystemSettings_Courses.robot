*** Settings ***
Documentation   All the page objects and keywords of System Settings Courses Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hCourses}                            xpath://div[@class='v-toolbar__title' and contains(text(),'Courses')]
${crs_Add}                             xpath://div[text()='ADD']//ancestor::button
${crs_MassUpload}                      css:a[title='Mass Upload Module & Concept']
${crs_ManageLevels}                    xpath://div[text()='Manage Levels']//ancestor::button
${crs_SearchCourse}                    css:input[aria-label='Search Course']
${crs_SelectALevel}                    css:input[aria-label='Select a Level']
${crs_level7}                          xpath://div[contains(text(),'Level 7')]
${crs_level1}                          xpath://div[contains(text(),'Level 1')]
${crs_hAddCourse}                      xpath://span[@class='headline' and contains(text(),'Add Course')]
${crs_AddCourse_close}                 xpath://span[normalize-space()='Add Course']/following::button[3]
${crs_AddCourse_Name}                  xpath:(//input[@aria-label='Name'])[1]
${crs_AddCourse_Description}           css:textarea[aria-label='Description']
${crs_AddCourse_Duration}              css:input[aria-label='Duration']
${crs_AddCourse_StandardCredits}       css:input[aria-label='Standard Credits']
${crs_AddCourse_SelectaLevel}          css:input[aria-label='Select a Level']
#${crs_AddCourse_SelectaColor}          css:button[class='v-btn theme--light white--text']
${crs_AddCourse_SelectaColor}          xpath://input[@type='color']
${crs_AddCourse_GreenColor}            css:div[style='background-color: rgb(22, 167, 157);'] a
${crs_AddCourse_orangeColor}           css:div[style='background-color: rgb(246, 98, 74);'] a
${crs_AddCourse_SelectAnImage}         css:input[name='image']
${crs_AddCourse_Save}                  xpath://div[text()='Save']//parent::button
${crs_AddCourse_RequiredField}         xpath://div[text()='Required Field']
${crs_AddCourse_validation}            xpath://div[contains(text(),'Required Field')]
${crs_edit}                            xpath:(//i[text()='edit'])[1]/ancestor::button

#Edit Course
${crs_EditCourse_h}                    css:.headline
${crs_EditCourse_ManageModule}         xpath://div[text()='Manage Modules']/parent::button
${crs_EditCourse_ManageConcepts}       xpath://div[text()='Manage Concepts']/parent::button
${crs_EditCourse_Name}                 xpath:(//input[@aria-label='Name'])
${crs_EditCourse_delete}               xpath://div[text()='delete']/parent::button
${crs_EditCourse_selectlevel}          xpath:(//input[@aria-label='Select a Level'])[1]
${crs_EditCourse_selectimg}            xpath:(//input[@name='image'])
${crs_EditCourse_close}                xpath://span[@class='headline' and text()='Edit Course']//following-sibling::button[3]

#Add Module
${crs_MangeModule_h}                   xpath://div[@class='v-toolbar__title' and text()='Manage Module']
${crs_AddModule}                       xpath://div[@class='v-toolbar__title' and text()='Manage Module']//following-sibling::button[1]
${crs_MangeModule_close}               xpath://div[@class='v-toolbar__title' and text()='Manage Module']//following-sibling::button[2]
${crs_AddModule_h}                     xpath://div[@class='v-toolbar__title' and text()='Add Module']
${crs_AddModule_close}                 xpath://div[@class='v-toolbar__title' and text()='Add Module']//following-sibling::button[1]
${crs_AddModule_name}                  xpath:(//input[@aria-label='Name'])[1]
${crs_AddModule_description}           xpath://input[@aria-label='Description']
${crs_AddModule_img}                   xpath:(//input[@name='image'])[1]
${crs_AddModule_save}                  xpath:(//div[text()='Save']//parent::button)[1]

#Edit Module
${crs_EditModule_h}                     xoath://div[normalize-space()='Edit Module']
${crs_EditModule_close}                 xpath://div[@class='v-toolbar__title' and text()='Edit Module']//following-sibling::button[1]
${crs_EditModule_name}                  xpath:(//input[@aria-label='Name'])[1]
${crs_EditModule_Remove}                xpath:(//div[text()='Remove']//parent::button)[1]
${crs_EditModule_Delete}                xpath:(//div[text()='Delete']/parent::button)[1]
${crs_EditModule_Close}                 xpath:(//div[text()='Close']/parent::button)[1]

#Add Concept
${crs_MangeConcept_h}                   xpath://div[@class='v-toolbar__title' and text()='Manage Concept']
${crs_AddConcept}                       xpath://div[@class='v-toolbar__title' and text()='Manage Concept']//following-sibling::button[1]
${crs_MangeConcept_close}               xpath://div[@class='v-toolbar__title' and text()='Manage Concept']//following-sibling::button[2]
${crs_AddConcept_h}                     xpath://div[@class='v-toolbar__title' and text()='Add Concept']
${crs_AddConcept_close}                 xpath://div[@class='v-toolbar__title' and text()='Add Concept']//following-sibling::button
${crs_AddConcept_name}                  xpath:(//input[@aria-label='Name'])[1]
${crs_AddConcept_save}                  xpath:(//div[text()='Save']//parent::button)[1]

#Edit Concept
${crs_EditConcept_h}                     xpath://div[@class='v-toolbar__title' and text()='Edit Concept']
#${crs_EditConcept_close}                 xpath://div[@class='v-toolbar__title' and text()='Edit Concept']//following-sibling::button[1]
${crs_EditConcept_name}                  xpath:(//input[@aria-label='Name'])[1]
${crs_EditConcept_Delete}                xpath:(//div[text()='Delete']/parent::button)[1]
${crs_EditConcept_Close}                 xpath:(//div[text()='Close']/parent::button)[1]

#Manage Levels window
${crs_ManageLevels_h}                    xpath://div[@class='v-toolbar__title' and text()='Manage Levels']
${crs_ManageLevels_AddLevel}             xpath://div[text()='Add Level']//parent::button
${crs_managelevels_Close}                xpath://div[@class='v-toolbar__title' and text()='Manage Levels']//following-sibling::button[2]
${crs_managelevels_Edit}                 xpath:((//i[text()='edit'])/ancestor::button)[7]

#Add Level window
${crs_AddLevel_h}                        xpath://div[@class='v-toolbar__title' and text()='Add Level']
${crs_AddLevel_LevelName}                xpath:(//input[@aria-label='Level Name'])[1]
${crs_AddLevel_Save}                     xpath:(//div[text()='Save']//parent::button)[1]
${crs_AddLevel_Close}                    xpath:(//div[text()='Close']//parent::button)[1]

#Edit Level window
${crs_EditLevel_h}                       xpath://div[@class='v-toolbar__title' and text()='Edit Level']
${crs_EditLevel_LevelName}               xpath:(//input[@aria-label='Level Name'])[1]
${crs_EditLevel_Save}                    xpath:(//div[text()='Save']//parent::button)[1]
${crs_EditLevel_Close}                   xpath:(//div[text()='Close']//parent::button)[1]
${crs_EditLevel_Delete}                  xpath:(//div[text()='Delete']//parent::button)[1]
${crs_EditLevel_Deletemsg}               xpath://div[text()='Are you sure you want to delete?']
${crs_EditLevel_Delete_Yes}              xpath://div[text()='Yes']//parent::button
${crs_EditLevel_Delete_No}               xpath://div[text()='No']//parent::button
