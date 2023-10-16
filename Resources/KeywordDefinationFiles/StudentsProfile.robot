*** Settings ***
Documentation   All the keywords of Students Profile
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentsProfile.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Students Profile page
    [Arguments]                             ${student}
    wait until element is visible           xpath://div[normalize-space()='${student}']             120
    page should contain element             xpath://div[normalize-space()='${student}']
    verify students name                    ${student}
    page should contain element             ${studentsprofile_image}
    page should contain element             ${studentsprofile_cointransaction}
    page should contain element             ${studentsprofile_achievements}
    page should contain element             ${studentsprofile_progressbar}
    page should contain element             ${studentsprofile_moduleleader}
    page should contain element             ${studentsprofile_starperformer}
    page should contain element             ${studentsprofile_conceptleader}
    page should contain element             ${studentsprofile_username}
    page should contain element             ${studentsprofile_birthday}
    page should contain element             ${studentsprofile_phone}
    page should contain element             ${studentsprofile_totalcreditsearned}
    page should contain element             ${studentsprofile_totalcertificatesawarded}
    page should contain element             ${studentsprofile_credittable}
    page should contain element             ${studentsprofile_certificates}
    page should contain element             ${studentsprofile_gotolearningplan}
    page should contain element             ${studentsprofile_overallfeedback}
    page should contain element             ${studentsprofile_selectterm}
    page should contain element             ${studentsprofile_selectcourse}
    go back
    sleep                                   7
#-------------------------------------------------------------------------------------------
Verify Students Name
    [Arguments]                               ${student}
    ${studentN}=     Get Text                 xpath://div[normalize-space()='${student}']
    should be equal                           ${studentN}                           ${student}

#-------------------------------------------------------------------------------------------
verify Feedback page of a Student user
    [Arguments]                                     ${StudentN}
    wait until Element is present in the page       xpath://div[contains(text(),'Feedback -${StudentN}')]
    page should contain element                     xpath://div[contains(text(),'Feedback -${StudentN}')]

#-------------------------------------------------------------------------------------------
Select a Term
    [Arguments]                                     ${TermN}
    page should contain element                     ${studentsprofile_selectterm}
    select from list by label                       ${studentsprofile_selectterm}           ${TermN}

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                                     ${CourseN}
    page should contain element                     ${studentsprofile_selectcourse}
    select from list by label                       ${studentsprofile_selectcourse}           ${CourseN}

#-------------------------------------------------------------------------------------------
verify Student profile details page
    [Arguments]                                     ${student}      ${TermN}        ${CourseN}
    StudentsProfile.verify Student details          ${student}
    StudentsProfile.verify Student Course details   ${TermN}        ${CourseN}
    StudentsProfile.verify Edit Profile page of Student
    go back
#-------------------------------------------------------------------------------------------
verify Student details
    [Arguments]                             ${student}
    wait until element is visible           xpath://div[normalize-space()='${student}']             120
    page should contain element             xpath://div[normalize-space()='${student}']
    verify students name                    ${student}
    page should contain element             ${studentsprofile_image}
    page should contain element             ${studentsprofile_cointransaction}
    page should contain element             ${studentsprofile_achievements}
    page should contain element             ${studentsprofile_progressbar}
    wait until page contains element        ${studentsprofile_moduleleader}             120
    page should contain element             ${studentsprofile_moduleleader}
    page should contain element             ${studentsprofile_starperformer}
    page should contain element             ${studentsprofile_conceptleader}
    page should contain element             ${studentsprofile_username}
    page should contain element             ${studentsprofile_birthday}
    page should contain element             ${studentsprofile_phone}
    page should contain element             ${studentsprofile_totalcreditsearned}
    page should contain element             ${studentsprofile_totalcertificatesawarded}
    page should contain element             ${studentsprofile_credittable}
    page should contain element             ${studentsprofile_certificates}
    page should contain element             ${studentsprofile_gotolearningplan}
    page should contain element             ${studentsprofile_overallfeedback}

#-------------------------------------------------------------------------------------------
verify Student Course details
    [Arguments]                             ${TermN}        ${CourseN}
    StudentsProfile.Select a Term           ${TermN}
    StudentsProfile.Select a Course         ${CourseN}
    wait until Element is present in the page       ${studentsprofile_credits}
    page should contain element                     ${studentsprofile_coursemap}
    page should contain element                     ${studentsprofile_credits}
    page should contain element                     ${studentsprofile_collections}
    page should contain element                     ${studentsprofile_collections_inprogress}
    page should contain element                     ${studentsprofile_collections_completed}
    page should contain element                     ${studentsprofile_pages}
    page should contain element                     ${studentsprofile_pages_hours}
    page should contain element                     ${studentsprofile_pages_read}
    page should contain element                     ${studentsprofile_videos}
    page should contain element                     ${studentsprofile_videos_watched}
    page should contain element                     ${StudentsProfile_Assignments}
    page should contain element                     ${StudentsProfile_Assignments_Percentage}
    page should contain element                     ${StudentsProfile_Assignments_Submitted}
    page should contain element                     ${StudentsProfile_Tests}
    page should contain element                     ${StudentsProfile_Tests_Percentage}
    page should contain element                     ${StudentsProfile_Tests_Submitted}
    page should contain element                     ${StudentsProfile_Games}
    page should contain element                     ${StudentsProfile_Games_Percentage}
    page should contain element                     ${StudentsProfile_Games_Won}
    page should contain element                     ${StudentsProfile_DiscussionForums}
    page should contain element                     ${StudentsProfile_DiscussionForums_Comments}
    page should contain element                     ${StudentsProfile_DiscussionForums_Participated}
    page should contain element                     ${StudentsProfile_StudentProjects}
    page should contain element                     ${StudentsProfile_StudentProjects_Created}
    page should contain element                     ${StudentsProfile_StudentProjects_Percentage}
    page should contain element                     ${StudentsProfile_GradeBook}
    page should contain element                     ${StudentsProfile_GradeBook_OverallGrade}
    page should contain element                     ${StudentsProfile_Attendance}
    page should contain element                     ${StudentsProfile_Attendance_Percentage}
#-------------------------------------------------------------------------------------------
verify Edit Profile page of Student
    StudentsProfile.Click on Edit Profile
    StudentsProfile.verify on Edit Profile tab
    StudentsProfile.Click on Change Avatar tab
    StudentsProfile.verify on Change Avatar tab
    StudentsProfile.Click on Change Password tab
    StudentsProfile.verify on change password tab
    StudentsProfile.Close Edit Profile window
#-------------------------------------------------------------------------------------------
Click on Edit Profile
    page should contain element                  ${studentsprofile_editprofile}
    click on button                              ${studentsprofile_editprofile}
    sleep                                        5
#-------------------------------------------------------------------------------------------
verify on Edit Profile tab
    page should contain element                    ${editprofile_tab}
    page should contain element                    ${editprofile_firstname}
    page should contain element                    ${editprofile_lastname}
    page should contain element                    ${editprofile_tagline}
    page should contain element                    ${editprofile_birthdate}
    page should contain element                    ${editprofile_phone}
    page should contain element                    ${editprofile_aboutme}
    page should contain element                    ${editprofile_submit}
#-------------------------------------------------------------------------------------------
verify on Change Avatar tab
    page should contain element                    ${editprofile_changeavatar}
    page should contain element                    ${editprofile_changeavatar_selectanimage}
#-------------------------------------------------------------------------------------------
verify on change password tab
    page should contain element                    ${editprofile_changepassword}
    page should contain element                    ${editprofile_changepassword_currentpassword}
    page should contain element                    ${editprofile_changepassword_newpassword}
    page should contain element                    ${editprofile_changepassword_retypenewpassword}
    page should contain element                    ${editprofile_changepassword_changepassword}
#-------------------------------------------------------------------------------------------
Close Edit Profile window
    page should contain element                    ${editprofile_close}
    click on button                                ${editprofile_close}
    sleep                                          5
#-------------------------------------------------------------------------------------------
Click on Change Avatar tab
    page should contain element                    ${editprofile_changeavatar}
    click on button                                ${editprofile_changeavatar}
    sleep                                          5
#-------------------------------------------------------------------------------------------
Click on Change Password tab
    page should contain element                    ${editprofile_changepassword}
    click on button                                ${editprofile_changepassword}
    sleep                                          5
#-------------------------------------------------------------------------------------------