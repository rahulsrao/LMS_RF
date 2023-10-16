*** Settings ***
Documentation   All the keywords of Content Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ContentPage.robot
Resource        ../../Resources/TestData/TestData.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_Pages.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_Videos.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_Collections.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_Assignments.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_TestsPage.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_StudentProjects.robot
Resource          ../../Resources/KeywordDefinationFiles/Content_LessonPlan.robot
Resource          ../../Resources/KeywordDefinationFiles/Video.robot
Resource          ../../Resources/KeywordDefinationFiles/CollectionPage.robot
Resource          ../../Resources/KeywordDefinationFiles/AssignmentsPage.robot
Resource          ../../Resources/KeywordDefinationFiles/TestPage.robot
Resource          ../../Resources/KeywordDefinationFiles/Course_DashBoard.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Content Page
    [Arguments]                                                             ${SchoolN}
    ContentPage.wait until Content heading present
    ContentPage.verify content page elements
    Content_Pages.Verify Content Pages Tab
    Content_Videos.Verify Videos tab in Content Page
    Content_Collections.Verify Collections tab in Content Page
    Content_Assignments.Verify Assignments tab in Content Page
    Content_TestsPage.Verify Tests tab in Content Page                      ${SchoolN}
    Content_StudentProjects.Verify Student projects tab in Content Page
    Content_LessonPlan.Verify Lesson Plan tab in Content Page
#-------------------------------------------------------------------------------------------
Verify Content Page of Student User
    [Arguments]                                                     ${Page}         ${videoN}           ${collection}       ${Assignment}    ${BatchN}   ${status}   ${Test_N}      ${StudentProjectN}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}    ${Sdetails}
    ContentPage.wait until Content heading present
    ContentPage.verify content page elements of Student user
    Content_Pages.Verify Content Pages Tab of Student User
    Content_Pages.Search a Page                                     ${Page}
    Content_Pages.verify a Page                                     ${Page}
    ContentPage.wait until Content heading present
    Content_Videos.Verify Videos tab in Content Page of Student user
    Content_Videos.Verify Videos tab in Content Page of Student user
    Content_Videos.Search a Video                                    ${videoN}
    Content_Videos.Click on a Video                                  ${videoN}
    Video.verify video details                                       ${videoN}
    Content_Collections.Verify Collections tab in Content Page of Student user
    Content_Collections.Search a Collection                          ${collection}
    Content_Collections.Click on a Collection                        ${collection}
    CollectionPage.Verify Collection details page                    ${collection}
    Content_Assignments.Verify Assignments tab in Content Page of Student user
    Content_Assignments.Search a Assignment                          ${Assignment}
    Content_Assignments.Click on a Assignment                         ${Assignment}
    AssignmentsPage.Verify Assignment page of student user           ${Assignment}
    Content_TestsPage.Verify Tests tab in Content Page of Student user
    Content_TestsPage.Search a Test                                     ${Test_N}
    Content_TestsPage.Click on viewSubmission button of a Test          ${Test_N}
    TestPage.Verify Test Submissions Page                               ${BatchN}   ${status}   ${Test_N}
    go back
    Content_StudentProjects.Verify Student projects tab in Content Page of Student user         ${StudentProjectN}
    Course_DashBoard.Verify a Project of student user                                           ${StudentProjectN}
    Course_DashBoard.Verify Create Project of Student                                           ${StudentProjectN}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}    ${Sdetails}

#-------------------------------------------------------------------------------------------
wait until Content heading present
    Sleep                                           5
    wait until element is visible                   ${h_Content}           120
#-------------------------------------------------------------------------------------------
verify content page elements
    page should contain element                     ${h_Content}
    reload page
    wait until element is visible                   ${btnCourses}               120
    page should contain element                     ${btnCourses}
    page should contain element                     ${btnModules}
    wait until element is visible                   ${tabPages}                 120
    page should contain element                     ${tabPages}
    page should contain element                     ${tabVideos}
    page should contain element                     ${tabCollections}
    page should contain element                     ${tabAssignments}
    page should contain element                     ${tabTests}
    page should contain element                     ${tabStudentProjects}
    page should contain element                     ${tabLessonPlan}
#-------------------------------------------------------------------------------------------
verify content page elements of Student user
    page should contain element                     ${h_Content}
    reload page
    wait until element is visible                   ${btnCourses}               120
    page should contain element                     ${btnCourses}
    page should contain element                     ${btnModules}
    wait until element is visible                   ${tabPages}                 120
    page should contain element                     ${tabPages}
    page should contain element                     ${tabVideos}
    page should contain element                     ${tabCollections}
    page should contain element                     ${tabAssignments}
    page should contain element                     ${tabTests}
    page should contain element                     ${tabStudentProjects}