*** Settings ***
Documentation   All the keywords of Top Menu
Library         SeleniumLibrary
Resource        ../../PageObjects/TopMenu.robot

*** Keywords ***
##-------------------------------------------------------------------------------------------
#logout
#    wait until Element is present in the page       ${btnUserProfile}
#    verify button                                   ${btnUserProfile}
#    click element                                   ${btnUserProfile}
#    wait until element is visible                   ${btnLogout}                           15
#    verify button                                   ${btnLogout}
#    click element                                   ${btnLogout}
#    sleep                                           5
#    page should contain element                     ${btnSignout}
#    page should contain element                     ${btnCancel}
#    click element                                   ${btnSignout}

##-------------------------------------------------------------------------------------------
Subscription
    click element                                  ${btnUserProfile}
    verify button                                  ${btnSubscription}
    click element                                  ${btnSubscription}
    sleep                                          5
#-------------------------------------------------------------------------------------------
Support
    click element                                  ${btnUserProfile}
    verify button                                  ${btnSupport}
    click element                                  ${btnSupport}
    sleep                                          5
#-------------------------------------------------------------------------------------------
Click on My Learning Plan
    page should contain element                    ${mylearningplan}
    click on button                                ${mylearningplan}
    sleep                                          5

#-------------------------------------------------------------------------------------------
Click on Coin Transactions
    page should contain element                    ${coinstransactions}
    click on button                                ${coinstransactions}
    sleep                                          5

#-------------------------------------------------------------------------------------------
Click on Achievements
    page should contain element                    ${achievements}
    click on button                                ${achievements}
    sleep                                          5
