*** Settings ***
Documentation   All the page objects and keywords of System Settings Batches Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hBatches}                            xpath://div[@class='v-toolbar__title' and contains(text(),'Batches')]
${btch_add}                            xpath://div[text()='ADD']/parent::button
${btch_FilterByCourse}                 css:input[aria-label="Filter By Course:"]
${btch_FilterByTerm}                   css:input[aria-label="Filter By Term:"]
${btch_Organizations}                  css:input[aria-label="Organizations"]
${btch_Search}                         css:input[aria-label="Search"]
${btch_IsActive}                       css:input[aria-label="Is Active?"]
${btch_OpenEnrolment}                  css:input[aria-label="Open Enrolment"]
${btch_PublicURL}                      css:input[aria-label="Public URL"]

#Add Batch
${hAddBatch}                           xpath://span[@class="headline" and text()='Add Batch']
${addbatch_name}                       css:input[aria-label="Name"]
${addbatch_term}                       css:input[aria-label="Term"]
${addbatch_Course}                     css:input[aria-label="Course"]
${addbatch_Active}                     css:input[aria-label="Active"]
${addbatch_LessonPlan}                 css:input[aria-label="Lesson Plan"]
${addbatch_SelfPacedBatch}             css:input[aria-label="Self Paced Batch"]
${addbatch_StartDate}                  css:input[aria-label="Start Date"]
${addbatch_EndDate}                    css:input[aria-label="End Date"]
${addbatch_Close}                      xpath://div[text()='Close']/parent::button
${addbatch_Save}                       xpath://div[text()='Save']/parent::button
${addbatch_validation}                 xpath://div[@class='toasted toasted-primary error' and contains(text(),'Please enter Name')]

#Edit Batch
${editbatch_AddZoomJWT}                xpath:(//div[normalize-space()='Add Zoom JWT Key'])[2]//parent::button
${editbatch_EditZoomJWT}                xpath://div[normalize-space()='Edit Zoom JWT Key']//parent::button
${editbatch_AddZoomOAuth}              xpath://div[contains(text(),'Add Zoom OAuth')]/parent::button
${editbatch_Delete}                    xpath://div[normalize-space()='Delete']/parent::button
${editbatch_termname}                  css:input[aria-label="Term Name"]
${editbatch_coursename}                css:input[aria-label="Course Name"]
${editbatch_ZoomSettingsh}             xpath://div[text()='Zoom Meeting Settings']
${editbatch_ZoomSettings_JWTKey}       css:input[aria-label='JWT Key']
${editbatch_ZoomSettings_info}         xpath://i[text()='info']/ancestor::button
${editbatch_ZoomSettings_submit}       xpath://div[text()='Submit']/parent::button
${editbatch_ZoomSettings_Delete}       xpath://div[text()='Delete']/parent::button
${editbatch_ZoomSettings_Update}       xpath://div[text()='Update']/parent::button
${editbatch_ZoomSettings_Cancel}       xpath://div[text()='Cancel']/parent::button

#Batch Mass Enrol
${Batchmassenrol_h}                    xpath://div[contains(text(),'Batch Mass Enrol')]
${Batchmassenrol_Program}              css:input[aria-label="Program"]
${Batchmassenrol_StudentHouse}         css:input[aria-label="Student House"]
${Batchmassenrol_Attribute2}           css:input[aria-label="Attribute 2"]
${Batchmassenrol_Level}                css:input[aria-label="Level"]
${Batchmassenrol_Close}                xpath://div[text()='Close']/parent::button
${Batchmassenrol_Save}                 xpath://div[text()='Save']/parent::button

#Batch Online
${BatchOnlineh}                        xpath://div[text()='Batch Online']
${BatchOnline_text}                    xpath://p[text()='Make it available on the LoveMySkool store?']
${BatchOnline_done}                    xpath://i[text()='done']//ancestor::button
${BatchOnline_close}                   xpath://i[text()='close']//ancestor::button

#Enrolment Settings
${EnrolmentSettingsh}                  xpath://div[contains(text(),'Enrolment Settings')]
${EnrolmentSettings_MaxEnrolments}     css:input[aria-label="Max Enrolments"]
${EnrolmentSettings_OpenEnrolment}     xpath:(//input[@aria-label='Open Enrolment'])[1]
${EnrolmentSettings_PublicURL}         xpath:(//input[@aria-label='Open Enrolment'])[1]
${EnrolmentSettings_done}              xpath://i[text()='done']//ancestor::button
${EnrolmentSettings_close}             xpath://i[text()='close']//ancestor::button

#Add Zoom OAuth
${ZoomOAuthSettings_h}                 xpath://div[contains(text(),'Zoom OAuth Settings')]
${ZoomOAuthSettings_Code}              css:input[aria-label='Code*']
${ZoomOAuthSettings_ClientID}          css:input[aria-label='Client ID*']
${ZoomOAuthSettings_ClientSecret}      css:input[aria-label='Client Secret*']
${ZoomOAuthSettings_Save}              xpath:(//div[contains(text(),'Save')])[1]/parent::button
${ZoomOAuthSettings_Cancel}            xpath://div[normalize-space()='Cancel']/parent::button

