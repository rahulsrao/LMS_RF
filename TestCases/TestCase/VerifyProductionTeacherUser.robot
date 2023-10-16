*** Settings ***
Documentation     Test Suit to Verify Teacher User of University
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
Resource         ../../Resources/TestData/TestData.robot
#Suite Teardown    logout

*** Test Cases ***
#Change the Student Attribute to  Student House           Attribute 2
# Delete the  QA Test (Student) from users
# Create and add Zoom JWT to ART TEST BATCH

#-------------------------------------------------------------------------------------------
verify Login
    Login.Login                             ${purl}    ${Teacher}       ${password}
##-------------------------------------------------------------------------------------------
#Verify SideMenu
#    sidemenu.verify sidemenu buttons
##-------------------------------------------------------------------------------------------
#Verify Dashboard
#    SideMenu.click on Dashboard button
#    DashBoard.Verify Dashboard Page of Teacher User
#    DashBoard.Verify a Course in Dashboard
#
##-------------------------------------------------------------------------------------------
#Verify My Courses
#    MyCourses.Verify My Courses page of Teacher User       ART         ART BATCH ONE       ART BATCH TWO
#
##-------------------------------------------------------------------------------------------
#Verify Course
#    AdminCourseDashBoardPage.Verify Course Dashboard with Coursemap             ${course}      ${Batch2}           ${prodStudent}       ${Module}       ${PrAdminTeacherN}
#    AdminCourseDashBoardPage.Verify Course Pages                                ${Pschool}
#    AdminCourseDashBoardPage.Verify Course Video                                ${Pschool}
#    CourseDashBoardPage.Verify Course Collections
#    CourseDashBoardPage.Verify Course Assignment
#    AdminCourseDashBoardPage.Verify Course Tests                                ${Test}                 ${course}       ${module}
#    CourseDashBoardPage.Verify Course StudentProjects
#    CourseDashBoardPage.Verify Course Discussions
#    AdminCourseDashBoardPage.Verify Course LessonPlan                           ${Pschool}              ${LessonPlan1}
#    CourseDashBoardPage.Verify Course Zoom
#
##-------------------------------------------------------------------------------------------
#Verify Attendence
#    Attendance.Verify BatchGroup Attendance page        BATCH GROUP ONE         05/04/2023
#    Attendance.verify batch attendance page             ART BATCH ONE           05/04/2023      Module 2
#    Attendance.Verify BatchGroup Report                 BATCH GROUP ONE         01/01/2022      05/04/2023
#    Attendance.Verify Batch Report                      ART BATCH ONE           01/01/2022      05/04/2023
#
##-------------------------------------------------------------------------------------------
#Verify Wall Page
#    SideMenu.Click on Wall button
#    wallpage.Verify Wall Page of Teacher User
#
##-------------------------------------------------------------------------------------------
#Verify Content Page
#    SideMenu.Click on Content button
#    ContentPage.wait until Content heading present
#    ContentPage.Verify Content Page                     ${Pschool}
#
##-------------------------------------------------------------------------------------------
#Verify Discussion Forums Page
#    SideMenu.Click on Discussion Forums button
#    DiscussionForumsPage.Verify Discussion Forums page
#
##-------------------------------------------------------------------------------------------
#Verify Games Page
#    SideMenu.click on games button
#    Games.Verify Games Page
#
##-------------------------------------------------------------------------------------------
#Verify Gradebook Page
#    SideMenu.click on gradebook button
#    Gradebook.Verify Gradebook Page                 ${prodStudent1}
#
##-------------------------------------------------------------------------------------------
#Verify StudentPreview Page
#    SideMenu.click on StudentPreview button
#    StudentPreview.verify student Preview page       ${batch1}          ${prodStudent1}
#
##-------------------------------------------------------------------------------------------
#Verify a Course map
#    SideMenu.click on CourseMap button
#    CourseMap.Verify a Batch in Course map           ${PBatch1}         ${CourseDescription}      ${CourseDuration}     ${batch1}     ${Date3}        ${Date4}        ${Module1}
#
##-------------------------------------------------------------------------------------------
#Verify Search map
#    SideMenu.click on Search button
#    SearchPage.verify Search page
#
##-------------------------------------------------------------------------------------------
#Verify Calendar Page
#    SideMenu.click on Calender button
#    CalendarPage.verify Calendar Page
#
##-------------------------------------------------------------------------------------------
#Verify Inbox page
#    SideMenu.click on inbox button
#    InboxPage.verify Inbox page
#
##-------------------------------------------------------------------------------------------
#Verify Zoom page
#    SideMenu.click on ZoomMeeting button
#    ZoomPage.verify Zoom page
#
##-------------------------------------------------------------------------------------------
#verify MicrosoftTeam
#    SideMenu.click on MicrosoftTeam button
#    MicrosoftTeamPage.verify MicrosoftTeam meeting
#
##-------------------------------------------------------------------------------------------
#verify Mentoring page
#    SideMenu.click on Mentoring button
#    MentoringPage.verify Microsoft Team Conferences page
#
##-------------------------------------------------------------------------------------------
#verify OneNote
#    SideMenu.click on OneNote button
#    OneNotePage.verify OneNote page
#
##-------------------------------------------------------------------------------------------
#verify Reports
#    SideMenu.click on Reports button
#    ReportsPage.verify Reports                ${Term}       ${level}        ${Course1}      ${BatchType}        ${Batch3}        ${Program}       ${StudentH}       ${BatchGrp}        ${status}     ${PrAdminTeacherN}        ${TestType}     ${pass%}        ${prodStudent}

##-------------------------------------------------------------------------------------------
#verify System Settings page
#    SideMenu.click on System Settings button
#    SystemSettings.Verify Teacher User System Settings       ${level}        ${Course2}     ${Module}      ${Concept1}      ${Term}      ${OrgName}     ${Program}    ${Batch4}     ${StudentH}     ${BatchGrp}         ${prodStudent1}