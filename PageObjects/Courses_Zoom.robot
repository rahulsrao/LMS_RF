*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Zoom}                                xpath://a[normalize-space()='Zoom']
${Zoom_ZoomSettings}                   xpath://div[normalize-space()='Zoom Settings']/parent::button
${Zoom_CreateMeeting}                  xpath://div[normalize-space()='Create Meeting']/parent::button
${Zoom_MyLectures}                     css:input[aria-label='My Lectures']
${Zoom_MeetingType}                    css:input[aria-label='Meeting Type.']

#Create Zoom Meeting

${ZoomMeetingCreateConfiguration_h}            xpath:(//div[contains(text(),'Zoom Meeting Create Configuration')])[1]
${Create_MeetingTopic}                         xpath:(//input[@placeholder='Meeting Topic'])[1]
${Create_MeetingAgenda}                        xpath:(//input[@placeholder='Meeting Agenda'])[1]
${Create_SelectModule}                         xpath:(//input[@aria-label='Select Module'])[1]
${Create_SelectTeacher}                        xpath:(//input[@aria-label='Select Teacher'])[1]
${Create_MeetingDate}                          xpath:(//input[@aria-label='Meeting Date'])[1]
${Create_MeetingTime}                          xpath:(//input[@aria-label='Meeting Time'])[1]
${Create_MeetingDuration}                      xpath:(//input[@aria-label='Meeting Duration'])[1]
${Create_MeetingRecordingType}                 xpath:(//input[@aria-label='Meeting Recording Type.'])[1]
${CretaeZoomMeeting_MeetingType}               xpath:(//input[@aria-label='Meeting Type'])[1]
${Create_SelectedUsers}                        xpath:(//input[@aria-label='Selected User(s)'])[1]
${Create_HostVideo}                            xpath:(//input[@aria-label='Host Video'])[1]
${Create_ParticipantVideo}                     xpath:(//input[@aria-label='Participant Video'])[1]
${Create_JoinBeforeHost}                       xpath:(//input[@aria-label='Join Before Host'])[1]
${Create_MuteUponEntry}                        xpath:(//input[@aria-label='Mute Upon Entry'])[1]
${Create_HostmeetinginCN}                      xpath:(//input[@aria-label='Host meeting in CN'])[1]
${Create_HostmeetinginIN}                      xpath:(//input[@aria-label='Host meeting in IN'])[1]
${Create_Registrantsemailnotification}         xpath:(//input[@aria-label='Registrants email notification'])[1]
${Create_AddPrerequisite}                      xpath:(//div[contains(text(),'Add Pre-requisite')]//parent::button)[1]
${Create}                                      xpath:(//div[contains(text(),'Create')]//parent::button)[1]
${CretaeZoomMeeting_Cancel}                        xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]


#(//div[contains(text(),'All')])[1]/ancestor::a
