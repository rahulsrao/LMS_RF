*** Settings ***
Documentation   All the keywords of Top Menu
Library         SeleniumLibrary
Resource        ../../PageObjects/TopMenu.robot

*** Keywords ***
logout
    wait until Element is present in the page       ${btnUserProfile}
    verify button                                   ${btnUserProfile}
    click element                                   ${btnUserProfile}
    wait until element is visible                   ${btnLogout}                           15
    verify button                                   ${btnLogout}
    click element                                   ${btnLogout}
    sleep                                           5
    page should contain element                     ${btnSignout}
    page should contain element                     ${btnCancel}
    click element                                   ${btnSignout}
    Close Browser session