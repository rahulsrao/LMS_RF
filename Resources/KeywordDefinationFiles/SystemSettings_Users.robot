*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_Users.robot
Resource        ../../Resources/TestData/TestData.robot
Resource        ../../PageObjects/SystemSettings.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify User of Teacher User
    [Arguments]                                                     ${Studentname}    ${bathgroupN}
    SystemSettings_Users.Click on Users button
    SystemSettings_Users.verify user page of Teacher user           ${Studentname} (Student)           ART BATCH ONE     Students      LMS     Uni      ${bathgroupN}
    SystemSettings_Users.Verify Add User
    SystemSettings_Users.Add User by teacher user                   Student     qa.test    QA    Test     qa@gmail.com    password    password    M     1234567890    2000-01-01       ${bathgroupN}       Uni         Level 7
    SystemSettings_Users.Search a User                              QA Test
    SystemSettings_Users.Verify Edit User                           QA Test (Student)     QA Test
    SystemSettings_Users.Edit User                                  QA Test (Student)    qa.test1    Test  Student1      TestStudent1@gmail.com        F     1231231231         2001-05-05
    SystemSettings_Users.Active/Inactive Batches                    Test Student1 (Student)
    SystemSettings_Users.Verify Edit Enrollments                    Test Student1 (Student)
    SystemSettings_Users.Edit Enrollments                           Test Student1 (Student)         SPRING 2020         ART BATCH ONE       Level 7
    SystemSettings_Users.Verify Edit Enrollments window             Test Student1         SPRING 2020         ART BATCH ONE       Level 7
    SystemSettings_Users.Verify Get Students Data
    SystemSettings_Users.Get Students Data                          rahulsrao15@gmail.com
#-------------------------------------------------------------------------------------------
Verify User
    SystemSettings_Users.Click on Users button
    SystemSettings_Users.verify user page                           Demo Student (Student)           ART BATCH ONE     Students      LMS     Uni      Batch Group 5
    SystemSettings_Users.Verify Add User
    SystemSettings_Users.Add User                                   LMS      Student     qa.test    QA    Test     qa@gmail.com    password     password    M     1234567890    2000-01-01       Batch Group 5       Uni         Level 7
    SystemSettings_Users.Verify Edit User                           QA Test (Student)
    SystemSettings_Users.Edit User                                  QA Test (Student)    qa.test1    Test  Student1      TestStudent1@gmail.com        F     1231231231         2001-05-05
    SystemSettings_Users.Active/Inactive Batches                    Test Student3 (Student)
    SystemSettings_Users.Verify Edit Enrollments                    Test Student3 (Student)
    SystemSettings_Users.Edit Enrollments                           Test Student3 (Student)         SPRING 2020         ART BATCH ONE       Level 7
    SystemSettings_Users.Delete user                                Test Student3 (Student)
    SystemSettings_Users.Create User                                LMS      Teacher     teacher1.test    Test    Teacher1     teacher1@gmail.com    password     password    M     1234567890    1995-01-01
    SystemSettings_Users.Create User                                LMS      Parent      parent1.test     Test    Parent1      Parent1@gmail.com    password     password    M     1234567890    1993-01-01
    SystemSettings_Users.Create User                                LMS       Admin       admin1.test     Test    Admin1      Admin1@gmail.com    password     password    M     1234567890    1993-01-01
    SystemSettings_Users.Verify Get Students Data
    SystemSettings_Users.Get Students Data                          rahulsrao15@gmail.com

#-------------------------------------------------------------------------------------------
Click on Users button
    page should contain element                                     ${ss_users}
    click on button                                                 ${ss_users}
    sleep                                                           5

#-------------------------------------------------------------------------------------------
#                                 Batch
#-------------------------------------------------------------------------------------------
Click on Filter By Batch
    page should contain element         ${usr_FilterByBatch}
    click on button                     ${usr_FilterByBatch}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                         ${BatchN}
    SystemSettings_Users.Click on Filter By Batch
    page should contain element         xpath:(//div[text()='${BatchN}'])[2]/ancestor::a
    click on button                     xpath:(//div[text()='${BatchN}'])[2]/ancestor::a
    sleep                               3

#-------------------------------------------------------------------------------------------
#                                 Role
#-------------------------------------------------------------------------------------------
Click on Filter By Role
    page should contain element         ${usr_FilterByRole}
    click on button                     ${usr_FilterByRole}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Role
    [Arguments]                         ${RoleN}
    SystemSettings_Users.Click on Filter By Role
    page should contain element         xpath://div[text()='${RoleN}']/ancestor::a
    click on button                     xpath://div[text()='${RoleN}']/ancestor::a
    sleep                               3
#-------------------------------------------------------------------------------------------
#                             Search a Student
#-------------------------------------------------------------------------------------------
Search a User
    [Arguments]                         ${UserN}
    page should contain element         ${usr_searchuser}
    input text                          ${usr_searchuser}          ${UserN}
    sleep                               5
#-------------------------------------------------------------------------------------------
#                                 User Status
#-------------------------------------------------------------------------------------------
Click on User Status
    page should contain element         ${usr_userstatus}
    click on button                     ${usr_userstatus}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a User Status
    [Arguments]                         ${UStatus}
    SystemSettings_Users.Click on User Status
    page should contain element         xpath:(//div[text()='${UStatus}'])[2]/ancestor::a
    click on button                     xpath:(//div[text()='${UStatus}'])[2]/ancestor::a
    sleep                               3

#-------------------------------------------------------------------------------------------
#                                   Sort By
#-------------------------------------------------------------------------------------------
Click on Sort By
    page should contain element         ${usr_sortby}
    click on button                     ${usr_sortby}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Sort option
    [Arguments]                         ${sortop}
    SystemSettings_Users.Click on Sort By
    page should contain element         xpath:(//div[text()='${sortop}']/ancestor::a)[2]
    click on button                     xpath:(//div[text()='${sortop}']/ancestor::a)[2]
    sleep                               3
#-------------------------------------------------------------------------------------------
#                                   Filter by Program
#-------------------------------------------------------------------------------------------
Click on Filter by Program
    page should contain element         ${user_filterbyprogram}
    click on button                     ${user_filterbyprogram}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${ProgramN}
    SystemSettings_Users.Click on Filter by Program
    page should contain element         xpath://div[text()='${ProgramN}']/ancestor::a
    click on button                     xpath://div[text()='${ProgramN}']/ancestor::a
    sleep                               3
#-------------------------------------------------------------------------------------------
#                                  Filter by BatchGroup
#-------------------------------------------------------------------------------------------
Click on Filter by BatchGroup
    page should contain element         ${user_filterbybatchgroup}
    click on button                     ${user_filterbybatchgroup}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${BatchGroupN}
    SystemSettings_Users.Click on Filter by BatchGroup
    page should contain element         xpath://div[text()='${BatchGroupN}']/ancestor::a
    click on button                     xpath://div[text()='${BatchGroupN}']/ancestor::a
    sleep                               3
#-------------------------------------------------------------------------------------------
#                                  Filter by Levels
#-------------------------------------------------------------------------------------------
Click on Filter by Levels
    page should contain element         ${user_filterbybatchgroup}
    click on button                     ${user_filterbybatchgroup}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Level
    [Arguments]                         ${LevelN}
    SystemSettings_Users.Click on Filter by Levels
    page should contain element         xpath://div[text()='${LevelN}']/ancestor::a
    click on button                     xpath://div[text()='${LevelN}']/ancestor::a
    sleep                               3
#-------------------------------------------------------------------------------------------
#                              Filter by Student House
#-------------------------------------------------------------------------------------------
Click on Filter by Student House
    page should contain element         ${user_filterbystudenthouse}
    click on button                     ${user_filterbystudenthouse}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a StudentHouse
    [Arguments]                         ${StudentHouseN}
    SystemSettings_Users.Click on Filter by Student House
    page should contain element         xpath://div[text()='${StudentHouseN}']/ancestor::a
    click on button                     xpath://div[text()='${StudentHouseN}']/ancestor::a
    sleep                               3

#-------------------------------------------------------------------------------------------
Verify Users Table
    page should contain element         ${usr_th_name}
    page should contain element         ${usr_th_Enrollments}
    page should contain element         ${usr_th_Actions}

#-------------------------------------------------------------------------------------------
#                                   User
#-------------------------------------------------------------------------------------------
Verify a Username and enrollment
    [Arguments]                         ${userN}                    ${enrollmentN}
    page should contain element         xpath://td[normalize-space()='${userN}']
    page should contain element         xpath://td[contains(text(),'${userN}')]//following::td/span[contains(text(),'${enrollmentN}')]

#-------------------------------------------------------------------------------------------
#                                   Active/Inactive Batches
#-------------------------------------------------------------------------------------------
verify Active/Inactive Batches
    [Arguments]                                                             ${userN}            ${BatchN}
    SystemSettings_Users.Click on Active/Inactive Batch(es)                 ${userN}
    SystemSettings_Users.verify Active/Inactive Batches window elements
    SystemSettings_Users.verify Batches                                     ${BatchN}
    SystemSettings_Users.Close Active/Inactive Batch window

#-------------------------------------------------------------------------------------------
Click on Active/Inactive Batch(es)
    [Arguments]                         ${userN}
    page should contain element         xpath://td[contains(text(),'${userN}')]/following-sibling::td[2]/button[1]
    click on button                     xpath://td[contains(text(),'${userN}')]/following-sibling::td[2]/button[1]
    sleep                               5

#-------------------------------------------------------------------------------------------
Close Active/Inactive Batch window
    click on button                     ${usr_activeinactivebatches_cancel}
    sleep                               2

#-------------------------------------------------------------------------------------------
verify Batches
    [Arguments]                         ${BatchN}
    page should contain element         css:input[aria-label='${BatchN}']
    checkbox should be selected         css:input[aria-label='${BatchN}']

#-------------------------------------------------------------------------------------------
verify Active/Inactive Batches window elements
    page should contain element         ${usr_activeinactivebatches_artbatchone}
    page should contain element         ${usr_activeinactivebatches_mathematicsone}
    page should contain element         ${usr_activeinactivebatches_save}
    page should contain element         ${usr_activeinactivebatches_cancel}

#-------------------------------------------------------------------------------------------
#                                   Edit Enrollments
#-------------------------------------------------------------------------------------------
Verify Edit Enrollments window
    [Arguments]                                                                 ${userN}     ${TermN}        ${BatchN}       ${level}
    SystemSettings_Users.Click on Edit Enrollments                              ${userN}
    SystemSettings_Users.Verify Edit Enrollments winodw elements
    SystemSettings_Users.Edit Enrollments Select a Term                         ${TermN}
    SystemSettings_Users.Edit Enrollments Select a batch                        ${BatchN}
    SystemSettings_Users.Click on By Level button
    SystemSettings_Users.Edit Enrollments Select a level                        ${level}
    SystemSettings_Users.Edit Enrollments Select a batch                        ${BatchN}
    SystemSettings_Users.Close Edit Enrollments winodw

#-------------------------------------------------------------------------------------------
Click on Edit Enrollments
    [Arguments]                         ${userN}
    page should contain element         xpath://td[contains(text(),'${userN}')]/following-sibling::td[2]/button[2]
    click on button                     xpath://td[contains(text(),'${userN}')]/following-sibling::td[2]/button[2]
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Edit Enrollments winodw elements
    page should contain element         ${usr_editenrollments_h}
    page should contain element         ${usr_editenrollments_byterm}
    page should contain element         ${usr_editenrollments_bylevel}
    page should contain element         ${usr_editenrollments_selectterms}
    page should contain element         ${usr_editenrollments_selectbatch}
    page should contain element         ${usr_editenrollments_transactions}
    page should contain element         ${usr_editenrollments_close}
    page should contain element         ${usr_editenrollments_save}

#-------------------------------------------------------------------------------------------
Close on Edit Enrollments window
    page should contain element         ${usr_editenrollments_close}
    click on button                     ${usr_editenrollments_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on By Level button
    page should contain element         ${usr_editenrollments_bylevel}
    click on button                     ${usr_editenrollments_bylevel}
    sleep                               5
#-------------------------------------------------------------------------------------------
Click on By Term button
    page should contain element         ${usr_editenrollments_byterm}
    click on button                     ${usr_editenrollments_byterm}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify By Level options
    page should contain element         ${usr_editenrollments_selectlevel}
    page should contain element         ${usr_editenrollments_selectbatch}
    page should contain element         ${usr_editenrollments_transactions}
    page should contain element         ${usr_editenrollments_close}
    page should contain element         ${usr_editenrollments_save}

#-------------------------------------------------------------------------------------------
Click on Select level of Edit Enrollments
    page should contain element         ${usr_editenrollments_bylevel}
    click on button                     ${usr_editenrollments_bylevel}
    sleep                               3
#-------------------------------------------------------------------------------------------
Edit Enrollments Select a level
    [Arguments]                         ${level}
    SystemSettings_Users.Click on Select level of Edit Enrollments
    page should contain element        ${usr_editenrollments_selectlevel}
    input text                         ${usr_editenrollments_selectlevel}              ${level}
    sleep                              3
    page should contain element        ${usr_EditEnrollments_Op_First}
    Press Keys                         ${usr_editenrollments_selectlevel}             ESC

#-------------------------------------------------------------------------------------------
Click on Select batch of Edit Enrollments
    page should contain element       ${usr_editenrollments_selectbatch}
    click on button                   ${usr_editenrollments_selectbatch}
    sleep                             3

#-------------------------------------------------------------------------------------------
Edit Enrollments Select a batch
    [Arguments]                         ${Batch}
    SystemSettings_Users.Click on Select batch of Edit Enrollments
    Press keys                          ${usr_editenrollments_selectbatch}             CTRL+a   BACKSPACE
    input text                          ${usr_editenrollments_selectbatch}             ${Batch}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    click on button                     ${usr_EditEnrollments_Op_First}
    Press Keys                          ${usr_editenrollments_selectbatch}             ESC

#-------------------------------------------------------------------------------------------
Click on Select Term of Edit Enrollments
    page should contain element       ${usr_editenrollments_selectterms}
    click on button                   ${usr_editenrollments_selectterms}
    sleep                             3

#-------------------------------------------------------------------------------------------
Edit Enrollments Select a Term
    [Arguments]                         ${TermN}
    SystemSettings_Users.Click on Select Term of Edit Enrollments
    Press keys                          ${usr_editenrollments_selectterms}             CTRL+a   BACKSPACE
    input text                          ${usr_editenrollments_selectterms}             ${TermN}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    click on button                     ${usr_EditEnrollments_Op_First}
    Press Keys                          ${usr_editenrollments_selectbatch}             ESC


#-------------------------------------------------------------------------------------------
Close Edit Enrollments winodw
    page should contain element         ${usr_editenrollments_close}
    click on button                     ${usr_editenrollments_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
verify user page of Teacher user
    [Documentation]  This test case verifies System Settings Users page
    [Tags]  Settings
    [Arguments]                         ${user}         ${batch}        ${role}         ${org}      ${pgm}      ${btchgrp}
    sleep                               10
    wait until page contains element    ${usr_filterbybatch}                    20
#    Wait For Condition	                return document.readyState == "complete"
    page should contain element         ${usr_filterbybatch}
    page should contain element         ${usr_filterbyrole}
    page should contain element         ${usr_organizations}
    page should contain element         ${usr_massuserupload}
    page should contain element         ${usr_person_add}
    page should contain element         ${usr_searchuser}
    page should contain element         ${usr_userstatus}
    page should contain element         ${usr_sortby}
    page should contain element         ${user_filterbyprogram}
    page should contain element         ${user_filterbybatchgroup}
    page should contain element         ${user_filterbylevel}
    page should contain element         ${user_filterbystudenthouse}
    page should contain element         ${user_FilterbyAttribute2}
    page should contain element         ${usr_getstudentsdata}
    SystemSettings_Users.Select a Batch           ${batch}
    SystemSettings_Users.Select a Role            ${role}
    SystemSettings_Users.Select a BatchGroup      ${btchgrp}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[1]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]

#-------------------------------------------------------------------------------------------
verify user page
    [Documentation]  This test case verifies System Settings Users page
    [Tags]  Settings
    [Arguments]                         ${user}         ${batch}        ${role}         ${org}      ${pgm}      ${btchgrp}
    sleep                               10
    wait until page contains element    ${usr_filterbybatch}                    20
#    Wait For Condition	                return document.readyState == "complete"
    page should contain element         ${usr_filterbybatch}
    page should contain element         ${usr_filterbyrole}
    page should contain element         ${usr_organizations}
    page should contain element         ${usr_massuserupload}
    page should contain element         ${usr_person_add}
    page should contain element         ${usr_searchuser}
    page should contain element         ${usr_userstatus}
    page should contain element         ${usr_sortby}
    page should contain element         ${user_filterbyprogram}
    page should contain element         ${user_filterbybatchgroup}
    page should contain element         ${user_filterbylevel}
    page should contain element         ${user_filterbystudenthouse}
    page should contain element         ${user_FilterbyAttribute2}
    page should contain element         ${usr_getstudentsdata}
    page should contain element         ${usr_referralcodes}
    click on button                     ${usr_filterbybatch}
    click on button                     xpath:(//label[text()='Filter by Batch'])[2]/preceding::div[text()='${batch}'][1]
    Press Keys                          ${usr_Searchuser}                   ESC
    click on button                     ${usr_FilterByRole}
    click on button                     xpath://div[contains(text(),'${role}')]
    Press Keys                          ${usr_Searchuser}                   ESC
    click on button                     ${usr_Organizations}
    click on button                     xpath://div[contains(text(),'${org}')]
    Press Keys                          ${usr_Searchuser}                   ESC
    sleep                               5
#    click on button                     ${user_filterbyprogram}
#    click on button                     xpath://div[contains(text(),'${pgm}')]
    click on button                     ${user_filterbybatchgroup}
    click on button                     xpath://div[contains(text(),'${btchgrp}')]
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[1]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
#-------------------------------------------------------------------------------------------
Verify Add User
    page should contain element         ${usr_person_add}
    click on button                     ${usr_person_add}
    sleep                               5
    page should contain element         ${usr_adduser_h}
    page should contain element         ${usr_adduser_cancel}
    page should contain element         ${usr_adduser_organizations}
    page should contain element         ${usr_adduser_role}
    page should contain element         ${usr_adduser_customrolepermission}
    page should contain element         ${usr_adduser_username}
    page should contain element         ${usr_adduser_firstname}
    page should contain element         ${usr_adduser_lastname}
    page should contain element         ${usr_adduser_email}
    page should contain element         ${usr_adduser_password}
    page should contain element         ${usr_adduser_passwordagain}
    page should contain element         ${usr_adduser_gender}
    page should contain element         ${usr_adduser_phone}
    scroll element into view            ${usr_adduser_create}
    page should contain element         ${usr_adduser_birthdate}
    page should contain element         ${usr_adduser_active}
    page should contain element         ${usr_adduser_create}
    scroll element into view            ${usr_adduser_Cancel}
    click on button                     ${usr_adduser_cancel}
    sleep                               5
#-------------------------------------------------------------------------------------------
Add User
    [Arguments]                         ${org}      ${role}     ${uname}    ${Firstname}    ${Lastname}     ${email}    ${password}     ${passwordagain}    ${Gender}     ${phone}    ${bdate}      ${batchgroup}       ${program}      ${level}
    page should contain element         ${usr_person_add}
    click on button                     ${usr_person_add}
    sleep                               5
    page should contain element         ${usr_adduser_h}
    scroll element into view            ${usr_adduser_create}
    click on button                     ${usr_adduser_create}
    page should contain element         ${usr_adduser_roleisrequired}
    page should contain element         ${usr_adduser_permissionisrequired}
    page should contain element         ${usr_adduser_usernameisrequired}
    page should contain element         ${usr_adduser_firstnameisrequired}
    page should contain element         ${usr_adduser_lastnameisrequired}
    page should contain element         ${usr_adduser_passwordisrequired}
    page should contain element         ${usr_adduser_passwordagainrequired}
    scroll element into view            ${usr_adduser_organizations}
    click on button                     ${usr_adduser_organizations}
    page should contain element         xpath:(//div[contains(text(),'${org}')])[1]
    click on button                     xpath:(//div[contains(text(),'${org}')])[1]
    Press Keys                          ${usr_adduser_username}                  ESC
    click on button                     ${usr_adduser_role}
    page should contain element         xpath://div[text()='${role}']
    click on button                     xpath://div[text()='${role}']
    Press Keys                          ${usr_adduser_username}                  ESC
    input text                          ${usr_adduser_username}                  ${uname}
    input text                          ${usr_adduser_firstname}                 ${Firstname}
    input text                          ${usr_adduser_lastname}                  ${Lastname}
    input text                          ${usr_adduser_email}                     ${email}
    input text                          ${usr_adduser_password}                  ${password}
    input text                          ${usr_adduser_passwordagain}             ${passwordagain}
    click on button                     ${usr_adduser_gender}
    page should contain element         xpath://div[text()='${Gender}']
    click on button                     xpath://div[text()='${Gender}']
    Press Keys                          ${usr_adduser_phone}                  ESC
    input text                          ${usr_adduser_phone}                  ${phone}
    click on button                     ${usr_adduser_selectbatchgroup}
    page should contain element         xpath:(//div[text()='${batchgroup}'])[1]
    click on button                     xpath:(//div[text()='${batchgroup}'])[1]
#    click on button                     ${usr_adduser_selectprogram}
#    page should contain element         xpath:(//div[text()='${program}'])[1]
#    click on button                     xpath:(//div[text()='${program}'])[1]
#    click on button                     ${usr_adduser_selectlevel}
#    page should contain element         xpath:(//div[text()='${level}'])[1]
#    click on button                     xpath:(//div[text()='${level}'])[1]
    input date                          ${usr_adduser_BirthDate}              ${bdate}
    Press Keys                          ${usr_adduser_phone}                  ESC
    checkbox should be selected         ${usr_adduser_active}
    click on button                     ${usr_adduser_create}
    handle alert                        accept
#    sleep                               2
#    handle alert                        accept
    sleep                               5

#-------------------------------------------------------------------------------------------
Add User by teacher user
    [Arguments]                         ${role}     ${uname}    ${Firstname}    ${Lastname}     ${email}    ${password}     ${passwordagain}    ${Gender}     ${phone}    ${bdate}      ${batchgroup}       ${program}      ${level}
    page should contain element         ${usr_person_add}
    click on button                     ${usr_person_add}
    sleep                               5
    page should contain element         ${usr_adduser_h}
    scroll element into view            ${usr_adduser_create}
    click on button                     ${usr_adduser_create}
    page should contain element         ${usr_adduser_roleisrequired}
    page should contain element         ${usr_adduser_permissionisrequired}
    page should contain element         ${usr_adduser_usernameisrequired}
    page should contain element         ${usr_adduser_firstnameisrequired}
    page should contain element         ${usr_adduser_lastnameisrequired}
    page should contain element         ${usr_adduser_passwordisrequired}
    page should contain element         ${usr_adduser_passwordagainrequired}
    scroll element into view            ${usr_adduser_organizations}
    click on button                     ${usr_adduser_role}
    page should contain element         xpath://div[text()='${role}']
    click on button                     xpath://div[text()='${role}']
    Press Keys                          ${usr_adduser_username}                  ESC
    input text                          ${usr_adduser_username}                  ${uname}
    input text                          ${usr_adduser_firstname}                 ${Firstname}
    input text                          ${usr_adduser_lastname}                  ${Lastname}
    input text                          ${usr_adduser_email}                     ${email}
    input text                          ${usr_adduser_password}                  ${password}
    input text                          ${usr_adduser_passwordagain}             ${passwordagain}
    click on button                     ${usr_adduser_gender}
    page should contain element         xpath://div[text()='${Gender}']
    click on button                     xpath://div[text()='${Gender}']
    Press Keys                          ${usr_adduser_phone}                  ESC
    input text                          ${usr_adduser_phone}                  ${phone}
    click on button                     ${usr_adduser_selectbatchgroup}
    page should contain element         xpath:(//div[text()='${batchgroup}'])[1]
    click on button                     xpath:(//div[text()='${batchgroup}'])[1]
    input date                          ${usr_adduser_BirthDate}              ${bdate}
    Press Keys                          ${usr_adduser_phone}                  ESC
    checkbox should be selected         ${usr_adduser_active}
    click on button                     ${usr_adduser_create}
    handle alert                        accept
    sleep                               5
    reload page
    sleep                               10
#-------------------------------------------------------------------------------------------
Verify Edit User
     [Arguments]                         ${user}        ${name}
     reload page
     sleep                              10
     input text                         ${usr_Searchuser}               ${name}
     sleep                              5
     page should contain element         xpath://td[normalize-space()='${user}']
     page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
     click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
     sleep                               5
     page should contain element         ${usr_edituser_h}
     page should contain element         ${usr_edituser_cancel}
     page should contain element         ${usr_edituser_organizations}
     page should contain element         ${usr_edituser_role}
     page should contain element         ${usr_edituser_customrolepermission}
     page should contain element         ${usr_edituser_username}
     page should contain element         ${usr_edituser_firstname}
     page should contain element         ${usr_edituser_lastname}
     page should contain element         ${usr_edituser_email}
     page should contain element         ${usr_edituser_gender}
     page should contain element         ${usr_edituser_phone}
     page should contain element         ${usr_adduser_selectbatchgroup}
     page should contain element         ${usr_adduser_selectprogram}
     scroll element into view            ${usr_edituser_update}
     page should contain element         ${usr_edituser_selectbatchgroup}
     page should contain element         ${usr_edituser_selectprogram}
     page should contain element         ${usr_edituser_selectlevel}
     page should contain element         ${usr_edituser_birthdate}
     page should contain element         ${usr_edituser_selectstudenthouse}
     page should contain element         ${usr_edituser_SelectAttribute2}
     page should contain element         ${usr_edituser_enrollmentnumber}
     page should contain element         ${usr_edituser_selectreferralby}
     page should contain element         ${usr_edituser_referraldate}
     page should contain element         ${usr_edituser_active}
     page should contain element         ${usr_edituser_changepassword}
     page should contain element         ${usr_edituser_update}
     page should contain element         ${usr_edituser_delete}
     scroll element into view            ${usr_edituser_assignparents}
     page should contain element         ${usr_edituser_assignparents}
     scroll element into view            ${usr_edituser_cancel}
     click on button                     ${usr_edituser_cancel}
     sleep                               2
#-------------------------------------------------------------------------------------------
Edit User
    [Arguments]                         ${user}    ${uname}    ${Firstname}    ${Lastname}     ${email}        ${Gender}     ${phone}    ${bdate}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    sleep                               5
    page should contain element         ${usr_edituser_h}
    press keys                          ${usr_edituser_username}             CTRL+a   BACKSPACE
    input text                          ${usr_edituser_username}             ${uname}
    press keys                          ${usr_edituser_firstname}            CTRL+a   BACKSPACE
    input text                          ${usr_edituser_firstname}            ${Firstname}
    press keys                          ${usr_edituser_lastname}             CTRL+a   BACKSPACE
    input text                          ${usr_edituser_lastname}             ${Lastname}
    click on button                     ${usr_edituser_gender}
    page should contain element         xpath://div[text()='${Gender}']
    click on button                     xpath://div[text()='${Gender}']
    Press Keys                          ${usr_adduser_phone}                  ESC
    Press keys                          ${usr_adduser_phone}                  CTRL+a   BACKSPACE
    input text                          ${usr_adduser_phone}                  ${phone}
    scroll element into view            ${usr_edituser_update}
    input date                          ${usr_edituser_BirthDate}             ${bdate}
    Press Keys                          ${usr_edituser_BirthDate}             ESC
    click on button                     ${usr_edituser_update}
    sleep                               5
#-------------------------------------------------------------------------------------------
Delete user
    [Arguments]                         ${user}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    sleep                               10
    page should contain element         ${usr_edituser_h}
    click on button                     ${usr_edituser_cancel}
    sleep                               2
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[3]
    sleep                               5
    scroll element into view            ${usr_edituser_update}
    page should contain element         ${usr_edituser_delete}
    click on button                     ${usr_edituser_delete}
    sleep                               3
    Handle Alert
#    sleep                               3
#    click on button                     ${usr_edituser_delete}
#    Handle Alert
    sleep                               10
    page should not contain element     xpath://td[normalize-space()='${user}']
#-------------------------------------------------------------------------------------------
Active/Inactive Batches
    [Arguments]                         ${user}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    sleep                               5
#    page should not contain element     ${usr_activeinactivebatches_h}
    page should contain element         ${usr_activeinactivebatches_artbatchone}
    page should contain element         ${usr_activeinactivebatches_mathematicsone}
    page should contain element         ${usr_activeinactivebatches_save}
    page should contain element         ${usr_activeinactivebatches_cancel}
    click on button                     ${usr_activeinactivebatches_cancel}
    sleep                               5
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    sleep                               5
    click on button                     ${usr_activeinactivebatches_mathematicsone}
    click on button                     ${usr_activeinactivebatches_save}
    sleep                               5
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[1]
    sleep                               3
    page should contain element         ${usr_activeinactivebatches_mathematicsone}
    checkbox should not be selected     ${usr_activeinactivebatches_mathematicsone}
    click on button                     ${usr_activeinactivebatches_cancel}
    sleep                               2
#-------------------------------------------------------------------------------------------
Verify Edit Enrollments
    [Arguments]                         ${user}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    sleep                               5
    page should contain element         ${usr_editenrollments_h}
    page should contain element         ${usr_editenrollments_byterm}
    page should contain element         ${usr_editenrollments_bylevel}
    page should contain element         ${usr_editenrollments_selectterms}
    page should contain element         ${usr_editenrollments_selectbatch}
    page should contain element         ${usr_editenrollments_transactions}
    page should contain element         ${usr_editenrollments_close}
    page should contain element         ${usr_editenrollments_save}
    click on button                     ${usr_editenrollments_close}
    sleep                               5
#-------------------------------------------------------------------------------------------
Edit Enrollments
    [Arguments]                         ${user}         ${Term}     ${Batch}        ${level}
    page should contain element         xpath://td[normalize-space()='${user}']
    page should contain element         xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    click on button                     xpath://td[normalize-space()='${user}']/following-sibling::td[2]/button[2]
    sleep                               5
    page should contain element         ${usr_editenrollments_h}
    click on button                     ${usr_editenrollments_bylevel}
    page should contain element         ${usr_editenrollments_selectlevel}
    input text                          ${usr_editenrollments_selectlevel}              ${level}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    Press Keys                          ${usr_editenrollments_selectlevel}             ESC
    input text                          ${usr_editenrollments_selectbatch}        ${Batch}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    click on button                     ${usr_editenrollments_byterm}
    sleep                               2
    Press keys                          ${usr_EditEnrollments_SelectTerms}              CTRL+a   BACKSPACE
    input text                          ${usr_EditEnrollments_SelectTerms}              ${Term}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    click on button                     ${usr_EditEnrollments_Op_First}
    Press Keys                          ${usr_EditEnrollments_SelectTerms}             ESC
    Press keys                          ${usr_editenrollments_selectbatch}        CTRL+a   BACKSPACE
    Press keys                          ${usr_editenrollments_selectbatch}        CTRL+a   BACKSPACE
    input text                          ${usr_editenrollments_selectbatch}        ${Batch}
    sleep                               3
    page should contain element         ${usr_EditEnrollments_Op_First}
    click on button                     ${usr_EditEnrollments_Op_First}
    Press Keys                          ${usr_editenrollments_selectbatch}             ESC
    click on button                     ${usr_editenrollments_save}
    sleep                               3

#-------------------------------------------------------------------------------------------
#Edit Enrollments
#    [Arguments]                         ${user}         ${Term}     ${Batch}        ${level}
#    Press Keys                          ${usr_editenrollments_selectlevel}             ESC
#    input text                          ${usr_editenrollments_selectbatch}        ${Batch}
#    sleep                               3
#    page should contain element         ${usr_EditEnrollments_Op_First}
#    click on button                     ${usr_editenrollments_byterm}
#    sleep                               2
#    Press keys                          ${usr_EditEnrollments_SelectTerms}              CTRL+a   BACKSPACE
#    input text                          ${usr_EditEnrollments_SelectTerms}              ${Term}
#    sleep                               3
#    page should contain element         ${usr_EditEnrollments_Op_First}
#    click on button                     ${usr_EditEnrollments_Op_First}
#    Press Keys                          ${usr_EditEnrollments_SelectTerms}             ESC
#    Press keys                          ${usr_editenrollments_selectbatch}             CTRL+a   BACKSPACE
#    Press keys                          ${usr_editenrollments_selectbatch}             CTRL+a   BACKSPACE
#    input text                          ${usr_editenrollments_selectbatch}             ${Batch}
#    sleep                               3
#    page should contain element         ${usr_EditEnrollments_Op_First}
#    click on button                     ${usr_EditEnrollments_Op_First}
#    Press Keys                          ${usr_editenrollments_selectbatch}             ESC
#    click on button                     ${usr_editenrollments_save}
#    sleep                               3
#

#-------------------------------------------------------------------------------------------
Create User
    [Arguments]                         ${org}      ${role}     ${uname}    ${Firstname}    ${Lastname}     ${email}    ${password}     ${passwordagain}    ${Gender}     ${phone}    ${bdate}

    page should contain element         ${usr_person_add}
    click on button                     ${usr_person_add}
    sleep                               5
    page should contain element         ${usr_adduser_h}
    scroll element into view            ${usr_adduser_create}
    click on button                     ${usr_adduser_create}
    page should contain element         ${usr_adduser_roleisrequired}
    page should contain element         ${usr_adduser_permissionisrequired}
    page should contain element         ${usr_adduser_usernameisrequired}
    page should contain element         ${usr_adduser_firstnameisrequired}
    page should contain element         ${usr_adduser_lastnameisrequired}
    page should contain element         ${usr_adduser_passwordisrequired}
    page should contain element         ${usr_adduser_passwordagainrequired}
    scroll element into view            ${usr_adduser_organizations}
    click on button                     ${usr_adduser_organizations}
    page should contain element         xpath:(//div[contains(text(),'${org}')])[1]
    click on button                     xpath:(//div[contains(text(),'${org}')])[1]
    Press Keys                          ${usr_adduser_username}                  ESC
    click on button                     ${usr_adduser_role}
    page should contain element         xpath://div[text()='${role}']
    click on button                     xpath://div[text()='${role}']
    Press Keys                          ${usr_adduser_username}                  ESC
    input text                          ${usr_adduser_username}                  ${uname}
    input text                          ${usr_adduser_firstname}                 ${Firstname}
    input text                          ${usr_adduser_lastname}                  ${Lastname}
    input text                          ${usr_adduser_email}                     ${email}
    input text                          ${usr_adduser_password}                  ${password}
    input text                          ${usr_adduser_passwordagain}             ${passwordagain}
    click on button                     ${usr_adduser_gender}
    page should contain element         xpath://div[text()='${Gender}']
    click on button                     xpath://div[text()='${Gender}']
    Press Keys                          ${usr_adduser_phone}                  ESC
    input text                          ${usr_adduser_phone}                  ${phone}
    input date                          ${usr_adduser_BirthDate}              ${bdate}
    Press Keys                          ${usr_adduser_phone}                  ESC
    checkbox should be selected         ${usr_adduser_active}
    click on button                     ${usr_adduser_create}
    sleep                               10
    wait until page contains element    ${usr_filterbybatch}                    20
    click on button                     ${usr_FilterByRole}
    click on button                     xpath://div[contains(text(),'${role}')]
    Press Keys                          ${usr_Searchuser}                   ESC
#-------------------------------------------------------------------------------------------
Verify Get Students Data
    sleep                               10
    wait until page contains element    ${usr_GetStudentsData}      20
    click on button                     ${usr_getstudentsdata}
    sleep                               3
    page should contain element         ${getstudentdata_addemails_h}
    page should contain element         ${getstudentdata_addemails_close}
    page should contain element         ${getstudentdata_addemails_emails}
    page should contain element         ${getstudentdata_addemails_getstudentdata}
    click on button                     ${getstudentdata_addemails_close}
    sleep                               2
#-------------------------------------------------------------------------------------------
Get Students Data
    [Arguments]                             ${mail}
    click on button                         ${usr_getstudentsdata}
    sleep                                   3
    page should contain element             ${getstudentdata_addemails_h}
    Press keys                              ${getstudentdata_addemails_emails}              CTRL+a   BACKSPACE
    Press keys                              ${getstudentdata_addemails_emails}              CTRL+a   BACKSPACE
    input text                              ${getstudentdata_addemails_emails}              ${mail}
    click on button                         ${getstudentdata_addemails_getstudentdata}
    sleep                                   5
#-------------------------------------------------------------------------------------------