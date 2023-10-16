*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${EnrolmentList_h}                              xpath://div[normalize-space()='Enrolment List']
${EnrolmentList_settings}                       css:button[title='Enrolment settings']
${EnrolmentList_EnrolStudent}                   css:button[title='Enrol Student']
${EnrolmentList_InviteStudent}                  css:button[title='Invite Student']
${EnrolmentList_InviteeList}                    css:button[title='Invitee List']
${EnrolmentList_Close}                          xpath://div[normalize-space()='Enrolment List']//following-sibling::button[5]

${EnrolmentList_Teachers_h}                     xpath://h3[normalize-space()='Teachers']
${EnrolmentList_Students_h}                     xpath://h3[normalize-space()='Students']

#//div[@title="Go to Beta Student's Profile"]//child::button

#Add Student
${AddStudent_h}                                 xpath://div[normalize-space()='Add Student']
${AddStudent_Close}                             xpath://div[normalize-space()='Add Student']/following-sibling::button
${AddStudent_UsernameorEmail}                   css:input[aria-label='Username or Email']
${AddStudent_Add}                               xpath:(//div[normalize-space()='Add'])[1]//parent::button
${AddStudent_usernameisrequired}                xpath://div[contains(text(),'username is required.')]

#Invite Student
${InviteStudent_h}                              xpath://div[normalize-space()='Invite Student']
${InviteStudent_Close}                          xpath://div[normalize-space()='Invite Student']/following-sibling::button
${InviteStudent_Email}                          css:input[aria-label='Emails']
${InviteStudent_Invite}                         xpath:(//div[contains(text(),'Invite')])[3]/parent::button
${InviteStudent_emailrequired}                  xpath://div[contains(text(),'email required.')]

#Invitee List
${InviteeList_h}                                xpath://div[normalize-space()='Invitee List']
${InviteeList_Invitee_th}                       xpath://th[contains(@aria-label,'Invitee:')]
${InviteeList_SentDate_th}                      xpath://th[contains(@aria-label,'Sent Date:')]
${InviteeList_Status_th}                        xpath://th[contains(@aria-label,'Status:')]
${InviteeList_Close}                            xpath://div[normalize-space()='Invitee List']/following-sibling::button


#Achievement
#(//div[@title="Go to Beta Student's Profile"]//child::button)[1]


#MyLearningPlan
#(//div[@title="Go to Beta Student's Profile"]//child::button)[2]


#//div[contains(text(),'My Learning Plan')]