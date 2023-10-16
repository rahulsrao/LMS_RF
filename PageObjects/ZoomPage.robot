*** Settings ***
Documentation   All the page objects and keywords of Zoom Conferences Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hZoomConferences}                     xpath://div[@class='v-toolbar__title'][contains(text(),'Zoom Conferences')]
${hBatches}                             xpath://div[@class='v-toolbar__title'][contains(text(),'Batches')]
${SelectBatch}                          xpath:(//input[@aria-label='Select Batch'])[2]
${Meetingtype}                          css:input[aria-label='Meeting Type.']
${OnlyMultipleBatchMeetings}            css:input[aria-label='Only Multiple Batch Meetings']
${MyMeetings}                           css:input[aria-label='My Meetings']
${CreateMeeting}                        xpath://div[contains(text(),'Create Meeting')]//parent::button
${CreateMultipleBatchesMeeting}         xpath://div[contains(text(),'Create Multiple Batches Meeting')]//parent::button
${ZoomSettings_btn}                     xpath://div[normalize-space(text()) = 'Zoom Settings']//parent::button
${hZoomMeetingSettings}                 xpath://div[contains(text(),'Zoom Meeting Settings')]
${JWTMessage}                           css:p b
${inpJWT}                               css:input[aria-label='JWT Key']
${btninfo}                              css:button[title='How to add JWT key. Click here for more information.']
${btnDelete}                            xpath://div[contains(text(),'Delete')]//parent::button
${z_setting_Update}                     xpath:(//div[contains(text(),'Update')]//parent::button)[1]
${z_setting_Cancel}                     xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]
${BatchARTBATCHONE}                     xpath://div[contains(text(),'ART BATCH ONE')]
${hCreateaJWTapp}                       css:h1[id='the-zoom-platform']
${opt_All}                              xpath:(//div[contains(text(),'All')]//parent::div//parent::a)[1]
${opt_LiveUpcoming}                     xpath:(//div[contains(text(),'Live & Upcoming')]//parent::div//parent::a)[1]
${opt_Upcoming}                         xpath:(//div[contains(text(),'Upcoming')]//parent::div//parent::a)[1]
${opt_RecordingAvailable}               xpath:(//div[contains(text(),'Recording Available')]//parent::div//parent::a)[1]
${ZoomMeetingCreateConfiguration}       xpath:(//div[contains(text(),'Zoom Meeting Create Configuration')])[2]
${MeetingTopic}                         xpath:(//input[@placeholder='Meeting Topic'])[2]
${MeetingAgenda}                        xpath:(//input[@placeholder='Meeting Agenda'])[2]
${SelectModule}                         xpath:(//input[@aria-label='Select Module'])[2]
${SelectTeacher}                        xpath:(//input[@aria-label='Select Teacher'])[2]
${MeetingDate}                          xpath:(//input[@aria-label='Meeting Date'])[2]
${MeetingTime}                          xpath:(//input[@aria-label='Meeting Time'])[2]
${MeetingDuration}                      xpath:(//input[@aria-label='Meeting Duration'])[2]
${MeetingRecordingType}                 xpath:(//input[@aria-label='Meeting Recording Type.'])[2]
${Cretae_MeetingType}                   xpath:(//input[@aria-label='Meeting Type'])[2]
${SelectedUsers}                        xpath:(//input[@aria-label='Selected User(s)'])[2]
${HostVideo}                            xpath:(//input[@aria-label='Host Video'])[2]
${ParticipantVideo}                     xpath:(//input[@aria-label='Participant Video'])[2]
${JoinBeforeHost}                       xpath:(//input[@aria-label='Join Before Host'])[2]
${MuteUponEntry}                        xpath:(//input[@aria-label='Mute Upon Entry'])[2]
${HostmeetinginCN}                      xpath:(//input[@aria-label='Host meeting in CN'])[2]
${HostmeetinginIN}                      xpath:(//input[@aria-label='Host meeting in IN'])[2]
${Registrantsemailnotification}         xpath:(//input[@aria-label='Registrants email notification'])[2]
${AddPrerequisite}                      xpath:(//div[contains(text(),'Add Pre-requisite')]//parent::button)[2]
${Create}                               xpath:(//div[contains(text(),'Create')]//parent::button)[2]
${CreateMeeting_Cancel}                 xpath:(//div[contains(text(),'Cancel')]//parent::button)[2]
${Selectavideotoadd}                    xpath://div[contains(text(),'Select a video to add')]
${pre_Save}                             xpath:(//div[contains(text(),'Save')]//parent::button)[1]
${pre_Cancel}                           xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]
