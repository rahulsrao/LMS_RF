*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings.robot
Resource        ../../Resources/TestData/TestData.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_UniversityInfo.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Organizations.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Courses.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_CoursePage.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Program.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Terms.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Batches.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_BatchGroup.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Users.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_OtherSettings.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_StoreSettings.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_ExternalTools.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_BatchGroup.robot
Resource         ../../Resources/KeywordDefinationFiles/SystemSettings_Users.robot


*** Keywords ***
Verify Admin Teacher User System Settings
   [Arguments]                                                             ${levelN}        ${courseN}     ${moduleN}      ${ConceptN}     ${TermN}    ${OrgN}     ${prgm}    ${BatchN}     ${StudentHouse}        ${BatchGroupN}       ${StudentN}
   SystemSettings.verify System Settings
   SystemSettings.verify University Info
   SystemSettings_CoursePage.verify Courses Page of a Teacher User         ${levelN}        ${courseN}     ${moduleN}      ${ConceptN}
   SystemSettings.Verify Program
   SystemSettings.Verify Term
   SystemSettings.Verify Batch
   SystemSettings.Verify BatchGroup                                        ${BatchGroupN}
   SystemSettings.Verify User                                              ${BatchGroupN}       ${StudentN}
   SystemSettings.Verify Other Settings
   SystemSettings.Verify Store Settings
   SystemSettings.Verify External Tools
   sleep           5

Verify System Settings
    [Documentation]  This test case verifies System Settings
    [Tags]  Settings
    wait until element is visible       ${ss_universityinfo}       120
    page should contain element         ${ss_universityinfo}
    page should contain element         ${ss_courses}
    page should contain element         ${ss_program}
    page should contain element         ${ss_term}
    page should contain element         ${ss_batch}
    page should contain element         ${ss_batchgroup}
    page should contain element         ${ss_users}
    page should contain element         ${ss_othersettings}
    scroll element into view            ${ss_externaltools}
    page should contain element         ${ss_storesettings}
    page should contain element         ${ss_externaltools}

#-------------------------------------------------------------------------------------------
Verify Teacher User System Settings
    [Arguments]                                                             ${levelN}        ${courseN}     ${moduleN}      ${ConceptN}     ${TermN}    ${OrgN}     ${prgm}    ${BatchN}     ${StudentHouse}        ${BatchGroupN}      ${Studentname}
    SystemSettings.Verify Teacher User System Settings page
    SystemSettings_CoursePage.verify Courses Page of a Teacher User         ${levelN}        ${courseN}     ${moduleN}      ${ConceptN}
    SystemSettings_Program.Verify Program
    SystemSettings_Terms.Verify Terms page of Teacher User                  ${TermN}
    SystemSettings_Batches.Verify Batches page of Teacher User              ${OrgN}          ${TermN}        ${prgm}     ${levelN}        ${courseN}       ${BatchN}     ${StudentHouse}
    SystemSettings_BatchGroup.Verify BatchGroup page of Teacher User        ${BatchGroupN}
    SystemSettings_Users.Verify User of Teacher User                        ${Studentname}      ${BatchGroupN}

#-------------------------------------------------------------------------------------------
Verify Teacher User System Settings page
    page should contain element         ${ss_Courses}
    page should contain element         ${ss_program}
    page should contain element         ${ss_term}
    page should contain element         ${ss_batch}
    page should contain element         ${ss_batchgroup}
    page should contain element         ${ss_users}
#-------------------------------------------------------------------------------------------
verify University Info
    click on button                     ${ss_universityinfo}
    SystemSettings_UniversityInfo.verify UniversityInfo

#-------------------------------------------------------------------------------------------
verify Organizations
    click on button                     ${ss_organizations}
    SystemSettings_Organizations.verify Organizations
    SystemSettings_Organizations.Add Organization
    SystemSettings_Organizations.Edit Organization
    SystemSettings_Organizations.Delete Organization

#-------------------------------------------------------------------------------------------
verify Courses
    click on button                         ${ss_courses}
    SystemSettings_Courses.Verify Add Course window
    systemsettings_courses.add course                        Geography           Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth. Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth.       3 Months     5     C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/geography.jpg
    systemsettings_courses.verify new course                 Geography
    systemsettings_courses.verify edit course window
    systemsettings_courses.edit course                       Edit Geography      Geography is a field of science devoted to the study of the lands, features, inhabitants, and phenomena of Earth.       2 Months     8     Level 3     C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/solorSystem.jpg
    systemsettings_courses.verify editcourse                 Level 3             Edit Geography
    systemsettings_courses.verify add module window
    systemsettings_courses.add module                        Module 1            Edit Geography Module 1       C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/module1.png     Level 3     Edit Geography
    systemsettings_courses.verify new module                 Module 1            Level 3     Edit Geography
    systemsettings_courses.verify edit module window
    systemsettings_courses.edit module                       Module 2            Edit Geography Module 1       C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/module2.png
    systemsettings_courses.verify manage concept window      Level 3             Edit Geography
    systemsettings_courses.verify add concept window
    systemsettings_courses.add concept                       Concept 2
    systemsettings_courses.verify new concept                Level 3            Edit Geography                 Concept 2
    systemsettings_courses.verify edit course window
    systemsettings_courses.edit concept                      Concept 3
    systemsettings_courses.delete course                     Level 3            Edit Geography
    SystemSettings_Courses.Verify Manage Levels window
    SystemSettings_Courses.Verify Add level window
    SystemSettings_Courses.Add Level                         Level 8
    SystemSettings_Courses.Verify Edit Level window          8
    SystemSettings_Courses.Edit Level                        8                 Level 9
    SystemSettings_Courses.Delete Level                      8

Verify Program
    click on button                                                 ${ss_program}
    sleep                                                           5
    SystemSettings_Program.Verify Program page                      Uni
    SystemSettings_Program.verify Create program window
    SystemSettings_Program.verify Attach Courses Credit window      Test
    SystemSettings_Program.Verify Finalize window                   Test                10
    SystemSettings_Program.Create Program                           Test                10          5
    SystemSettings_Program.verify Program created and Edit          Test                EditTest            10          15          5
    SystemSettings_Program.delete a program                         EditTest

Verify Term
    click on button                                                 ${ss_Term}
    sleep                                                           5
    SystemSettings_Terms.verify Terms page                          SPRING 2020             SPRING 2020 (copy)      LMS
    SystemSettings_Terms.verify Add Term Page
    SystemSettings_Terms.Add Term                                   TEST TERM 1             2022-12-28              2023-03-30          LMS
    SystemSettings_Terms.verify new term                            TEST TERM 1
    SystemSettings_Terms.verify Edit term page                      TEST TERM 1
    SystemSettings_Terms.Edit Term                                  TEST TERM 1             TEST TERM 2             2022-12-25              2023-04-20          School 1
    SystemSettings_Terms.Copy Term                                  TEST TERM 2
    SystemSettings_Terms.Make Term Inactive                         TEST TERM 2

Verify Batch
    click on button                                                 ${ss_batch}
    sleep                                                           5
    SystemSettings_Batches.verify Batch page                        ART BATCH ONE            ART         SPRING 2020     LMS
    systemsettings_batches.verify add batch window
    SystemSettings_Batches.Add Batch                                ART Test BATCH          ART         SPRING 2020     LMS         2022-12-29              2023-03-30
    SystemSettings_Batches.Edit Batch                               ART Test BATCH          ART         SPRING 2020     LMS         ART TEST BATCH ONE      School 1
#    SystemSettings_Batches.Add Add Zoom JWT Key                     School 1                ART TEST BATCH ONE          ${JWT_Token}
    SystemSettings_Batches.verify mass enrol                        ART TEST BATCH ONE      Uni         Level 1          School 1
    SystemSettings_Batches.Verify Batch Online                      ART TEST BATCH ONE       School 1
    SystemSettings_Batches.Enrolment Settings                       ART TEST BATCH ONE
    SystemSettings_Batches.Delete Batch                             ART TEST BATCH ONE

Verify BatchGroup
    [Arguments]                                                    ${BatchGrpN}
    click on button                                                ${ss_BatchGroup}
    sleep                                                          5
    SystemSettings_BatchGroup.verify BatchGroup page               ${BatchGrpN}                     CHEMISTRY BATCH TWO
    systemsettings_batchgroup.verify add batch group
    systemsettings_batchgroup.add batch group                      Test ART BATCH GROUP 01          SPRING 2020
    systemsettings_batchgroup.verify add batches                   Test ART BATCH GROUP 01
    systemsettings_batchgroup.add batches                          Test ART BATCH GROUP 01          ART BATCH ONE
    systemsettings_batchgroup.verify roll over                     Test ART BATCH GROUP 01
    systemsettings_batchgroup.edit batch group                     Test ART BATCH GROUP 01          TEST ART BATCH GROUP

Verify User
    [Arguments]                                                     ${BatchGroupN}       ${StudentN}
    click on button                                                 ${ss_users}
    SystemSettings_Users.verify user page                           ${StudentN} (Student)      ART BATCH ONE   Students      LMS     Uni       ${BatchGroupN}
    SystemSettings_Users.Verify Add User
    SystemSettings_Users.Add User                                   LMS      Student     qa.test    QA    Test     qa@gmail.com    password     password    M     1234567890    2000-01-01       ${BatchGroupN}     Uni         Level 7
    SystemSettings_Users.Verify Edit User                           QA Test (Student)    QA Test
    SystemSettings_Users.Edit User                                  QA Test (Student)    qa.test1    Test  Student1      TestStudent1@gmail.com        F     1231231231         2001-05-05
    SystemSettings_Users.Active/Inactive Batches                    Test Student1 (Student)
    SystemSettings_Users.Verify Edit Enrollments                    Test Student1 (Student)
    SystemSettings_Users.Edit Enrollments                           Test Student1 (Student)         SPRING 2020         ART BATCH ONE       Level 7
    SystemSettings_Users.Delete user                                Test Student1 (Student)
#    SystemSettings_Users.Create User                                LMS      Teacher     teacher1.test    Test    Teacher1     teacher1@gmail.com    password     password    M     1234567890    1995-01-01
#    SystemSettings_Users.Create User                                LMS      Parent      parent1.test     Test    Parent1      Parent1@gmail.com    password     password    M     1234567890    1993-01-01
#    SystemSettings_Users.Create User                                LMS       Admin       admin1.test     Test    Admin1      Admin1@gmail.com    password     password    M     1234567890    1993-01-01
    SystemSettings_Users.Verify Get Students Data
    SystemSettings_Users.Get Students Data                          rahulsrao15@gmail.com

Verify Other Settings
    click on button                                                 ${ss_othersettings}
    SystemSettings_OtherSettings.Verify OtherSettings page
    SystemSettings_OtherSettings.Verify 1:1 Mentoring
    SystemSettings_OtherSettings.Verify Batch Group Settings
    SystemSettings_OtherSettings.Verify Certificates Settings         Test University         Proudly presented to
    SystemSettings_OtherSettings.Verify Content Settings
    SystemSettings_OtherSettings.Verify Custom Student Attributes     Student House           Attribute 2                Green
    SystemSettings_OtherSettings.Edit Custom Attribute Name           Student House           Attribute 2                Attribute A          Attribute B
    SystemSettings_OtherSettings.Edit Attribute                       Attribute A             Attribute B                Green                yellow
    SystemSettings_OtherSettings.Add Attribute                        Attribute A             Attribute B                Green
    SystemSettings_OtherSettings.Delete Attribute                     yellow
    SystemSettings_OtherSettings.Progress Tracking Settings                                      50
    SystemSettings_OtherSettings.Verify SAT Settings                  5
    SystemSettings_OtherSettings.Verify Wall Settings
    SystemSettings_OtherSettings.Verify Course Map Settings
    SystemSettings_OtherSettings.Verify Coin Settings                 3      4       2       4       2       3       4
    SystemSettings_OtherSettings.Verify Game Settings                 20
    SystemSettings_OtherSettings.Verify Concurrent Login Settings     110
    SystemSettings_OtherSettings.Verify Role Permissions
    SystemSettings_OtherSettings.Verify Student Role Permissions
    SystemSettings_OtherSettings.Verify Teacher Role Permissions
    SystemSettings_OtherSettings.Verify Admin Teacher Role Permissions
    SystemSettings_OtherSettings.Verify Parent Permissions
    SystemSettings_OtherSettings.Verify Admin Role Permissions
    SystemSettings_OtherSettings.Create New Role
    SystemSettings_OtherSettings.Verify BBB Meeting Settings
    SystemSettings_OtherSettings.Verify Google Settings page
    SystemSettings_OtherSettings.Verify Microsoft Teams Meeting Settings
    SystemSettings_OtherSettings.Verify Zoom Meeting Settings
    SystemSettings_OtherSettings.Verify Enable/Disable Store
    SystemSettings_OtherSettings.Verify Vendor Settings
    SystemSettings_OtherSettings.Verify Where did you hear about us?

Verify Store Settings
    click on button                                                 ${ss_storesettings}
    SystemSettings_StoreSettings.Verify Store Settings

Verify External Tools
    click on button                                                 ${ss_externaltools}
    SystemSettings_ExternalTools.Verify External Tools page
    SystemSettings_ExternalTools.Verify One Note Settings
    SystemSettings_ExternalTools.Verify CopyLeaks Settings
