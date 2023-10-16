*** Settings ***
Documentation     Smoke Test
Library           SeleniumLibrary
Library           Collections
Resource          ../../PageObjects/Generic.robot
Resource          ../../Resources/KeywordDefinationFiles/Login.robot
Resource          ../../Resources/KeywordDefinationFiles/LogOut.robot
Resource          ../../Resources/KeywordDefinationFiles/MyCourses.robot
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
Resource         ../../Resources/KeywordDefinationFiles/CreateVideo.robot
Resource         ../../Resources/KeywordDefinationFiles/Create_Page.robot
Resource         ../../Resources/KeywordDefinationFiles/CreateCollections.robot
Resource         ../../Resources/KeywordDefinationFiles/DiscussionForumsPage.robot
Resource         ../../Resources/KeywordDefinationFiles/Create_LessonPlan.robot
Resource         ../../Resources/KeywordDefinationFiles/Courses_Zoom.robot
Resource          ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Course Dashboard
    MyCourses.Click on Course      ${course}       ${Batch2}
    verify course dashboard page   ${Batch2}
    click on course progress bar
    Verify Course Progress
    click on course learn
    go back
    sleep               8
    click on course learn
    verify Learn Page
    click on reports
    verify course report
    click on question report
    verify question report
    verify download Assignments Report
    click on attendance report
    BatchReport.verify batch report
    BatchReport.Click on Go Back To Take Attedence
#    click on take attendence
    BatchGroup_Attendance.verify batchgroup page
    click on more
    click on manage pages
    Verify Manage Pages
    click on more
    click on manage lesson plan
    managelessonplans.verify manage lesson plan
    click on more
    click on students credits & certificates
    studentscredits&certificates.verify students credits & certificates page        ${student3}
    click on more
    click on activate gradebook
    cancel activate gradebook
    click on more
    click on enrolment settings
    EnrolmentSettings.verify enrolment settings
    click on more
    click on 1:1 mentoring settings
    click on mentoring settings
    click on badges information
    verify badges information
    click on view latest awarded badges
    Verify Badges Awarded
    verify enrolment list                  ${student3}
    click on course map
    verify course map                      ${Batch2}
    Verify Manage Fees
    verify module restrictions
    Verify Module active
    Verify Edit Lead Teacher For Module    ${module}       ${teacher1}
    Verify Leader For Module
    click on learn button of module        ${module}
    learn.verify Learn Page
    click on score button of module        ${module}
    verify students score analysis
    go back
    sleep                                   5
    Course_DashBoard.Verify Edit module
##-------------------------------------------------------------------------------------------
Verify Course Pages
    Course_DashBoard.Verify Course Pages         ${page1}        ${course}       ${module}
    Course_DashBoard.Click on EditPage           ${page1}
    Create_Page.verify page title                ${page1}
    go back
    handle alert                ACCEPT
    sleep                       5
    MyCourses.click on course             ${course}       ${batch2}
    Course_DashBoard.Click on Pages Tab
    Course_DashBoard.Click on CreatePages
    Create_Page.verify create page          ${page2}        Testing Page        ${school}       ${course}       ${module}           Section 1     ${pagedata}
#-------------------------------------------------------------------------------------------
Verify Course Video
    Course_DashBoard.Verify Course Videos        ${video}        ${course}       ${module}
    Course_DashBoard.Click on EditVideo          ${video}
    CreateVideo.Verify video page                ${video}
    sleep                                        5
    MyCourses.click on course                    ${course}       ${batch2}
    Course_DashBoard.click on video tab
    Course_DashBoard.Click on CreateVideos
    CreateVideo.Create a Video                   ${video}        Planet Earth      ${school}       ${course}       ${module}       Learn
#-------------------------------------------------------------------------------------------
Verify Course Collections
    Course_DashBoard.Verify Course Collections                    ${Collection2}        ${course}       ${module}
    Course_DashBoard.Click on EditCollection     ${Collection2}
    CreateCollections.Verify collection page     ${Collection2}
    Course_DashBoard.Click on CreateCollection
    CreateCollections.Create a collection        ${Collection1}        ${CollectionDescription}      ${course}       ${module}      ${page}
#-------------------------------------------------------------------------------------------
Verify Course Assignment
    Course_DashBoard.Verify Course Assignment                       ${Assignment}           ${course}       ${module}
#-------------------------------------------------------------------------------------------
Verify Course Tests
    Course_DashBoard.Verify Course Tests                            ${Test}                 ${course}       ${module1}
#-------------------------------------------------------------------------------------------
Verify Course StudentProjects
    Course_DashBoard.Verify Course Student Projects                 ${studentproject}       ${course}       ${module1}
#-------------------------------------------------------------------------------------------
Verify Course Discussions
    Course_DashBoard.Verify Course Discussions                      ${discussions}           ${course}       ${module}
    Course_DashBoard.Click on Create Discussion
    DiscussionForumsPage.verify Create Discussion Page
#-------------------------------------------------------------------------------------------
Verify Course LessonPlan
    Course_DashBoard.Verify Course Lesson Plan                      ${LessonPlan1}           ${course}       ${module}
    Course_DashBoard.Click on Edit Lesson Plan                      ${LessonPlan1}
    Create_LessonPlan.Verify LessonPlan Title                       ${LessonPlan1}
    Course_DashBoard.Click on Create Lesson Plan
    Create_LessonPlan.Verify Create LessonPlan                      ${LessonPlan1}           Test Lesson Plan Summary    ${school}       ${course}       ${module}       Test Lesson Plan Title       Test Lesson Plan Details
#-------------------------------------------------------------------------------------------
Verify Course Zoom
    Course_DashBoard.Verify Courses Zoom                            All
#    Course_DashBoard.Click on Zoom Settings
#    Courses_Zoom.verify Zoom setting                                ${JWTToken}
    Course_DashBoard.Click on Create Meeting
    Courses_Zoom.verify Zoom Meeting Create Configuration window


