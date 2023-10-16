*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings.robot
Resource        ../../PageObjects/SystemSettings_Courses.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Courses Page
    SystemSettings_Courses.Click on Courses button
    SystemSettings_Courses.verify Courses page Elements
    SystemSettings_Courses.Verify Add Course window
    systemsettings_courses.add course                        Geography           Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth. Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth.       3 Months     5     C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/geography.jpg
    systemsettings_courses.verify new course                 Geography
    systemsettings_courses.verify edit course window         Geography
    systemsettings_courses.edit course                       Geography           Edit Geography      Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth.       2 Months     8     Level 5     C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/solorSystem.jpg
    systemsettings_courses.verify editcourse                 Level 5             Edit Geography
    systemsettings_courses.verify add module window          Edit Geography
    systemsettings_courses.add module                        Module 1            Edit Geography Module 1       C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/module1.png     Level 3     Edit Geography
    systemsettings_courses.verify new module                 Module 1            Level 5     Edit Geography
    systemsettings_courses.verify edit module window         Edit Geography
    systemsettings_courses.edit module                       Module 2            Edit Geography     Module 1       C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/module2.png
    systemsettings_courses.verify manage concept window      Level 5             Edit Geography
    systemsettings_courses.verify add concept window
    systemsettings_courses.add concept                       Concept 2
    systemsettings_courses.verify new concept                Level 5            Edit Geography                 Concept 2
    systemsettings_courses.verify edit course window         Edit Geography
    systemsettings_courses.edit concept                      Concept 3
    systemsettings_courses.delete course                     Level 5            Edit Geography
    SystemSettings_Courses.Verify Manage Levels window
    SystemSettings_Courses.Verify Add level window
    SystemSettings_Courses.Add Level                         Level 8
    SystemSettings_Courses.Verify Edit Level window          8
    SystemSettings_Courses.Edit Level                        8                 Level 9
    SystemSettings_Courses.Delete Level                      8
#-------------------------------------------------------------------------------------------
Click on Courses button
    page should contain element                             ${ss_courses}
    click on button                                         ${ss_courses}
    sleep                                                   5
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
Verify Add Course window
    click on button                     ${crs_add}
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
    page should contain element         ${crs_addcourse_save}
    click on button                     ${crs_addcourse_save}
    page should contain element         ${crs_addcourse_validation}
    sleep                               5
    ${RequiredField}=                   get element count                   ${crs_AddCourse_RequiredField}
    Printvalue                          There are ${RequiredField} validations in Add Courses windows
    click on button                     ${crs_addcourse_close}
    sleep                               5

Add Course
    [Arguments]                         ${courseName}      ${description}       ${duration}     ${credit}       ${courseImage}
    click on button                     ${crs_Add}
    wait until element is visible       ${crs_hAddCourse}             20
    page should contain element         ${crs_haddcourse}
    input text                          ${crs_addcourse_name}                   ${courseName}
    input text                          ${crs_addcourse_description}            ${description}
    input text                          ${crs_addcourse_duration}               ${duration}
    input text                          ${crs_addcourse_standardcredits}        ${credit}
    click on button                     ${crs_AddCourse_SelectaLevel}
    sleep                               5
    page should contain element         ${crs_level1}
    click on button                     ${crs_level1}
    sleep                               3
    click on button                     ${crs_addcourse_selectacolor}
    page should contain element         ${crs_addcourse_greencolor}
    click element                       ${crs_addcourse_greencolor}
    choose file                         ${crs_AddCourse_SelectAnImage}          ${courseImage}
    scroll element into view            ${crs_addcourse_save}
    click on button                     ${crs_addcourse_save}
    sleep                               5

Verify New Course
    [Arguments]                        ${courseName}
#    input text                         ${crs_searchcourse}      ${courseName}
    click on button                    ${crs_selectalevel}
    wait until element is visible      ${crs_level1}            20
    page should contain element        ${crs_level1}
    click on button                    ${crs_level1}
    sleep                              10
    ${Result}=      Run Keyword And Return Status       page should contain element        xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']
    IF      '${Result}' == 'False'
        sleep           5
    END
    page should contain element        xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']
    page should contain element        ${crs_edit}

Verify Edit Course window
    [Arguments]                        ${courseName}
    click on button                    xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    wait until element is visible      ${crs_editcourse_h}          20
    element text should be             ${crs_editcourse_h}          Edit Course
    page should contain element        ${crs_editcourse_managemodule}
    page should contain element        ${crs_editcourse_manageconcepts}
    page should contain element        ${crs_addcourse_close}
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
    scroll element into view           ${crs_addcourse_close}
    click on button                    ${crs_addcourse_close}
    sleep                              5

Edit Course
    [Arguments]                         ${courseName1}             ${courseName}      ${description}       ${duration}     ${credit}       ${level}        ${courseImage}
    click on button                     xpath:(//div[contains(text(),'${courseName1}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    wait until element is visible       ${crs_editcourse_h}                  20
    element text should be              ${crs_editcourse_h}                  Edit Course
    Press Keys                          ${crs_editcourse_name}               CTRL+a   BACKSPACE
    Press Keys                          ${crs_editcourse_name}               CTRL+a   BACKSPACE
    input text                          ${crs_editcourse_name}               ${courseName}
    Press Keys                          ${crs_addcourse_description}         CTRL+a   BACKSPACE
    input text                          ${crs_addcourse_description}         ${description}
    Press Keys                          ${crs_addcourse_duration}            CTRL+a   BACKSPACE
    input text                          ${crs_addcourse_duration}            ${duration}
    Press Keys                          ${crs_addcourse_standardcredits}     CTRL+a   BACKSPACE
    input text                          ${crs_addcourse_standardcredits}     ${credit}
    click on button                     ${crs_AddCourse_SelectaLevel}
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    click on button                     ${crs_addcourse_selectacolor}
    wait until element is visible       ${crs_addcourse_orangecolor}         20
    page should contain element         ${crs_addcourse_orangecolor}
    click element                       ${crs_addcourse_orangecolor}
    sleep                               5
    page should contain element         ${crs_editcourse_selectimg}
    choose file                         ${crs_editcourse_selectimg}          ${courseImage}
    scroll element into view            ${crs_addcourse_save}
    click on button                     ${crs_addcourse_save}
    wait until element is not visible   xpath:(//div[@role='progressbar'])[1]//ancestor::button             120
    sleep                               10

Verify EditCourse
    [Arguments]                        ${level}             ${courseName}
    page should contain element        ${crs_selectalevel}
    click on button                    ${crs_selectalevel}
    wait until element is visible      xpath://div[contains(text(),'${level}')]            20
    page should contain element        xpath://div[contains(text(),'${level}')]
    click on button                    xpath://div[contains(text(),'${level}')]
    sleep                              5
    page should contain element        xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']


#-------------------------------------------------------------------------------------------
Verify Add Module window
    [Arguments]                         ${courseName}
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    wait until element is visible       ${crs_editcourse_h}                 20
    element text should be              ${crs_editcourse_h}                 Edit Course
    page should contain element         ${crs_editcourse_managemodule}
    click on button                     ${crs_editcourse_managemodule}
    wait until element is visible       ${crs_mangemodule_h}                20
    page should contain element         ${crs_mangemodule_h}
    page should contain element         ${crs_mangemodule_close}
    click on button                     ${crs_addmodule}
    sleep                               5
    wait until element is visible       ${crs_AddModule_h}                  20
    page should contain element         ${crs_addmodule_h}
    page should contain element         ${crs_addmodule_close}
    page should contain element         ${crs_addmodule_name}
    page should contain element         ${crs_addmodule_description}
    page should contain element         ${crs_addmodule_img}
    click on button                     ${crs_addmodule_close}
    sleep                               5

Add Module
    [Arguments]                         ${name}     ${description}      ${img}      ${level}        ${courseName}
    wait until element is visible       ${crs_addmodule}                    20
    click on button                     ${crs_addmodule}
    wait until element is visible       ${crs_AddModule_h}                  20
    input text                          ${crs_addmodule_name}               ${name}
    input text                          ${crs_addmodule_description}        ${description}
    choose file                         ${crs_addmodule_img}                ${img}
    click on button                     ${crs_addmodule_save}
    sleep                               15

Verify New Module
    [Arguments]                         ${name}     ${level}        ${courseName}
    wait until element is visible       ${crs_selectalevel}                                 20
    click on button                     ${crs_selectalevel}
    wait until element is visible       xpath://div[contains(text(),'${level}')]            20
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    sleep                               5
    page should contain element         xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']
    page should contain element         ${crs_edit}
    click on button                     ${crs_edit}
    sleep                               5
    wait until element is visible       ${crs_editcourse_managemodule}      20
    page should contain element         ${crs_editcourse_managemodule}
    click on button                     ${crs_editcourse_managemodule}
    sleep                               5
    wait until element is visible       ${crs_mangemodule_h}                20
    wait until element is visible       xpath://div[@class='v-list__tile__title' and text()='${name}']      20
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${name}']

Verify Edit Module window
    [Arguments]                         ${courseName}
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
#    wait until element is visible       ${crs_editmodule_h}             20
#    page should contain element         ${crs_editmodule_h}
    wait until element is visible       ${crs_editmodule_name}           20
    page should contain element         ${crs_editmodule_name}
    page should contain element         ${crs_addmodule_description}
    page should contain element         ${crs_editmodule_remove}
    page should contain element         ${crs_editmodule_delete}
    page should contain element         ${crs_editmodule_close}
    page should contain element         ${crs_addmodule_save}
    click on button                     ${crs_editmodule_close}
    sleep                               5
    wait until element is visible       ${crs_mangemodule_h}            20
    page should contain element         ${crs_mangemodule_h}

Edit Module
    [Arguments]                         ${courseName}              ${description}      ${img}
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
#    wait until element is visible      ${crs_editmodule_h}                  20
#    page should contain element        ${crs_editmodule_h}
    wait until element is visible      ${crs_editmodule_name}              20
    page should contain element        ${crs_editmodule_name}
    click on button                    ${crs_editmodule_remove}
    handle alert                       accept
    sleep                              5
    wait until element is visible      ${crs_MangeModule_h}                 20
    page should contain element        ${crs_MangeModule_h}
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
#    wait until element is visible      ${crs_editmodule_h}                  20
#    page should contain element        ${crs_editmodule_h}
    wait until element is visible      ${crs_editmodule_name}               20
    page should contain element        ${crs_editmodule_name}
    Press Keys                         ${crs_editmodule_name}               CTRL+a   BACKSPACE
    input text                         ${crs_editmodule_name}               ${name}
    Press Keys                         ${crs_addmodule_description}         CTRL+a   BACKSPACE
    input text                         ${crs_addmodule_description}         ${description}
    choose file                        ${crs_AddModule_img}                 ${img}
    click on button                    ${crs_addmodule_save}
    sleep                              5
    wait until element is visible      ${crs_MangeModule_h}                 20
    wait until element is visible      xpath://div[@class='v-list__tile__title' and text()='${name}']       20
    page should contain element        xpath://div[@class='v-list__tile__title' and text()='${name}']
    click on button                    ${crs_mangemodule_close}
    wait until element is visible      ${crs_editcourse_managemodule}       20
    click on button                    ${crs_editcourse_close}
    sleep                              5

Verify Manage Concept window
    [Arguments]                         ${level}         ${course}
    wait until element is visible       ${crs_selectalevel}                                 20
    click on button                     ${crs_selectalevel}
    wait until element is visible       xpath://div[contains(text(),'${level}')]            20
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    sleep                               5
    page should contain element         xpath://div[@class='v-list__tile__title'][normalize-space()='${course}']
    page should contain element         xpath:(//div[contains(text(),'${course}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${course}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
    wait until element is visible       ${crs_editcourse_manageconcepts}                    20
    page should contain element         ${crs_editcourse_manageconcepts}
    click on button                     ${crs_editcourse_manageconcepts}
    sleep                               5
    wait until element is visible       ${crs_mangeconcept_h}                                20
    page should contain element         ${crs_mangeconcept_h}
    page should contain element         ${crs_AddConcept}
    page should contain element         ${crs_mangeconcept_close}

Verify Add Concept window
    click on button                     ${crs_addconcept}
    wait until element is visible       ${crs_addconcept_h}                                 20
    page should contain element         ${crs_addconcept_h}
    page should contain element         ${crs_addconcept_name}
    page should contain element         ${crs_addconcept_close}
    click on button                     ${crs_addconcept_close}
    sleep                               5
    wait until element is visible       ${crs_mangeconcept_h}                               20

Add Concept
    [Arguments]                         ${name}
    page should contain element         ${crs_addconcept}
    click on button                     ${crs_addconcept}
    wait until element is visible       ${crs_addconcept_h}                                 20
    input text                          ${crs_addconcept_name}                              ${name}
    click on button                     ${crs_addconcept_save}
    sleep                               10
    wait until element is visible       ${hcourses}                                         20

Verify new Concept
    [Arguments]                         ${level}         ${courseName}       ${cname}
    wait until element is visible       ${crs_selectalevel}                                 20
    click on button                     ${crs_selectalevel}
    wait until element is visible       xpath://div[contains(text(),'${level}')]            20
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    sleep                               5
    page should contain element         xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
    wait until element is visible       ${crs_editcourse_manageconcepts}                    20
    page should contain element         ${crs_editcourse_manageconcepts}
    click on button                     ${crs_editcourse_manageconcepts}
    sleep                               5
    wait until element is visible       ${crs_mangeconcept_h}                                20
    page should contain element         xpath://div[@class='v-list__tile__title'][normalize-space()='${cname}']

verify Edit Concept window
    [Arguments]                         ${courseName}
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
    page should contain element         ${crs_editconcept_h}
    page should contain element         ${crs_editconcept_name}
    page should contain element         ${crs_editconcept_close}
    page should contain element         ${crs_EditConcept_Close}
    page should contain element         ${crs_editconcept_delete}
    page should contain element         ${crs_addconcept_save}
    click on button                     ${crs_editconcept_close}

Edit Concept
    [Arguments]                         ${courseName}               ${name}
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
    sleep                               5
    press keys                          ${crs_editconcept_name}         CTRL+a   BACKSPACE
    input text                          ${crs_editconcept_name}         ${name}
    click on button                     ${crs_addconcept_save}
    sleep                               5
    page should contain element         ${crs_mangeconcept_close}
    click on button                     ${crs_mangeconcept_close}
    page should contain element         ${crs_editcourse_close}
    click on button                     ${crs_editcourse_close}

Delete Course
    [Arguments]                         ${level}         ${courseName}
    wait until element is visible       ${crs_selectalevel}                                 20
    click on button                     ${crs_selectalevel}
    wait until element is visible       xpath://div[contains(text(),'${level}')]            20
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    sleep                               5
    page should contain element         xpath://div[@class='v-list__tile__title'][normalize-space()='${courseName}']
    page should contain element         xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    click on button                     xpath:(//div[contains(text(),'${courseName}')])[1]//following::i[normalize-space()='edit'][1]/ancestor::button
    sleep                               5
    page should contain element         ${crs_editcourse_delete}
    click on button                     ${crs_editcourse_delete}
    sleep                               5
    handle alert                        accept
    wait until element is visible       ${crs_selectalevel}                                 20
    click on button                     ${crs_selectalevel}
    wait until element is visible       xpath://div[contains(text(),'${level}')]            20
    page should contain element         xpath://div[contains(text(),'${level}')]
    click on button                     xpath://div[contains(text(),'${level}')]
    sleep                               5
    page should not contain element     xpath://div[@class='v-list__tile__title'][normalize-space()='${course}']

Verify Manage Levels window
    wait until element is visible       ${crs_managelevels}         20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_h}       20
    page should contain element         ${crs_managelevels_h}
    page should contain element         ${crs_managelevels_addlevel}
    page should contain element         ${crs_managelevels_edit}
    page should contain element         ${crs_managelevels_close}
    click on button                     ${crs_managelevels_close}

Verify Add level window
    wait until element is visible       ${crs_managelevels}         20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_addlevel}       20
    page should contain element         ${crs_managelevels_addlevel}
    click on button                     ${crs_managelevels_addlevel}
    sleep                               5
    page should contain element         ${crs_addlevel_h}
    page should contain element         ${crs_addlevel_levelname}
    page should contain element         ${crs_addlevel_save}
    page should contain element         ${crs_addlevel_close}
    click on button                     ${crs_addlevel_close}
    sleep                               5

Add Level
    [Arguments]                         ${level}
    wait until element is visible       ${crs_managelevels}                 20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_addlevel}        20
    page should contain element         ${crs_managelevels_addlevel}
    click on button                     ${crs_managelevels_addlevel}
    sleep                               5
    page should contain element         ${crs_addlevel_h}
    input text                          ${crs_addlevel_levelname}           ${level}
    click on button                     ${crs_addlevel_save}
    sleep                               5

Verify Edit Level window
    [Arguments]                         ${levelno}
    wait until element is visible       ${crs_managelevels}                 20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_addlevel}        20
    page should contain element         ${crs_managelevels_addlevel}
    page should contain element         xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    click on button                     xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    sleep                               5
    page should contain element         ${crs_editlevel_h}
    page should contain element         ${crs_editlevel_levelname}
    page should contain element         ${crs_editlevel_delete}
    page should contain element         ${crs_editlevel_save}
    page should contain element         ${crs_editlevel_close}
    click on button                     ${crs_editlevel_close}
    sleep                               5

Edit Level
    [Arguments]                         ${levelno}          ${level}
    wait until element is visible       ${crs_managelevels}                 20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_addlevel}        20
    page should contain element         ${crs_managelevels_addlevel}
    page should contain element         xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    click on button                     xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    sleep                               5
    page should contain element         ${crs_editlevel_h}
    page should contain element         ${crs_editlevel_levelname}
    press keys                          ${crs_editlevel_levelname}         CTRL+a   BACKSPACE
    input text                          ${crs_editlevel_levelname}         ${level}
    click on button                     ${crs_editlevel_save}
    sleep                               10

Delete Level
    [Arguments]                         ${levelno}
    wait until element is visible       ${crs_managelevels}                 20
    page should contain element         ${crs_managelevels}
    click on button                     ${crs_managelevels}
    sleep                               5
    wait until element is visible       ${crs_managelevels_addlevel}        20
    page should contain element         ${crs_managelevels_addlevel}
    page should contain element         xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    click on button                     xpath:((//i[text()='edit'])/ancestor::button)[${levelno}]
    sleep                               5
    page should contain element         ${crs_editlevel_h}
    click on button                     ${crs_editlevel_delete}
    sleep                               5
    wait until element is visible       ${crs_editlevel_deletemsg}          20
    element text should be              ${crs_editlevel_deletemsg}          Are you sure you want to delete?
    page should contain element         ${crs_editlevel_delete_yes}
    page should contain element         ${crs_editlevel_delete_no}
    click on button                     ${crs_editlevel_delete_no}
    wait until element is visible       ${crs_editlevel_delete}             20
    click on button                     ${crs_editlevel_delete}
    wait until element is visible       ${crs_editlevel_delete_yes}         20
    page should contain element         ${crs_editlevel_delete_yes}
    click on button                     ${crs_editlevel_delete_yes}
    sleep                               5
    wait until element is visible       ${crs_managelevels_h}               20
    click on button                     ${crs_managelevels_close}