*** Settings ***
Documentation   All the keywords of Dashborad Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/DashBoard.robot
Resource        ../../Resources/TestData/TestData.robot
Library           ../../Generic/DashBoard.py

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Organization name
    [Arguments]     ${Oranization}
    Element Text Should Be          ${h_Organization}        ${Oranization}
    Printvalue                      ${Oranization}

#-------------------------------------------------------------------------------------------
Verify Dashboard Page
    wait until Element is present in the page      ${h_MyCourses}
    Element Text Should Be                         ${h_MyCourses}           My Courses
    ${TName}=                                      getCoursesCount
    Printvalue                                     There are ${TName} Courses in Dashboard
    Element Text Should Be                         ${hRecentWallPosts}       Recent Wall Posts
    Element Text Should Be                         ${hRecentDiscussions}     Recent Discussions
    Element Text Should Be                         ${hUpcomingEvents}        Upcoming Events
    page should contain element                    ${hConferencesScheduled}
    page should contain checkbox                   ${ckbMyMeetings}
    page should contain element                    ${btnAddMore}

#-------------------------------------------------------------------------------------------
Verify Dashboard Page of Teacher User
    wait until Element is present in the page      ${h_MyCourses}
    Element Text Should Be                         ${h_MyCourses}            My Courses
    ${TName}=                                      getCoursesCount
    Printvalue                                     There are ${TName} Courses in Dashboard
    Element Text Should Be                         ${hRecentWallPosts}       Recent Wall Posts
    Element Text Should Be                         ${hRecentDiscussions}     Recent Discussions
    Element Text Should Be                         ${hUpcomingEvents}        Upcoming Events
    page should contain element                    ${hConferencesScheduled}
    page should contain checkbox                   ${ckbMyMeetings}

#-------------------------------------------------------------------------------------------
Verify Add More Button functionality
    click element                                    ${btnAddMore}
    wait until Element is present in the page        ${hCourses}
    element text should be                           ${hCourses}               Courses
    go back

#-------------------------------------------------------------------------------------------
Verify a Course in Dashboard
     wait until Element is present in the page        ${h_MyCourses}
     sleep                                            5
     dashboard.clickonacourse                         1
     sleep                                            10
     wait until Element is present in the page        ${hCourseName}
     ${Course}=     Get Text                          ${hCourseName}
     printvalue                                       ${Course}
     go back
     sleep                                            10

#-------------------------------------------------------------------------------------------
Verify Dashboard Page of Student User
    wait until Element is present in the page      ${h_MyCourses}
    Element Text Should Be                         ${h_MyCourses}            My Courses
    ${TName}=                                      getCoursesCount
    Printvalue                                     There are ${TName} Courses in Dashboard
    Element Text Should Be                         ${hRecentWallPosts}       Recent Wall Posts
    Element Text Should Be                         ${hRecentDiscussions}     Recent Discussions
    Element Text Should Be                         ${hUpcomingEvents}        Upcoming Events
    page should contain element                    ${hConferencesScheduled}
    page should contain element                    ${h_suggestedlearning}
    page should contain element                    ${assignmentsdue}
    page should contain element                    ${upcomingtests}

#-------------------------------------------------------------------------------------------
Verify Add more button
    DashBoard.Click on AddMore button
    DashBoard.Verify Self Enrolment window

#-------------------------------------------------------------------------------------------
Click on AddMore button
    page should contain element                      ${btnAddMore}
    click element                                    ${btnAddMore}
    sleep                                            5

#-------------------------------------------------------------------------------------------
Verify Self Enrolment window
    wait until Element is present in the page        ${hselfenrolment}
    page should contain element                      ${hselfenrolment}
    page should contain element                      ${close_selfenrolment}
    click element                                    ${close_selfenrolment}
    wait until Element is present in the page        ${btnAddMore}