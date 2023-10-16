*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/BadgesInformation.robot

*** Keywords ***
Verify Badges Information
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    sleep                                   5
    page should contain element             ${badgesinformation_h}
    verify badges information table headers
    verify badges information badges
    close window
    ${handles1}=                            Get Window Handles
    switch window                           ${handles1}[0]

Verify Badges Information Table Headers
    page should contain element             ${badgesinformation_badgename_th}
    page should contain element             ${badgesinformation_badge_th}
    page should contain element             ${badgesinformation_description_th}

Verify Badges Information Badges
    wait until element is visible           ${badgesinformation_starperformer}                  120
    page should contain element             ${badgesinformation_starperformer}
    page should contain element             ${badgesinformation_moduleleader}
    page should contain element             ${badgesinformation_coursecompleted}
    page should contain element             ${badgesinformation_conceptleader}
    page should contain element             ${badgesinformation_testtopper}
    page should contain element             ${badgesinformation_assignmentstopper}
    page should contain element             ${badgesinformation_moststudious}
    page should contain element             ${badgesinformation_bingewatcher}
    page should contain element             ${badgesinformation_discussiontopper}
    page should contain element             ${badgesinformation_mostpunctual}