*** Settings ***
Documentation   All the page objects and keywords of Microsoft Team Conferences Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hMicrosoftTeamConferences}                    xpath://div[@class='v-toolbar__title'][contains(text(),'Microsoft Team Conferences')]
${hBatches}                                     xpath://div[@class='v-toolbar__title'][contains(text(),'Batches')]
${SelectBatch}                                  css:input[aria-label='Select Batch']
${Meetingtype}                                  css:input[aria-label='Meeting Type.']
${BatchARTBATCHONE}                             xpath://div[contains(text(),'ART BATCH ONE')]
${opt_All}                                      xpath:(//div[contains(text(),'All')]//parent::div//parent::a)[1]
${opt_LiveUpcoming}                             xpath:(//div[contains(text(),'Live & Upcoming')]//parent::div//parent::a)[1]
${opt_Upcoming}                                 xpath:(//div[contains(text(),'Upcoming')]//parent::div//parent::a)[2]
${opt_RecordingAvailable}                       xpath:(//div[contains(text(),'Recording Available')]//parent::div//parent::a)[1]
${CreateMeeting}                                xpath://div[contains(text(),'Create Meeting')]//parent::button
${hMicrosoftTeamMeetingCreateConfiguration}     xpath://div[contains(text(),'Microsoft Team Meeting Create Configuration')]
${MeetingSubject}                               css:input[placeholder='Meeting Subject']
${MSTeam_SelectModule}                          css:input[aria-label='Select Module']
${MSTeam_SelectTeacher}                         css:input[aria-label='Select Teacher']
${MeetingStartDate}                             css:input[aria-label='Meeting Start Date']
${MeetingStartTime}                             css:input[aria-label='Meeting Start Time']
${MeetingEndDate}                               css:input[aria-label='Meeting End Date']
${MSTeam_MeetingDuration}                       css:input[aria-label='Duration (minutes)']
${MeetingPresenters}                            css:input[aria-label='Meeting Presenters']
${MSTeam_SelectedUsers}                         css:input[aria-label='Selected User(s)']
${MeetingEnableMic}                             css:input[aria-label='Meeting Enable Mic']
${MeetingRecording}                             css:input[aria-label='Meeting Recording']
${MeetingEnableCamera}                          css:input[aria-label='Meeting Enable Camera']
${AllowMeetingChat}                             css:input[aria-label='Allow Meeting Chat']
${MeetingAllowTeamWorkReactions}                css:input[aria-label='Meeting Allow Team Work Reactions']
${MSTeam_AddPrerequisite}                       xpath://div[contains(text(),'Add Pre-requisite')]//parent::button
${MSTeam_Create}                                xpath:(//div[contains(text(),'Create')]//parent::button)[1]
${MSTeam_Cancel}                                xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]
${MSTeam_Selectavideotoadd}                     xpath://div[contains(text(),'Select a video to add')]
${MSTeam_Save}                                  xpath:(//div[contains(text(),'Save')]//parent::button)[1]
