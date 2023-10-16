*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings.robot
Resource        ../../PageObjects/SystemSettings_Courses.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Courses Page of a Teacher User
    [Arguments]                                             ${levelN}        ${courseN}     ${moduleN}      ${ConceptN}
    SystemSettings_CoursePage.Click on Courses button
    SystemSettings_CoursePage.Verify Add Course
    SystemSettings_CoursePage.Verify Manage Levels                                    ${levelN}
    SystemSettings_CoursePage.verify Courses page Elements
    SystemSettings_CoursePage.Select a Level                                          ${levelN}
    SystemSettings_CoursePage.Search a Course                                         ${courseN}
    SystemSettings_CoursePage.Verify Edit Course                ${CourseN}       ${moduleN}      ${ConceptN}

#-------------------------------------------------------------------------------------------
#                           Courses
#-------------------------------------------------------------------------------------------
verify Courses page Elements
    [Documentation]  This test case verifies System Settings Courses page
    [Tags]  Settings
    wait until element is visible       ${hCourses}                   10
    page should contain element         ${hCourses}
    page should contain element         ${crs_Add}
    page should contain element         ${crs_MassUpload}
    wait until element is visible       ${crs_ManageLevels}           25
    page should contain element         ${crs_SearchCourse}
    page should contain element         ${crs_SelectALevel}

#-------------------------------------------------------------------------------------------
Click on Courses button
    page should contain element                             ${ss_courses}
    click on button                                         ${ss_courses}
    sleep                                                   5
#-------------------------------------------------------------------------------------------
Click on Edit Course
    [Arguments]                       ${courseName}
    page should contain element        xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                    xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button

#-------------------------------------------------------------------------------------------
Select a Level
    [Arguments]                         ${level}
    SystemSettings_CoursePage.Click on Select a level
    page should contain element         xpath:(//div[contains(text(),'${level}')])[2]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${level}')])[2]//ancestor::a
    sleep                               3
#-------------------------------------------------------------------------------------------
Click on Select a level
    page should contain element         ${crs_SelectALevel}
    click on button                     ${crs_SelectALevel}
    sleep                               5

#-------------------------------------------------------------------------------------------
Search a Course
    [Arguments]                         ${courseName}
    page should contain element         ${crs_searchcourse}
    input text                          ${crs_searchcourse}             ${courseName}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                           Add Course
#-------------------------------------------------------------------------------------------
Verify Add Course
    SystemSettings_CoursePage.Click on Add Course
    SystemSettings_CoursePage.verify Add Course window
    SystemSettings_CoursePage.Close Add Course window

#-------------------------------------------------------------------------------------------
Click on Add Course
    page should contain element         ${crs_Add}
    click on button                     ${crs_Add}
    sleep                               3
#-------------------------------------------------------------------------------------------
verify Add Course window
    wait until element is visible       ${crs_hAddCourse}             20
    page should contain element         ${crs_haddcourse}
    page should contain element         ${crs_addcourse_name}
    page should contain element         ${crs_addcourse_close}
    page should contain element         ${crs_addcourse_description}
    page should contain element         ${crs_addcourse_duration}
    page should contain element         ${crs_addcourse_standardcredits}
    page should contain element         ${crs_AddCourse_SelectaLevel}
    page should contain element         ${crs_addcourse_selectacolor}
    page should contain element         ${crs_AddCourse_SelectAnImage}
    SystemSettings_CoursePage.Click on Save Course
    page should contain element         ${crs_addcourse_validation}
    sleep                               5
    ${RequiredField}=                   get element count                   ${crs_AddCourse_RequiredField}
    Printvalue                          There are ${RequiredField} validations in Add Courses windows

#-------------------------------------------------------------------------------------------
Click on Save Course
    page should contain element         ${crs_addcourse_save}
    click on button                     ${crs_addcourse_save}
    sleep                               5

#-------------------------------------------------------------------------------------------
Close Add Course window
    page should contain element         ${crs_addcourse_close}
    click on button                     ${crs_addcourse_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                           Manage Levels
#-------------------------------------------------------------------------------------------
Verify Manage Levels
    [Arguments]                                                     ${levelno}
    SystemSettings_CoursePage.Click on manage Levels
    SystemSettings_CoursePage.Verify Manage Levels window
    SystemSettings_CoursePage.Click on Add Level
    SystemSettings_CoursePage.Verify Add level window
    SystemSettings_CoursePage.Close Add Level window
    SystemSettings_CoursePage.Click on manage Levels
    SystemSettings_CoursePage.Click on edit button of a level       ${levelno}
    SystemSettings_CoursePage.Verify Edit Level window
    SystemSettings_CoursePage.Close Edit Level window
    SystemSettings_CoursePage.Close Manage Level window

#-------------------------------------------------------------------------------------------
Click on manage Levels
    wait until element is visible       ${crs_managelevels}         20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Manage Levels window
    wait until element is visible       ${crs_managelevels_h}       20
    page should contain element         ${crs_managelevels_h}
    page should contain element         ${crs_managelevels_addlevel}
    page should contain element         ${crs_managelevels_edit}

#-------------------------------------------------------------------------------------------
Close Manage Level window
    page should contain element         ${crs_managelevels_close}
    click on button                     ${crs_managelevels_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Add Level
    page should contain element         ${crs_managelevels_addlevel}
    click on button                     ${crs_managelevels_addlevel}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Add level window
    page should contain element         ${crs_addlevel_h}
    page should contain element         ${crs_addlevel_levelname}
    page should contain element         ${crs_addlevel_save}

#-------------------------------------------------------------------------------------------
Close Add Level window
    page should contain element         ${crs_addlevel_close}
    click on button                     ${crs_addlevel_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on edit button of a level
    [Arguments]                         ${levelno}
    page should contain element         xpath:(//div[contains(text(),'${levelno}')])[1]/following::i[contains(text(),'edit')][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${levelno}')])[1]/following::i[contains(text(),'edit')][1]/ancestor::button
    sleep                               5
#-------------------------------------------------------------------------------------------
Verify Edit Level window
    page should contain element         ${crs_editlevel_h}
    page should contain element         ${crs_editlevel_levelname}
    page should contain element         ${crs_editlevel_delete}
    page should contain element         ${crs_editlevel_save}
#-------------------------------------------------------------------------------------------
Close Edit Level window
    page should contain element         ${crs_editlevel_close}
    click on button                     ${crs_editlevel_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                           Edit Course
#-------------------------------------------------------------------------------------------
Verify Edit Course
    [Arguments]                         ${CourseN}       ${moduleN}      ${ConceptN}
    SystemSettings_CoursePage.Click on Edit button of a Course    ${CourseN}
    SystemSettings_CoursePage.Verify Edit Course window
    SystemSettings_CoursePage.Verify Manage Module window         ${moduleN}
    SystemSettings_CoursePage.Verify Manage Concept window        ${ConceptN}
    SystemSettings_CoursePage.Close Edit Course window

#-------------------------------------------------------------------------------------------
Click on Edit button of a Course
    [Arguments]                        ${courseName}
    page should contain element        xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                    xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button

#-------------------------------------------------------------------------------------------
Verify Edit Course window
    wait until element is visible      ${crs_editcourse_h}          20
    element text should be             ${crs_editcourse_h}          Edit Course
    page should contain element        ${crs_editcourse_managemodule}
    page should contain element        ${crs_editcourse_manageconcepts}
    page should contain element        ${crs_editcourse_close}
    page should contain element        ${crs_addcourse_name}
    page should contain element        ${crs_addcourse_description}
    page should contain element        ${crs_addcourse_duration}
    page should contain element        ${crs_addcourse_standardcredits}
    page should contain element        ${crs_AddCourse_SelectaLevel}
    page should contain element        ${crs_addcourse_selectacolor}
    page should contain element        ${crs_AddCourse_SelectAnImage}
    scroll element into view           ${crs_editcourse_delete}
    page should contain element        ${crs_editcourse_delete}
    page should contain element        ${crs_addcourse_save}

#-------------------------------------------------------------------------------------------
Close Edit Course window
    scroll element into view           ${crs_editcourse_close}
    page should contain element        ${crs_editcourse_close}
    click on button                    ${crs_editcourse_close}
    sleep                              5

#-------------------------------------------------------------------------------------------
#                                   Manage Module
#-------------------------------------------------------------------------------------------
Verify Manage Module window
    [Arguments]                     ${moduleN}
    SystemSettings_CoursePage.Click on Manage Modules
    SystemSettings_CoursePage.Verify Add Module
    SystemSettings_CoursePage.Verify Edit Module              ${moduleN}
    SystemSettings_CoursePage.Close on Manage Modules

#-------------------------------------------------------------------------------------------
Click on Manage Modules
    page should contain element         ${crs_editcourse_managemodule}
    click on button                     ${crs_editcourse_managemodule}
    sleep                               5
#-------------------------------------------------------------------------------------------
Close on Manage Modules
    page should contain element         ${crs_mangemodule_close}
    click on button                     ${crs_mangemodule_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                                   Add Module
#-------------------------------------------------------------------------------------------
Verify Add Module
    Click on Add Module
    Verify Add Module window Page
    Close Add Module window

#-------------------------------------------------------------------------------------------
Verify Add Module window Page
    wait until element is visible       ${crs_AddModule_h}                  20
    page should contain element         ${crs_addmodule_h}
    page should contain element         ${crs_addmodule_close}
    page should contain element         ${crs_addmodule_name}
    page should contain element         ${crs_addmodule_description}
    page should contain element         ${crs_addmodule_img}

#-------------------------------------------------------------------------------------------
Click on Add Module
    page should contain element         ${crs_AddModule}
    click on button                     ${crs_addmodule}
    sleep                               5
#-------------------------------------------------------------------------------------------
Close Add Module window
    page should contain element         ${crs_addmodule_close}
    click on button                     ${crs_addmodule_close}
    sleep                               5
#-------------------------------------------------------------------------------------------
#                                   Edit Module
#-------------------------------------------------------------------------------------------
Verify Edit Module
    [Arguments]                                                   ${moduleN}
    SystemSettings_CoursePage.Click on Edit Module                ${moduleN}
    SystemSettings_CoursePage.Verify Edit Module window Page
    SystemSettings_CoursePage.Close on Edit Module

#-------------------------------------------------------------------------------------------
Verify Edit Module window Page
    wait until element is visible       ${crs_editmodule_name}           20
    page should contain element         ${crs_editmodule_name}
    page should contain element         ${crs_addmodule_description}
#    page should contain element         ${crs_editmodule_remove}
    page should contain element         ${crs_editmodule_delete}
    page should contain element         ${crs_editmodule_close}
    page should contain element         ${crs_addmodule_save}

#-------------------------------------------------------------------------------------------
Close on Edit Module
    page should contain element         ${crs_addmodule_close}
    click on button                     ${crs_addmodule_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Edit Module
    [Arguments]                         ${moduleN}
    page should contain element         xpath:(//div[contains(text(),'${moduleN}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${moduleN}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5


#-------------------------------------------------------------------------------------------
#                                   Manage Concept
#-------------------------------------------------------------------------------------------
Verify Manage Concept window
    [Arguments]                     ${ConceptN}
    SystemSettings_CoursePage.Click on Manage Concept
    SystemSettings_CoursePage.Verify Add Concept
    SystemSettings_CoursePage.Verify Edit Concept              ${ConceptN}
    SystemSettings_CoursePage.Close on Manage Concept

#-------------------------------------------------------------------------------------------
Click on Manage Concept
    page should contain element         ${crs_editcourse_manageconcepts}
    click on button                     ${crs_editcourse_manageconcepts}
    sleep                               5
#-------------------------------------------------------------------------------------------
Close on Manage Concept
    page should contain element         ${crs_mangeconcept_close}
    click on button                     ${crs_mangeconcept_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                                   Add Concept
#-------------------------------------------------------------------------------------------
Verify Add Concept
    SystemSettings_CoursePage.Click on Add Concept
    SystemSettings_CoursePage.Verify Add Concept window Page
    SystemSettings_CoursePage.Close Add Concept window

#-------------------------------------------------------------------------------------------
Verify Add Concept window Page
    wait until element is visible       ${crs_addconcept_h}                                 20
    page should contain element         ${crs_addconcept_h}
    page should contain element         ${crs_addconcept_name}
    page should contain element         ${crs_addconcept_close}

#-------------------------------------------------------------------------------------------
Click on Add Concept
    page should contain element         ${crs_addconcept}
    click on button                     ${crs_addconcept}
    sleep                               5

#-------------------------------------------------------------------------------------------
Close Add Concept window
    page should contain element         ${crs_addconcept_close}
    click on button                     ${crs_addconcept_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                                   Edit Concept
#-------------------------------------------------------------------------------------------
Verify Edit Concept
    [Arguments]                         ${ConceptN}
    SystemSettings_CoursePage.Click on Edit Concept               ${ConceptN}
    SystemSettings_CoursePage.Verify Edit Concept window Page
    SystemSettings_CoursePage.Close on Edit Concept

#-------------------------------------------------------------------------------------------
Verify Edit Concept window Page
    page should contain element         ${crs_editconcept_h}
    page should contain element         ${crs_editconcept_name}
    page should contain element         ${crs_editconcept_close}
    page should contain element         ${crs_EditConcept_Close}
    page should contain element         ${crs_editconcept_delete}
    page should contain element         ${crs_addconcept_save}

#-------------------------------------------------------------------------------------------
Close on Edit Concept
    page should contain element         ${crs_editconcept_close}
    click on button                     ${crs_editconcept_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Edit Concept
    [Arguments]                         ${ConceptN}
    page should contain element         xpath:(//div[contains(text(),'${ConceptN}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${ConceptN}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5