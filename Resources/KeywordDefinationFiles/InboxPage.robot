*** Settings ***
Documentation   All the keywords of Inbox page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/InboxPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Inbox page
    InboxPage.verify Inbox Page details
    InboxPage.verify compose window
    sleep                                   5

verify Inbox Page details
    wait until element is visible           ${hinbox}                   120
    page should contain element             ${hinbox}
    page should contain element             ${ibx_search}
    page should contain element             ${btnforward}
    click on button                         ${btnforward}
    wait until element is visible           ${btnbackward}              120
    page should contain element             ${btnbackward}
    page should contain element             ${menu}
    mouse over                              ${btnforward}
    click element                           ${menu}
    set screenshot directory                ../TestCases/Screenshots/Inbox
    capture page screenshot
    page should contain element             ${profile}
    page should contain element             ${btninbox}
    page should contain element             ${btnsentmail}
    page should contain element             ${btnimportant}
    page should contain element             ${btndrafts}
    page should contain element             ${btnTrash}
    click element                           ${menu}
    sleep                                   5
    page should contain element             ${selectall}
    click on button                         ${selectall}
    wait until element is visible           ${delete}                   120
    page should contain element             ${delete}
    page should contain element             ${markasread}
    page should contain element             ${start}
    page should contain element             ${refresh}
    click on button                         ${refresh}
    page should contain element             ${selectfilter}
    page should contain element             ${filter}


verify compose window
    page should contain element             ${btncompose}
    click on button                         ${btncompose}
    ${visiblew}                 page should contain element             ${hcompose}
    IF         '${visiblew}' == 'False'
           click on button                  ${btncompose}
           wait until element is visible    ${hcompose}             120
    END
    page should contain element             ${to}
    page should contain element             ${Subject}
    page should contain element             ${message}
    page should contain element             ${saveasdraft}
    page should contain element             ${btnsend}
    page should contain element             ${ibx_close}
    click on button                         ${ibx_close}
