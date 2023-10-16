*** Settings ***
Documentation   All the keywords of Side Menu
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SideMenu.robot

*** Keywords ***
Verify Sidemenu buttons
    verify button                                   ${btn_Dashboard}
    verify button                                   ${btn_Wall}
    verify button                                   ${btn_content}
    verify button                                   ${btn_btnDiscussionForums}
    verify button                                   ${btnGames}
    verify button                                   ${btnGradebook}
    verify button                                   ${btnstudentpreview}
    verify button                                   ${btnSearch}
    verify button                                   ${btnCalendar}
    verify button                                   ${btnInbox}
    verify button                                   ${btnzoomconferences}
    verify button                                   ${btnMicrosoftTeamConferences}
    verify button                                   ${btnMentoring}
    verify button                                   ${btnOneNote}
    verify button                                   ${btnReports}
    verify button                                   ${btnSystemSettings}
    mouse out                                       ${btnSystemSettings}

Verify Student User Sidemenu buttons
    verify button                                   ${btn_Dashboard}
    verify button                                   ${btn_Wall}
    verify button                                   ${btn_content}
    verify button                                   ${btn_btnDiscussionForums}
    verify button                                   ${btnGames}
    verify button                                   ${btnGradebook}
    verify button                                   ${btnstudentpreview}
    verify button                                   ${btnSearch}
    verify button                                   ${btnCalendar}
    verify button                                   ${btnInbox}
    verify button                                   ${btnzoomconferences}
    verify button                                   ${btnMicrosoftTeamConferences}
    verify button                                   ${btnstdMentoring}
    verify button                                   ${btnOneNote}
    mouse out                                       ${btnOneNote}

Click on Content button
    click on menu button                             ${btn_content}

Click on Wall button
    click on menu button                             ${btn_Wall}

Click on Discussion Forums button
    click on menu button                             ${btn_btndiscussionforums}

click on games button
    click on menu button                             ${btngames}

click on gradebook button
    click on menu button                             ${btnGradebook}

click on StudentPreview button
    click on menu button                             ${btnstudentpreview}

click on CourseMap button
    click on menu button                             ${btncoursemap}

click on Search button
    click on menu button                             ${btnsearch}

click on Calender button
    click on menu button                             ${btncalendar}

click on inbox button
    click on menu button                             ${btnInbox}

click on ZoomMeeting button
     click on menu button                            ${btnZoomConferences}

click on MicrosoftTeam button
    click on menu button                             ${btnmicrosoftteamconferences}

click on Mentoring button
    click on menu button                             ${btnmentoring}

click on Student Mentoring button
    click on menu button                             ${btnstdMentoring}

click on OneNote button
    click on menu button                             ${btnOneNote}

click on Reports button
    click on menu button                             ${btnreports}

click on System Settings button
    click on menu button                             ${btnsystemsettings}

click on Dashboard button
    click on menu button                             ${btn_dashboard}