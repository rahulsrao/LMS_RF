*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/BadgesAwarded.robot

*** Keywords ***
Verify Badges Awarded
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    sleep                                   5
    page should contain element             ${BadgesAwarded_h}
    verify badges awarded table headers
    verify badges awarded badges
    click on a badges                       Star Performer
    verify awarded badges window
    page should contain element             ${badgesawarded_shareonwall}
    close window
    ${handles1}=                            Get Window Handles
    switch window                           ${handles1}[0]

Verify Badges Awarded Table Headers
    page should contain element             ${BadgesAwarded_badgename_th}
    page should contain element             ${BadgesAwarded_badge_th}
    page should contain element             ${BadgesAwarded_AwardedStudents_th}

Verify Badges Awarded Badges
    page should contain element             ${badgesawarded_starperformer}
    page should contain element             ${BadgesAwarded_moduleleader}
    page should contain element             ${BadgesAwarded_conceptleader}
    page should contain element             ${BadgesAwarded_testtopper}
    page should contain element             ${BadgesAwarded_assignmentstopper}
    page should contain element             ${BadgesAwarded_moststudious}
    page should contain element             ${BadgesAwarded_bingewatcher}
    page should contain element             ${BadgesAwarded_discussiontopper}
    page should contain element             ${BadgesAwarded_mostpunctual}

Click on a badges
    [Arguments]                             ${badges}
    page should contain element             xpath://td[normalize-space()='${badges}']
    click on button                         xpath://td[normalize-space()='${badges}']

Verify Awarded Badges window
    page should contain element             ${badgesawarded_awardedbadges_h}
    page should contain element             ${badgesawarded_awardedbadges_close}
    click on button                         ${badgesawarded_awardedbadges_close}
    sleep                                   3

Click on Share Badges on Wall
    page should contain element             ${badgesawarded_shareonwall}
    click on button                         ${badgesawarded_shareonwall}
    sleep                                   5