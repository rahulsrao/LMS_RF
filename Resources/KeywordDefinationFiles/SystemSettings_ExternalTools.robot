*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_ExternalTools.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify External Tools page
    sleep                                                   5
    wait until element is visible                           ${externaltools_h}          20
    page should contain element                             ${externaltools_h}
    page should contain element                             ${externaltools_onenotesettings}
    page should contain element                             ${externaltools_copyleakssettings}

Verify One Note Settings
    click on button                                         ${externaltools_onenotesettings}
    sleep                                                   5
    wait until element is visible                           ${onenotesettings_h}                20
    page should contain element                             ${onenotesettings_h}
    page should contain element                             ${onenotesettings_consumerkey}
    page should contain element                             ${onenotesettings_consumersecret}
    page should contain element                             ${onenotesettings_delete}
    page should contain element                             ${onenotesettings_update}
    go back

Verify CopyLeaks Settings
    click on button                                         ${externaltools_copyleakssettings}
    sleep                                                   5
    wait until element is visible                           ${copyleakssettings_h}                20
    page should contain element                             ${copyleakssettings_h}
    page should contain element                             ${copyleakssettings_email}
    page should contain element                             ${copyleakssettings_key}
    page should contain element                             ${copyleakssettings_isactive?}
    page should contain element                             ${copyleakssettings_submit}
    go back