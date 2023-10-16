*** Settings ***
Documentation   All the page objects and keywords of System Settings Users Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${usr_FilterByBatch}                  xpath:(//input[@aria-label='Filter by Batch'])[2]
${usr_FilterByRole}                   css:input[aria-label='Filter by Role']
${usr_Organizations}                  css:input[aria-label="Organizations"]
${usr_Searchuser}                     xpath:(//input[@aria-label='Search Users, Phone Numbers And Email'])[2]
${usr_UserStatus}                     xpath:(//input[@aria-label='User Status'])[2]
${usr_SortBy}                         xpath:(//input[@aria-label='Sort By'])[2]
${user_FilterbyProgram}               css:input[aria-label="Filter by Program"]
${user_FilterbyBatchGroup}            css:input[aria-label="Filter by BatchGroup"]
${user_FilterbyLevel}                 css:input[aria-label="Filter by Level"]
${user_FilterbyStudentHouse}          css:input[aria-label="Filter by Student House"]
${user_FilterbyAttribute2}            css:input[aria-label="Filter by Attribute 2"]
${usr_MassUserUpload}                 css:a[title="Mass User Upload"]
${usr_person_add}                     xpath://i[text()='person_add']//ancestor::button
${usr_GetStudentsData}                xpath://a[text()='Get Students Data']
${usr_ReferralCodes}                  xpath://div[normalize-space()='Referral Codes']/parent::button
${usr_th_Name}                        xpath:(//th[@aria-label="Name: Not sorted."])[2]
${usr_th_Enrollments}                 css:th[aria-label='Enrollments: Not sorted.']
${usr_th_Actions}                     css:th[aria-label='Actions: Not sorted.']

#Add User Profile
${usr_adduser_h}                        xpath://span[text()='Add User Profile']
${usr_adduser_Cancel}                   xpath://i[text()='cancel']//ancestor::button
${usr_adduser_Organizations}            xpath:(//input[@aria-label='Organizations'])[1]
${usr_adduser_Role}                     css:input[aria-label='Role']
${usr_adduser_CustomRolePermission}     css:input[aria-label='Custom Role Permission']
${usr_adduser_Username}                 css:input[aria-label='Username']
${usr_adduser_Firstname}                css:input[aria-label='First name']
${usr_adduser_Lastname}                 css:input[aria-label='Last name']
${usr_adduser_Email}                    css:input[aria-label='Email']
${usr_adduser_Password}                 css:input[aria-label='Password']
${usr_adduser_PasswordAgain}            css:input[aria-label='Password Again']
${usr_adduser_Gender}                   css:input[aria-label='Gender']
${usr_adduser_Phone}                    css:input[aria-label='Phone']
${usr_adduser_BirthDate}                css:input[aria-label='Birth Date']
${usr_adduser_Active}                   css:input[aria-label='Active']
${usr_adduser_Create}                   xpath://div[normalize-space()='Create']/parent::button
${usr_adduser_Roleisrequired}           xpath://div[text()='Role is required']
${usr_adduser_Permissionisrequired}     xpath://div[text()='Permission is required']
${usr_adduser_Usernameisrequired}       xpath://div[text()='Username is required']
${usr_adduser_Firstnameisrequired}      xpath://div[text()='First name is required']
${usr_adduser_Lastnameisrequired}       xpath://div[text()='Last name is required']
${usr_adduser_Passwordisrequired}       xpath:(//div[text()='Password is required'])[1]
${usr_adduser_PasswordAgainrequired}    xpath:(//div[text()='Password is required'])[2]
${usr_adduser_SelectBatchGroup}         css:input[aria-label='Select Batch Group']
${usr_adduser_SelectProgram}            css:input[aria-label='Select Program']
${usr_adduser_Selectlevel}              css:input[aria-label='Select Level']
${usr_adduser_SelectStudentHouse}       css:input[aria-label='Select Student House']
${usr_adduser_ReferralDate}             css:input[aria-label='Referral Date']

#Edit Profile
${usr_edituser_h}                        xpath://span[text()='Edit User Profile']
${usr_edituser_Cancel}                   xpath://i[text()='cancel']//ancestor::button
${usr_edituser_AssignParents}            css:input[aria-label='Assign Parents']
${usr_edituser_Organizations}            xpath:(//input[@aria-label='Organizations'])[1]
${usr_edituser_Role}                     css:input[aria-label='Role']
${usr_edituser_CustomRolePermission}     css:input[aria-label='Custom Role Permission']
${usr_edituser_Username}                 css:input[aria-label='Username']
${usr_edituser_Firstname}                css:input[aria-label='First name']
${usr_edituser_Lastname}                 css:input[aria-label='Last name']
${usr_edituser_Email}                    css:input[aria-label='Email']
${usr_edituser_Gender}                   css:input[aria-label='Gender']
${usr_edituser_Phone}                    css:input[aria-label='Phone']
${usr_edituser_SelectBatchGroup}         css:input[aria-label='Select Batch Group']
${usr_edituser_SelectProgram}            css:input[aria-label='Select Program']
${usr_edituser_Selectlevel}              css:input[aria-label='Select Level']
${usr_edituser_BirthDate}                css:input[aria-label='Birth Date']
${usr_edituser_SelectStudentHouse}       css:input[aria-label='Select Student House']
${usr_edituser_SelectAttribute2}         css:input[aria-label='Select Attribute 2']
${usr_edituser_EnrollmentNumber}         css:input[aria-label='Enrollment Number']
${usr_edituser_SelectReferralBy}         css:input[aria-label='Select Referral By']
${usr_edituser_ReferralDate}             css:input[aria-label='Referral Date']
${usr_edituser_ChangePassword}           css:input[aria-label='Change Password']
${usr_edituser_Update}                   xpath://div[@class='v-dialog__content v-dialog__content--active']//div[normalize-space()='Update']/parent::button
${usr_edituser_Delete}                   xpath://div[@class='v-dialog__content v-dialog__content--active']//div[normalize-space()='Delete']/parent::button
${usr_edituser_Active}                   css:input[aria-label='Active']
${usr_activeinactivebatches_h}                  xpath://span[normalize-space()='Active/Inactive Batch(es)']
${usr_activeinactivebatches_Save}               xpath://div[normalize-space()='Save']/parent::button
${usr_activeinactivebatches_Cancel}             xpath://div[normalize-space()='Cancel']/parent::button
${usr_activeinactivebatches_ARTBATCHONE}        css:input[aria-label='ART BATCH ONE']
${usr_activeinactivebatches_MATHEMATICSONE}     css:input[aria-label='MATHEMATICS ONE']

#//td[normalize-space()='Akrit Khanna (Student)']

#Edit Enrollments
${usr_EditEnrollments_h}                        xpath://span[text()='Edit Enrollments ']
${usr_EditEnrollments_ByTerm}                   css:input[aria-label='By Term']
${usr_EditEnrollments_ByLevel}                  css:input[aria-label='By Level']
${usr_EditEnrollments_SelectTerms}              css:input[aria-label='Select Terms']
${usr_EditEnrollments_SelectLevel}              css:input[aria-label='Select Level']
${usr_EditEnrollments_SelectBatch}              css:input[aria-label='Select Batch']
${usr_EditEnrollments_Transactions}             xpath://div[normalize-space()='Transactions']/parent::button
${usr_EditEnrollments_Close}                    xpath://div[normalize-space()='Close']/parent::button
${usr_EditEnrollments_Save}                     xpath://div[normalize-space()='Save']/parent::button
${usr_EditEnrollments_Op_First}                 xpath:(//input[@role="checkbox"])[1]
${usr_EditEnrollments_Op_Two}                   xpath:(//input[@role="checkbox"])[2]

#Get Student Data
${GetStudentData_AddEmails_h}                   xpath://div[text()='Add Emails']
${GetStudentData_AddEmails_Emails}              css:input[aria-label='Emails']
${GetStudentData_AddEmails_Close}               xpath://i[text()='close']//ancestor::button
${GetStudentData_AddEmails_GetStudentData}      xpath://div[normalize-space()='Get Student Data']/parent::button