*** Settings ***
Documentation     Admin User Student User CourseDashBoard Page
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
Resource         ../../Resources/KeywordDefinationFiles/CalendarPage.robot
Resource         ../../Resources/KeywordDefinationFiles/ProficiencyAnalysis.robot
Resource         ../../Resources/KeywordDefinationFiles/CollectionPage.robot
Resource          ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Course Pages
    [Arguments]                                  ${schoolN}
    Course_DashBoard.Verify Course Pages         ${page1}        ${course}       ${module}
    Course_DashBoard.Click on EditPage           ${page1}
    Create_Page.verify page title                ${page1}
    go back
    handle alert                ACCEPT
    sleep                       5
    MyCourses.click on course             ${course}       ${batch2}
    Course_DashBoard.Click on Pages Tab
    Course_DashBoard.Click on CreatePages
    Create_Page.verify create page          ${page2}        Testing Page        ${schoolN}       ${course}       ${module}           Section 1     ${pagedata}
#-------------------------------------------------------------------------------------------
Verify Course Video
    [Arguments]                                  ${schoolN}
    Course_DashBoard.Verify Course Videos                         ${video}        ${course}       ${module}
    Course_DashBoard.Click on EditVideo          ${video}
    CreateVideo.Verify video page                ${video}
    sleep                                        5
    MyCourses.click on course                    ${course}       ${batch2}
    Course_DashBoard.click on video tab
    Course_DashBoard.Click on CreateVideos
    CreateVideo.Create a Video                   ${video}        Planet Earth      ${schoolN}       ${course}       ${module}       Learn
#-------------------------------------------------------------------------------------------
Verify Course Collections
    Course_DashBoard.Verify Course Collections                    ${Collection}        ${course}       ${module}
    Course_DashBoard.Click on EditCollection     ${Collection}
    CreateCollections.Verify collection page     ${Collection}
    Course_DashBoard.Click on CreateCollection
    CreateCollections.Create a collection        ${Collection1}        ${CollectionDescription}      ${course}       ${module}      ${page}
#-------------------------------------------------------------------------------------------
Verify Course Assignment
    Course_DashBoard.Verify Course Assignment                      ${Assignment}        ${course}       ${module}
#-------------------------------------------------------------------------------------------
Verify Course Tests
    [Arguments]                                                     ${TestN}                 ${courseN}       ${moduleN}
    Course_DashBoard.Verify Course Tests                            ${TestN}                 ${courseN}       ${moduleN}
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
    [Arguments]                                                     ${schoolN}               ${LessonPlanN}
    Course_DashBoard.Verify Course Lesson Plan                      ${LessonPlanN}           ${course}       ${module}
    Course_DashBoard.Click on Edit Lesson Plan                      ${LessonPlanN}
    Create_LessonPlan.Verify LessonPlan Title                       ${LessonPlanN}
    Course_DashBoard.Click on Create Lesson Plan
    Create_LessonPlan.Verify Create LessonPlan                      ${LessonPlan}           Test Lesson Plan Summary    ${schoolN}       ${course}       ${module}       Test Lesson Plan Title       Test Lesson Plan Details
#-------------------------------------------------------------------------------------------
Verify Course Zoom
    Course_DashBoard.Verify Courses Zoom                            All
    Course_DashBoard.Click on Zoom Settings
    Courses_Zoom.verify Zoom setting                                ${JWTToken}
    Course_DashBoard.Click on Create Meeting
    Courses_Zoom.verify Zoom Meeting Create Configuration window

#-------------------------------------------------------------------------------------------
#                                   Student User
#-------------------------------------------------------------------------------------------
Verify Dashboard page of student user
    [Arguments]                                                                    ${BatchN}           ${ModuleN}       ${CourseN}      ${TeacherN}     ${studentn}     ${TDuration}    ${Concept}
    MyCourses.Click on a Batch in My Courses                                       ${BatchN}
    Course_DashBoard.Verify Course Dashboard page of Student User                  ${BatchN}
    Course_DashBoard.click on reports
    Course_Reports.Verify Batch Report Page                                        ${BatchN}
    Course_Reports.click on question report
    QuestionReport.Verify Question Report of Student User                          ${BatchN}            ${ModuleN}
    Course_DashBoard.Click on Mentoring
    CalendarPage.Verify Book Mentoring Slot page                                   ${CourseN}           ${TeacherN}
    Course_DashBoard.click on badges information
    BadgesInformation.verify badges information
    Course_DashBoard.click on enrolment list
    EnrollmentList.Verify Enrolment List window                                     ${studentn}
    Course_DashBoard.Click on Fees Details
    Course_DashBoard.Verify Student Fee Details                                     ${BatchN}
    Course_DashBoard.click on course map
    CourseMap.Verify Course map of student user                                     ${BatchN}
    Course_DashBoard.Verify Module Restrictions of student user
    Course_DashBoard.Verify Leader For Module
    Course_DashBoard.click on learn button of module                                ${module}
    Course_DashBoard.Verify Learn options of module                                 ${module}
    Course_DashBoard.Verify Self Adaptive Test                                      ${module}          ${TDuration}
    Course_DashBoard.Click on Proficiency Score button of module                    ${module}
    ProficiencyAnalysis.Verify Proficiency Analysis Page
    Course_DashBoard.verify a Concept in Concept list                               ${Concept}          ${TDuration}

#-------------------------------------------------------------------------------------------
Verify Student user Pages of the Course
    [Arguments]                                         ${PageN}    ${BatchN}
    MyCourses.Click on a Batch in My Courses            ${BatchN}
    Course_DashBoard.Verify Course Pages of student     ${PageN}

#-------------------------------------------------------------------------------------------
Verify Student user Video of the Course
    [Arguments]                                         ${video}
    Course_DashBoard.Verify Course video of student     ${video}
#-------------------------------------------------------------------------------------------
Verify Student user Collection of the Course
    [Arguments]                                                 ${collection}
    Course_DashBoard.Verify Course Collections of student       ${collection}
#-------------------------------------------------------------------------------------------
Verify Student user Assignment of the Course
    [Arguments]                                                 ${Assignment}
    Course_DashBoard.Verify Course Assignment of student        ${Assignment}

#-------------------------------------------------------------------------------------------
Verify Student user Tests of the Course
    [Arguments]                                                 ${BatchN}   ${status}     ${Test_N}
    Course_DashBoard.Verify Course Test of student              ${BatchN}   ${status}     ${Test_N}

#-------------------------------------------------------------------------------------------
Verify Student user Project of the Course
    [Arguments]                                                 ${StudentProjects_name}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}       ${Sdetails}
    Course_DashBoard.Verify a Student Project of a student      ${StudentProjects_name}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}       ${Sdetails}

#-------------------------------------------------------------------------------------------
Verify Student user Discussions of the Course
    [Arguments]                                                 ${discussion}
    Course_DashBoard.Verify Course Discussions of a Student     ${discussion}

#-------------------------------------------------------------------------------------------
Verify Student user Zoom of the Course
    Course_DashBoard.Verify Courses Zoom of a Student            All