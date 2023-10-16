*** Settings ***
Documentation     Test Suit to Verify Staging Student User
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
Resource         ../../Resources/KeywordDefinationFiles/CourseDashBoardPage.robot
Resource         ../../Resources/KeywordDefinationFiles/AdminCourseDashBoardPage.robot
Resource         ../../Resources/KeywordDefinationFiles/StudentCourseDashBoardPage.robot
Resource         ../../Resources/KeywordDefinationFiles/TopMenu.robot
Resource         ../../Resources/KeywordDefinationFiles/MyLearningPlan.robot
Resource         ../../Resources/KeywordDefinationFiles/CoinTransactions.robot
Resource         ../../Resources/KeywordDefinationFiles/SupportPage.robot
Resource         ../../Resources/TestData/TestData.robot
Suite Teardown    logout

*** Test Cases ***
#-------------------------------------------------------------------------------------------
Verify Login
    [Tags]    Regression    StudentUser     LoginPage
    [Documentation]     Verifying login page and Logging in
    Login.Login         ${surl}    ${StudentUsernameStg}       ${password}

##-------------------------------------------------------------------------------------------
#Verify SideMenu
#    [Tags]    Regression    StudentUser     SideMenu
#    [Documentation]     Verifying Side Menu
#    sidemenu.Verify Student User Sidemenu buttons
#
##-------------------------------------------------------------------------------------------
#Verify Dashboard
#    [Tags]    Regression    StudentUser     Dashboard
#    [Documentation]     Verifying Dashboard
#    SideMenu.click on Dashboard button
#    DashBoard.Verify Dashboard Page of Student User
#    DashBoard.Verify Add more button
#    DashBoard.Verify a Course in Dashboard
#
##-------------------------------------------------------------------------------------------
#Verify My Courses
#    [Tags]    Regression    StudentUser     MyCourses
#    [Documentation]     Verifying My Courses
#    MyCourses.Verify My Courses page of Student User       ART BATCH ONE       HISTORY BATCH ONE
#
##-------------------------------------------------------------------------------------------
#Verify Learning Plan
#    [Tags]    Regression    StudentUser     LearningPlan
#    [Documentation]     Verifying Learning Plan
#    TopMenu.Click on My Learning Plan
#    MyLearningPlan.Verify My Learning Plan page of Student user
#
##-------------------------------------------------------------------------------------------
#Verify Coin Transactions
#    [Tags]    Regression    StudentUser     CoinTransactions
#    [Documentation]     Verifying Coin Transactions
#    TopMenu.Click on Coin Transactions
#    CoinTransactions.Verify Coin Transactions of Student user           ${studentUser}
#
##-------------------------------------------------------------------------------------------
#Verify Achievements of Student user
#    [Tags]    Regression    StudentUser     Achievements
#    [Documentation]     Verifying Achievements of Student user
#    TopMenu.Click on Achievements
#    Achievements.Verify Achievements page of Student user               ${achievement}          ${studentUser}
#
##-------------------------------------------------------------------------------------------
#Verify Subscription Page
#    [Tags]    Regression    StudentUser     Achievements
#    [Documentation]     Verifying Subscription Page
#    TopMenu.Support
#    SupportPage.Verify Page
#
##-------------------------------------------------------------------------------------------
#Verify Course Dashboard Page
#    [Tags]    Regression    StudentUser     CourseDashboard
#    [Documentation]     Verifying Course Dashboard
#    StudentCourseDashBoardPage.Verify Dashboard page of student user            ${Batch1}       ${Module}       ${Course}       ${teacher1}      ${student}     ${TestDuration}     ${conceptn}
#    StudentCourseDashBoardPage.Verify Student user Pages of the Course          ${SPage}        ${Batch1}
#    StudentCourseDashBoardPage.Verify Student user Video of the Course          ${video}
#    StudentCourseDashBoardPage.Verify Student user Collection of the Course     ${CollectionN}
#    StudentCourseDashBoardPage.Verify Student user Assignment of the Course     ${Assignment}
#    StudentCourseDashBoardPage.Verify Student user Tests of the Course          ${Batch1}              ${TestStatus}         ${StudentTest}
#    StudentCourseDashBoardPage.Verify Student user Project of the Course        ${Projects_name}       ${P_Description}      ${school}           ${course}      ${module}          ${Project_Section_h}     ${Project_Section_description}
#    StudentCourseDashBoardPage.Verify Student user Discussions of the Course    ${Discussions}
##    StudentCourseDashBoardPage.Verify Student user Zoom of the Course
#
##-------------------------------------------------------------------------------------------
#Verify Wall Page
#    [Tags]    Regression    StudentUser     WallPage
#    [Documentation]     Verifying Wall Page
#    SideMenu.Click on Wall button
#    wallpage.Verify Wall Page of Student User
#
##-------------------------------------------------------------------------------------------
#Verify Content Page
#    [Tags]    Regression    StudentUser     ContentPage
#    [Documentation]     Verifying Content Page
#    SideMenu.Click on Content button
#    ContentPage.wait until Content heading present
#    ContentPage.Verify Content Page of Student User             ${SPage}          ${video}      ${Collection2}          ${Assignment}       ${Batch1}   All   ${Test}       ${StudentProject}   ${P_Description}      ${school}       ${course}       ${module}          ${Project_Section_h}     ${Project_Section_description}
#
##-------------------------------------------------------------------------------------------
#Verify Discussion Forums Page
#    [Tags]    Regression    StudentUser     DiscussionForums
#    [Documentation]     Verifying Discussion Forums Page
#    SideMenu.Click on Discussion Forums button
#    DiscussionForumsPage.Verify Discussion Forums page of student user
#
##-------------------------------------------------------------------------------------------
#Verify Games Page
#    [Tags]    Regression    StudentUser     Games
#    [Documentation]     Verifying Games Page
#    SideMenu.click on games button
#    Games.Verify Games Page
#
##-------------------------------------------------------------------------------------------
#Verify Gradebook Page
#    [Tags]    Regression    StudentUser     GradeBook
#    [Documentation]     Verifying Gradebook Page
#    SideMenu.click on gradebook button
#    Gradebook.Verify Gradebook Page                 ${studentUser}
#
##-------------------------------------------------------------------------------------------
#Verify StudentPreview Page
#    [Tags]    Regression    StudentUser     StudentPreview
#    [Documentation]     Verifying StudentPreview Page
#    SideMenu.click on StudentPreview button
#    StudentsProfile.verify Student profile details page      ${studentUser}     ${Term}        ${Course}
#
##-------------------------------------------------------------------------------------------
#Verify a Coursemap
#    [Tags]    Regression    StudentUser     Coursemap
#    [Documentation]     Verifying CourseMap Page
#    SideMenu.click on CourseMap button
#    CourseMap.Verify a Batch in Course map of student user           ${Batch1}  ${Module1}
#
##-------------------------------------------------------------------------------------------
#Verify Search Page
#    [Tags]    Regression    StudentUser     SearchPage
#    [Documentation]     Verifying Search Page
#    SideMenu.click on Search button
#    SearchPage.verify Search page of student user
#
##-------------------------------------------------------------------------------------------
#Verify Calendar Page
#    [Tags]    Regression    StudentUser     CalendarPage
#    [Documentation]     Verifying Calendar Page
#    SideMenu.click on Calender button
#    CalendarPage.verify Calendar Page
#
##-------------------------------------------------------------------------------------------
#Verify Inbox page
#    [Tags]    Regression    StudentUser     InboxPage
#    [Documentation]     Verifying Inbox Page
#    SideMenu.click on inbox button
#    InboxPage.verify Inbox page
#
##-------------------------------------------------------------------------------------------
#Verify Zoom page
#    [Tags]    Regression    StudentUser     ZoomPage
#    [Documentation]     Verifying Zoom Conferences Page
#    SideMenu.click on ZoomMeeting button
#    ZoomPage.verify Zoom Conferences page of Student user                   ${Batch1}
#
##-------------------------------------------------------------------------------------------
#verify MicrosoftTeam
#    [Tags]    Regression    StudentUser     MicrosoftConferences
#    [Documentation]     Verifying MicrosoftTeam Page
#    SideMenu.click on MicrosoftTeam button
#    MicrosoftTeamPage.verify MicrosoftTeam meeting
#
##-------------------------------------------------------------------------------------------
#verify Mentoring page
#    [Tags]    Regression    StudentUser     Mentoring
#    [Documentation]     Verifying Mentoring Page
#    SideMenu.click on Mentoring button
#    MentoringPage.verify mentoring page of Student user
#
##-------------------------------------------------------------------------------------------
#verify OneNote
#    [Tags]    Regression    StudentUser     OneNote
#    [Documentation]     Verifying OneNote Page
#    SideMenu.click on OneNote button
#    OneNotePage.verify OneNote page