*** Settings ***
Documentation     Test Suit to Verify Admin Teacher User of University
#Suite Setup       Navigate to Url page
Library           SeleniumLibrary
Library           Collections
Resource          ../../PageObjects/Generic.robot
Resource          ../../Resources/KeywordDefinationFiles/Login.robot
Resource          ../../Resources/KeywordDefinationFiles/LogOut.robot
Resource          ../../Resources/KeywordDefinationFiles/SideMenu.robot
Resource          ../../Resources/KeywordDefinationFiles/Wallpage.robot
Resource          ../../Resources/KeywordDefinationFiles/ContentPage.robot
Resource          ../../Resources/KeywordDefinationFiles/DiscussionForumsPage.robot
Resource          ../../Resources/KeywordDefinationFiles/Games.robot
Resource          ../../Resources/KeywordDefinationFiles/Gradebook.robot
Resource          ../../Resources/KeywordDefinationFiles/StudentPreview.robot
Resource          ../../Resources/KeywordDefinationFiles/CourseMap.robot
Resource          ../../Resources/KeywordDefinationFiles/SearchPage.robot
Resource          ../../Resources/KeywordDefinationFiles/CalendarPage.robot
Resource          ../../Resources/KeywordDefinationFiles/InboxPage.robot
Resource          ../../Resources/KeywordDefinationFiles/ZoomPage.robot
Resource          ../../Resources/KeywordDefinationFiles/MicrosoftTeamPage.robot
Resource          ../../Resources/KeywordDefinationFiles/MentoringPage.robot
Resource          ../../Resources/KeywordDefinationFiles/OneNotePage.robot
Resource          ../../Resources/KeywordDefinationFiles/ReportsPage.robot
Resource          ../../Resources/KeywordDefinationFiles/SystemSettings.robot
Resource          ../../Resources/KeywordDefinationFiles/MyCourses.robot
Resource          ../../Resources/KeywordDefinationFiles/DashBoard.robot
Resource          ../../Resources/KeywordDefinationFiles/Course_DashBoard.robot
Resource          ../../Resources/KeywordDefinationFiles/Course_ProgressGraph.robot
Resource          ../../Resources/KeywordDefinationFiles/Learn.robot
Resource          ../../Resources/KeywordDefinationFiles/Course_Reports.robot
Resource          ../../Resources/KeywordDefinationFiles/QuestionReport.robot
Resource          ../../Resources/KeywordDefinationFiles/BatchReport.robot
Resource          ../../Resources/KeywordDefinationFiles/BatchGroup_Attendance.robot
Resource          ../../Resources/KeywordDefinationFiles/ManagePages.robot
Resource          ../../Resources/KeywordDefinationFiles/ManageLessonPlans.robot
Resource         ../../Resources/KeywordDefinationFiles/StudentsCredits&Certificates.robot
Resource         ../../Resources/KeywordDefinationFiles/EnrolmentSettings.robot
Resource         ../../Resources/KeywordDefinationFiles/BadgesInformation.robot
Resource         ../../Resources/KeywordDefinationFiles/BadgesAwarded.robot
Resource         ../../Resources/KeywordDefinationFiles/EnrollmentList.robot
Resource         ../../Resources/KeywordDefinationFiles/StudentsScoreAnalysis.robot
Resource         ../../Resources/KeywordDefinationFiles/CourseMap.robot
Resource         ../../Resources/KeywordDefinationFiles/Attendance.robot
Resource         ../../Resources/KeywordDefinationFiles/AdminCourseDashBoardPage.robot
Resource         ../../Resources/TestData/TestData.robot
Suite Teardown    logout

*** Test Cases ***
#Change the Student Attribute to  Student House           Attribute 2
# Delete the  QA Test (Student) from users
# Delete ART TEST BATCH

#-------------------------------------------------------------------------------------------
verify Login
    [Tags]    Regression    AdminTeacherUser     LoginPage
    [Documentation]     Verifying login page and Logging in
     Login.Login        ${surl}    ${AdminTeacher}       ${password}
#-------------------------------------------------------------------------------------------
Verify Dashboard
    [Tags]    Regression    AdminTeacherUser     Dashboard
    [Documentation]     Verifying Dashboard
    SideMenu.click on Dashboard button
    DashBoard.Verify Dashboard Page
    DashBoard.Verify Add More Button functionality
    DashBoard.Verify a Course in Dashboard
#-------------------------------------------------------------------------------------------
Verify My Courses
    [Tags]    Regression    AdminTeacherUser     MyCourses
    [Documentation]     Verifying My Courses
    MyCourses.Verify My Courses page        ART         ART BATCH ONE       ART BATCH TWO

#-------------------------------------------------------------------------------------------
Verify Course Dashboard
    [Tags]    Regression    AdminTeacherUser     CourseDashboard
    [Documentation]     Verifying Course Dashboard
    AdminCourseDashBoardPage.Verify Course Dashboard
    AdminCourseDashBoardPage.Verify Course Pages            ${school}
    AdminCourseDashBoardPage.Verify Course Video            ${school}
    AdminCourseDashBoardPage.Verify Course Collections
    AdminCourseDashBoardPage.Verify Course Assignment
    AdminCourseDashBoardPage.Verify Course Tests            ${Test}     ${course}       ${module1}
    AdminCourseDashBoardPage.Verify Course StudentProjects
    AdminCourseDashBoardPage.Verify Course Discussions
    AdminCourseDashBoardPage.Verify Course LessonPlan       ${school}   ${LessonPlan}
    AdminCourseDashBoardPage.Verify Course Zoom

#-------------------------------------------------------------------------------------------
Verify Attendence
    [Tags]    Regression    AdminTeacherUser     AttendencePage
    [Documentation]     Verifying Attendence Page
    Attendance.Verify BatchGroup Attendance page        BATCH GROUP FIVE     05/04/2023
    Attendance.verify batch attendance page             ART BATCH ONE        05/04/2023      Module 2
    Attendance.Verify BatchGroup Report                 BATCH GROUP FIVE     01/01/2022      05/04/2023
    Attendance.Verify Batch Report                      ART BATCH ONE        01/01/2022      05/04/2023

#-------------------------------------------------------------------------------------------
Verify SideMenu
     [Tags]    Regression    AdminTeacherUser     SideMenu
    [Documentation]     Verifying Side Menu
    sidemenu.verify sidemenu buttons

#-------------------------------------------------------------------------------------------
Verify Wall Page
     [Tags]    Regression    AdminTeacherUser     WallPage
    [Documentation]     Verifying Wall Page
    SideMenu.Click on Wall button
    wallpage.Verify Wall Page of Admin Teacher User

#-------------------------------------------------------------------------------------------
Verify Content Page
    [Tags]    Regression    AdminTeacherUser     ContentPage
    [Documentation]     Verifying Content Page
    SideMenu.Click on Content button
    ContentPage.wait until Content heading present
    ContentPage.Verify Content Page                 ${school}

#-------------------------------------------------------------------------------------------
Verify Discussion Forums Page
    [Tags]    Regression    AdminTeacherUser     DiscussionForums
    [Documentation]     Verifying Discussion Forums Page
    SideMenu.Click on Discussion Forums button
    DiscussionForumsPage.Verify Discussion Forums page

#-------------------------------------------------------------------------------------------
Verify Games Page
    [Tags]    Regression    AdminTeacherUser     Games
    [Documentation]     Verifying Games Page
    SideMenu.click on games button
    Games.Verify Games Page

#-------------------------------------------------------------------------------------------
Verify Gradebook Page
    [Tags]    Regression    AdminTeacherUser     GradeBook
    [Documentation]     Verifying Gradebook Page
    SideMenu.click on gradebook button
    Gradebook.Verify Gradebook Page                 ${Student}

#-------------------------------------------------------------------------------------------
Verify StudentPreview Page
    [Tags]    Regression    AdminTeacherUser     StudentPreview
    [Documentation]     Verifying StudentPreview Page
    SideMenu.click on StudentPreview button
    StudentPreview.verify student Preview page of Student           ${batch1}          ${student}

#-------------------------------------------------------------------------------------------
Verify a Course map
    [Tags]    Regression    AdminTeacherUser     Coursemap
    [Documentation]     Verifying CourseMap Page
    SideMenu.click on CourseMap button
    CourseMap.Verify a Batch in Course map           ${batch2}         ${CourseDescription}      ${CourseDuration}     ${batch1}     ${Date3}        ${Date4}        ${Module1}

#-------------------------------------------------------------------------------------------
Verify Search map
    [Tags]    Regression    AdminTeacherUser     SearchPage
    [Documentation]     Verifying Search Page
    SideMenu.click on Search button
    SearchPage.verify Search page

#-------------------------------------------------------------------------------------------
Verify Calendar Page
    [Tags]    Regression    AdminTeacherUser     CalendarPage
    [Documentation]     Verifying Calendar Page
    SideMenu.click on Calender button
    CalendarPage.verify Calendar Page

#-------------------------------------------------------------------------------------------
Verify Inbox page
    [Tags]    Regression    AdminTeacherUser     InboxPage
    [Documentation]     Verifying Inbox Page
    SideMenu.click on inbox button
    InboxPage.verify Inbox page

#-------------------------------------------------------------------------------------------
Verify Zoom page
    [Tags]    Regression    AdminTeacherUser     ZoomPage
    [Documentation]     Verifying Zoom Conferences Page
    SideMenu.click on ZoomMeeting button
    ZoomPage.verify Zoom page

#-------------------------------------------------------------------------------------------
verify MicrosoftTeam
    [Tags]    Regression    AdminTeacherUser     MicrosoftConferences
    [Documentation]     Verifying MicrosoftTeam Page
    SideMenu.click on MicrosoftTeam button
    MicrosoftTeamPage.verify MicrosoftTeam meeting

#-------------------------------------------------------------------------------------------
verify Mentoring page
    [Tags]    Regression    AdminTeacherUser     Mentoring
    [Documentation]     Verifying Mentoring Page
    SideMenu.click on Mentoring button
    MentoringPage.verify Mentoring page

#-------------------------------------------------------------------------------------------
verify OneNote
    [Tags]    Regression    AdminTeacherUser     OneNote
    [Documentation]     Verifying OneNote Page
    SideMenu.click on OneNote button
    OneNotePage.verify OneNote page

#-------------------------------------------------------------------------------------------
verify Reports
    [Tags]    Regression    AdminTeacherUser     ReportsPage
    [Documentation]     Verifying Reports PageW
    SideMenu.click on Reports button
    ReportsPage.verify Reports                ${Term}       ${level}        ${Course1}      ${BatchType}        ${Batch3}        ${Program}       ${StudentH}       ${BatchGrp}        ${status}     ${TeacherN}        ${TestType}     ${pass%}        ${student}

#-------------------------------------------------------------------------------------------
verify System Settings page
    [Tags]    Regression    AdminTeacherUser     SystemSettings
    [Documentation]     Verifying System Settings
    SideMenu.click on System Settings button
    SystemSettings.Verify Admin Teacher User System Settings    ${level}        ${Course2}     ${Module}      ${Concept1}      ${Term}      ${OrgName}     ${Program}    ${Batch4}     ${StudentH}     ${BatchGrp}    ${student}