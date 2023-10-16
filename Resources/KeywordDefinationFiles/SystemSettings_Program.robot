*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_Program.robot
Resource        ../../PageObjects/SystemSettings.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***

Verify Program
    SystemSettings_Program.Click on Program
    SystemSettings_Program.Verify Program page                      Uni
    SystemSettings_Program.verify Create program window
    SystemSettings_Program.verify Attach Courses Credit window      Test
    SystemSettings_Program.Verify Finalize window                   Test                10
    SystemSettings_Program.Create Program                           Test                10          5
    SystemSettings_Program.verify Program created and Edit          Test                EditTest            10          15          5
    SystemSettings_Program.delete a program                         EditTest

#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element                                     ${ss_program}
    click on button                                                 ${ss_program}
    sleep                                                           5

#-------------------------------------------------------------------------------------------
Verify Program page
    [Arguments]                             ${pr_name}
    [Documentation]  This test case verifies System Settings program page
    [Tags]  Settings
    wait until element is visible           ${hPrograms}               20
    page should contain element             ${hPrograms}
    page should contain element             ${pr_add}
    ${Result}=      Run Keyword And Return Status       page should contain element        xpath://div[@class='v-list__tile__title' and text()='${pr_name}']
    IF      '${Result}' == 'False'
        sleep           10
    END
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${pr_name}']//following::button[1]
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${pr_name}']//following::button[2]
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${pr_name}']//following::button[3]
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${pr_name}']//following::button[4]

verify Create program window
    click on button                         ${pr_add}
    sleep                                   5
    page should contain element             ${pr_createprogram_h}
    page should contain element             ${pr_createprogram_name}
    page should contain element             ${pr_createprogram_courses}
    page should contain element             ${pr_createprogram_continue}
    page should contain element             ${pr_createprogram_close}
    click on button                         ${pr_createprogram_close}
    sleep                                   5

verify Attach Courses Credit window
    [Arguments]                             ${pr_name}
    click on button                         ${pr_add}
    sleep                                   5
    page should contain element             ${pr_createprogram_h}
    input text                              ${pr_createprogram_name}                ${pr_name}
    click on button                         ${pr_createprogram_courses}
    sleep                                   5
    page should contain element             ${pr_createprogram_op_first}
    click on button                         ${pr_createprogram_op_first}
    click element                           ${pr_createprogram_name}
    click on button                         ${pr_createprogram_continue}
    page should contain element             ${pr_attachcoursescredits_h}
    page should contain element             ${pr_attachcoursescredits_credit}
    page should contain element             ${pr_attachcoursescredits_continue}
    page should contain element             ${pr_attachcoursescredits_close}
    click on button                         ${pr_attachcoursescredits_close}
    seleniumlibrary.reload page
    sleep                                   10

Verify Finalize window
    [Arguments]                             ${pr_name}                         ${credit}
    click on button                         ${pr_add}
    sleep                                   5
    page should contain element             ${pr_createprogram_h}
    input text                              ${pr_createprogram_name}                ${pr_name}
    click on button                         ${pr_createprogram_courses}
    ${Result}=      Run Keyword And Return Status       page should contain element        ${pr_createprogram_op_first}
    IF      '${Result}' == 'False'
        sleep           10
    END
    page should contain element             ${pr_createprogram_op_first}
    click on button                         ${pr_createprogram_op_first}
    click element                           ${pr_createprogram_name}
    sleep                                   5
    click on button                         ${pr_createprogram_continue}
    sleep                                   5
    page should contain element             ${pr_attachcoursescredits_h}
    page should contain element             ${pr_attachcoursescredits_credit}
    input text                              ${pr_attachcoursescredits_credit}       ${credit}
    click on button                         ${pr_attachcoursescredits_continue}
    sleep                                   5
    page should contain element             ${pr_finalize_h}
    page should contain element             ${pr_finalize_credittopass}
    page should contain element             ${pr_finalize_save}
    page should contain element             ${pr_finalize_close}
    click on button                         ${pr_finalize_close}
    seleniumlibrary.reload page
    sleep                                   10

Create Program
    [Arguments]                             ${pr_name}                         ${credit}        ${credittopass}
    click on button                         ${pr_add}
    sleep                                   5
    page should contain element             ${pr_createprogram_h}
    input text                              ${pr_createprogram_name}                ${pr_name}
    click on button                         ${pr_createprogram_courses}
    ${Result}=      Run Keyword And Return Status       page should contain element        ${pr_createprogram_op_first}
    IF      '${Result}' == 'False'
        sleep           10
    END
    page should contain element             ${pr_createprogram_op_first}
    click on button                         ${pr_createprogram_op_first}
    click element                           ${pr_createprogram_name}
    click on button                         ${pr_createprogram_continue}
    sleep                                   5
    page should contain element             ${pr_attachcoursescredits_h}
    page should contain element             ${pr_attachcoursescredits_credit}
    Press Keys                              ${pr_attachcoursescredits_credit}                CTRL+a   BACKSPACE
    input text                              ${pr_attachcoursescredits_credit}                ${credit}
    click on button                         ${pr_attachcoursescredits_continue}
    sleep                                   5
    page should contain element             ${pr_finalize_h}
    Press Keys                              ${pr_finalize_credittopass}               CTRL+a   BACKSPACE
    input text                              ${pr_finalize_credittopass}             ${credittopass}
    click on button                         ${pr_finalize_save}
    sleep                                   5

verify Program created and Edit
    [Arguments]                             ${n_pr_name}      ${edit_pr_name}       ${credit}        ${credit2}        ${credittopass}
    ${Result}=      Run Keyword And Return Status       page should contain element        xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']
    WHILE    '${Result}' == 'False'
        sleep           10
        BREAK
    END
#    IF      '${Result}' == 'False'
#        sleep           10
#    END
    click element                           xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']//following::button[2]
    sleep                                   5
    page should contain element             ${pr_editprogram_h}
    page should contain element             ${pr_createprogram_name}
    page should contain element             ${pr_createprogram_courses}
    press keys                              ${pr_createprogram_name}                        CTRL+a   BACKSPACE
    input text                              ${pr_createprogram_name}                        ${edit_pr_name}
    click on button                         ${pr_createprogram_courses}
    ${Result1}=      Run Keyword And Return Status       page should contain element        ${pr_createprogram_op_first}
    IF      '${Result1}' == 'False'
        sleep           10
    END
    click on button                         ${pr_createprogram_op_two}
    click element                           ${pr_createprogram_name}
    click on button                         ${pr_createprogram_continue}
    sleep                                   3
    page should contain element             ${pr_attachcoursescredits_h}
    page should contain element             ${pr_attachcoursescredits_credit}
    press keys                              ${pr_attachcoursescredits_credit}               CTRL+a   BACKSPACE
    input text                              ${pr_attachcoursescredits_credit}               ${credit}
    input text                              xpath:(//input[@aria-label="Credit"])[2]        ${credit2}
    click on button                         ${pr_attachcoursescredits_continue}
    sleep                                   3
    page should contain element             ${pr_finalize_h}
    Press Keys                              ${pr_finalize_credittopass}                     CTRL+a   BACKSPACE
    input text                              ${pr_finalize_credittopass}                     ${credittopass}
    click on button                         ${pr_finalize_save}
    sleep                                   5

Delete a program
    [Arguments]                             ${n_pr_name}
    ${Result}=      Run Keyword And Return Status       page should contain element        xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']
    WHILE    '${Result}' == 'False'
        sleep           10
        BREAK
    END
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']//following::button[4]
    click element                           xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']//following::button[4]
    handle alert                            accept
    ${Result}=      Run Keyword And Return Status       page should not contain element     xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']
    WHILE    '${Result}' == 'False'
        sleep           10
        BREAK
    END
    page should not contain element        xpath://div[@class='v-list__tile__title' and text()='${n_pr_name}']