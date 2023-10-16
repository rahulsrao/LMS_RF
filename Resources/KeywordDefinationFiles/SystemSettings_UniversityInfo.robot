*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_UniversityInfo.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***

#-------------------------------------------------------------------------------------------
verify UniversityInfo
    [Documentation]  This test case verifies System Settings University Info page
    [Tags]  Settings
    wait until element is visible       ${huniversityinfo}
    page should contain element         ${hUniversityInfo}
    page should contain element         ${ui_name}
    page should contain element         ${ui_contacte-mail}
    page should contain element         ${ui_contactnumber}
    page should contain element         ${ui_contactaddress}
    page should contain element         ${ui_URL}
    page should contain element         ${ui_board}
    click on button                     ${ui_board}
    wait until element is visible       ${ui_opt_all}
    page should contain element         ${ui_opt_all}
    page should contain element         ${ui_opt_cbse}
    page should contain element         ${ui_opt_cbse-i}
    page should contain element         ${ui_opt_cie}
    page should contain element         ${ui_opt_ib}
    page should contain element         ${ui_opt_icse}
    scroll element into view            ${ui_opt_other}
    page should contain element         ${ui_opt_other}
    Press Keys                          ${hUniversityInfo}                   ESC
    wait until element is visible       ${ui_board}
    scroll element into view            ${ui_submit}
    page should contain element         ${ui_selectanimage}
    page should contain element         ${ui_submit}