*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Courses_Zoom.robot
Resource        ../../PageObjects/ZoomPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***

verify Zoom setting
    [Arguments]                             ${JWT}
    wait until element is visible          ${hzoommeetingsettings}
    page should contain element            ${hzoommeetingsettings}
    page should contain element            ${jwtmessage}
    ${Message}=     Get Text               ${jwtmessage}
    printvalue                             ${Message}
    page should contain element            ${inpjwt}
    page should contain element            ${btninfo}
    click on button                        ${btninfo}
    switch window                          new
    wait until element is visible          ${hcreateajwtapp}                        120
    page should contain element            ${hcreateajwtapp}
    close window
    sleep                                  3
    switch window                          main
    page should contain element            ${inpjwt}
    page should contain element            ${btndelete}
    page should contain element            ${z_setting_cancel}
    click on button                        ${z_setting_cancel}
    wait until element is visible          ${zoomsettings_btn}                      120
    page should contain element            ${zoomsettings_btn}
    click on button                        ${zoomsettings_btn}
    wait until element is visible          ${inpjwt}
    input text                             ${inpjwt}                                ${JWT}
    wait until element is visible          ${z_setting_update}                      120
    page should contain element            ${z_setting_update}
    click on button                        ${z_setting_update}
    wait until element is visible          ${zoomsettings_btn}                      120
    sleep                                  15

verify Zoom Meeting Create Configuration window
    wait until element is visible          ${ZoomMeetingCreateConfiguration_h}        120
    page should contain element            ${ZoomMeetingCreateConfiguration_h}
    page should contain element            ${Create_MeetingTopic}
    page should contain element            ${Create_MeetingAgenda}
    page should contain element            ${Create_SelectModule}
    page should contain element            ${Create_SelectTeacher}
    page should contain element            ${Create_MeetingDate}
    page should contain element            ${Create_MeetingTime}
    page should contain element            ${Create_MeetingDuration}
    page should contain element            ${Create_MeetingRecordingType}
    page should contain element            ${CretaeZoomMeeting_MeetingType}
#    page should contain element            ${selectedusers}
    scroll to the element                  ${CreateMeeting_Cancel}
    page should contain element            ${Create_HostVideo}
    checkbox should be selected            ${Create_HostVideo}
    page should contain element            ${Create_ParticipantVideo}
    checkbox should be selected            ${Create_ParticipantVideo}
    page should contain element            ${Create_JoinBeforeHost}
    checkbox should not be selected        ${Create_JoinBeforeHost}
    page should contain element            ${Create_MuteUponEntry}
    checkbox should be selected            ${Create_MuteUponEntry}
    page should contain element            ${Create_HostmeetinginCN}
    checkbox should not be selected        ${Create_HostmeetinginCN}
    page should contain element            ${Create_HostmeetinginIN}
    checkbox should not be selected        ${Create_HostmeetinginIN}
    page should contain element            ${Create_Registrantsemailnotification}
    checkbox should be selected            ${Create_Registrantsemailnotification}
    page should contain element            ${Create_AddPrerequisite}
    page should contain element            ${create}
    page should contain element            ${CreateMeeting_Cancel}
    scroll to the element                  ${addprerequisite}
    click on button                        ${addprerequisite}
    wait until element is visible          ${selectavideotoadd}                     120
    page should contain element            ${selectavideotoadd}
    scroll element into view               ${pre_save}
    page should contain element            ${pre_save}
    page should contain element            ${pre_cancel}
    click on button                        ${pre_cancel}
    wait until element is visible          ${CretaeZoomMeeting_Cancel}
    click on button                        ${CretaeZoomMeeting_Cancel}