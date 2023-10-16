*** Settings ***
Documentation   All the keywords of Login page
Library         SeleniumLibrary
Resource        ../../PageObjects/EnrollmentList.robot
Resource        ../KeywordDefinationFiles/EnrolmentSettings.robot
Resource        ../KeywordDefinationFiles/Course_DashBoard.robot
Resource        ../KeywordDefinationFiles/Achievements.robot
Resource        ../KeywordDefinationFiles/MyLearningPlan.robot
Resource        ../KeywordDefinationFiles/StudentsProfile.robot
Resource        ../TestData/TestData.robot

*** Keywords ***
Verify Enrolment List
    [Arguments]                             ${studentn}
    click on enrolment list
    page should contain element             ${enrolmentlist_h}
    page should contain element             ${enrolmentlist_settings}
    page should contain element             ${enrolmentlist_enrolstudent}
    page should contain element             ${enrolmentlist_invitestudent}
    page should contain element             ${enrolmentlist_inviteelist}
    page should contain element             ${enrolmentlist_teachers_h}
    verify a student in students list       ${studentn}
    EnrolmentSettings.Verify Enrolment Settings
    verify add student
    click on enrolment list
    verify invite student
    click on enrolment list
    verify invitee list
    verify a student in students list       ${studentn}
    click on student acievements            ${studentn}
    close window
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
#    verify achievements page                Test Achievement 01
    click on student mlp                    ${studentn}
    verify my learning plan page
    click on students profile               ${studentn}
    verify students profile page            ${studentn}

Verify Enrolment List window
    [Arguments]                             ${studentn}
    page should contain element             ${enrolmentlist_h}
    page should contain element             ${enrolmentlist_teachers_h}
    page should contain element             ${enrolmentlist_students_h}
    page should contain element             xpath:(//div[@title="Go to ${studentn}'s Profile"]//child::button)[2]
    page should contain element             xpath://div[normalize-space()='Enrolment List']/following-sibling::button
    click on button                         xpath://div[normalize-space()='Enrolment List']/following-sibling::button
    sleep                                   5

Click on Enrolmentlist settings
    page should contain element             ${enrolmentlist_settings}
    click on button                         ${enrolmentlist_settings}
    sleep                                   5

Click on Enrol Student
    page should contain element             ${enrolmentlist_enrolstudent}
    click on button                         ${enrolmentlist_enrolstudent}
    sleep                                   3

Click on invite Student
    page should contain element             ${enrolmentlist_invitestudent}
    click on button                         ${enrolmentlist_invitestudent}
    sleep                                   3

Click on invitee list
    page should contain element             ${enrolmentlist_inviteelist}
    click on button                         ${enrolmentlist_inviteelist}
    sleep                                   3

Click on close Enrolment List
    page should contain element             ${enrolmentlist_close}
    click on button                         ${enrolmentlist_close}
    sleep                                   3

Enter Username or Email
    [Arguments]                             ${username}
    page should contain element             ${addstudent_usernameoremail}
    input text                              ${addstudent_usernameoremail}           ${username}

Click on Add
    page should contain element             ${addstudent_add}
    click element                           ${addstudent_add}
    sleep                                   2

Click on Close Add Student
    page should contain element             ${addstudent_close}
    click on button                         ${addstudent_close}
    sleep                                   5

Enter Email of Invite Student
    [Arguments]                             ${email}
    page should contain element             ${invitestudent_email}
    input text                              ${invitestudent_email}              ${email}

Click on invite
    page should contain element             ${invitestudent_invite}
    click element                           ${invitestudent_invite}
    sleep                                   2

Click on Close Invite Student
    page should contain element             ${invitestudent_close}
    click on button                         ${invitestudent_close}
    sleep                                   3
Click on close invitee List
    page should contain element             ${inviteelist_close}
    click on button                         ${inviteelist_close}
    sleep                                   3

Click on Student Acievements
    [Arguments]                             ${student}
    switch window                           main
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[1]
    click on button                         xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[1]
    sleep                                   4
    ${handles}=                             Get Window Handles
    switch window                           new
    sleep                                   5

Click on Student MLP
    [Arguments]                             ${student}
    switch window                           main
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[2]
    click element                           xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[2]
    sleep                                   4
    switch window                           new
    sleep                                   5

Click on Students Profile
    [Arguments]                             ${student}
    switch window                           main
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[3]
    click element                           xpath:(//div[@title="Go to ${student}'s Profile"]//child::i)[2]
    sleep                                   10

Verify a Student in Students List
    [Arguments]                             ${student}
    page should contain element             xpath://div[@title="Go to ${student}'s Profile"]
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[1]
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[2]
    page should contain element             xpath:(//div[@title="Go to ${student}'s Profile"]//child::button)[3]

Verify Add Student
    click on enrol student
    page should contain element             ${addstudent_h}
    click on add
    page should contain element             ${addstudent_usernameisrequired}
    enter username or email                 ${student_username}
    click on close add student

Verify Invite Student
    click on invite student
    page should contain element             ${invitestudent_h}
    click on invite
    wait until element is visible           ${invitestudent_emailrequired}          120
    page should contain element             ${invitestudent_emailrequired}
    enter email of invite student           ${mailid}
    click on close invite student

Verify Invitee List
    click on invitee list
    page should contain element             ${inviteelist_h}
    page should contain element             ${inviteelist_invitee_th}
    page should contain element             ${inviteelist_sentdate_th}
    page should contain element             ${inviteelist_status_th}
    click on close invitee list
