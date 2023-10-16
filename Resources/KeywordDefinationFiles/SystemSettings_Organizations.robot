*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_Organizations.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Organizations
    [Documentation]  This test case verifies System Settings Organizations page
    [Tags]  Settings
    wait until element is visible       ${hOrganizations}
    page should contain element         ${horganizations}
    page should contain element         ${refreshorganization}
    click on button                     ${refreshorganization}
    sleep                               5
    page should contain element         ${addorganization}
    wait until element is visible       ${deleteorganization}           25
    page should contain element         ${deleteorganization}
    page should contain element         ${editorganization}

Add Organization
    page should contain element         ${addorganization}
    click on button                     ${addorganization}
    wait until element is visible       ${or_add}                       15
    page should contain element         ${or_add}
    page should contain element         ${or_organizationname}
    input text                          ${or_organizationname}                     Test Organization
    page should contain element         ${or_save}
    page should contain element         ${or_close}
    click on button                     ${or_save}
    wait until element is visible       ${or_neworganization}           15
    page should contain element         ${or_neworganization}

Edit Organization
    page should contain element         ${editorganization}
    click element                       ${editorganization}
    wait until element is visible       ${or_edit}                      20
    page should contain element         ${or_edit}
    page should contain element         ${or_organizationname}
    page should contain element         ${or_clear}
    click on button                     ${or_clear}
    input text                          ${or_organizationname}                      Test
    click on button                     ${or_save}
    wait until element is visible       ${or_NewOrganization1}            15
    page should contain element         ${or_NewOrganization1}

Delete Organization
    page should contain element         ${deleteorganization}
    click element                       ${deleteorganization}
    wait until element is visible       ${or_h_deleteorganization}         15
    page should contain element         ${or_h_deleteorganization}
    page should contain element         ${or_done}
    page should contain element         ${or_delete_close}
    click on button                     ${or_delete_close}
    wait until element is visible       ${or_neworganization1}              15
    page should contain element         ${deleteorganization}
    click element                       ${deleteorganization}
    wait until element is visible       ${or_h_deleteorganization}          15
    page should contain element         ${or_done}
    click on button                     ${or_done}
    wait until element is visible       ${conf_delete_toast}                15
    page should contain element         ${conf_delete_toast}
    sleep                               5
    page should not contain element     ${or_neworganization1}