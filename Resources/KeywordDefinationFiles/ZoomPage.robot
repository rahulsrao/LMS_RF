*** Settings ***
Documentation   All the keywords of Zoom page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ZoomPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify zoom page
    ZoomPage.verify Zoom Conferences page
#    ZoomPage.verify Zoom setting
#    ZoomPage.verify Zoom Meeting Create Configuration window
#-------------------------------------------------------------------------------------------
verify Zoom Conferences page
    wait until element is visible          ${hZoomConferences}                      120
    page should contain element            ${hZoomConferences}
    page should contain element            ${hbatches}
    page should contain element            ${SelectBatch}
    page should contain element            ${Meetingtype}
    page should contain element            ${onlymultiplebatchmeetings}
    page should contain element            ${MyMeetings}
    page should contain element            ${createmultiplebatchesmeeting}
    page should contain element            ${CreateMeeting}
    click on button                        ${SelectBatch}
    page should contain element            ${BatchARTBATCHONE}
    click on button                        ${BatchARTBATCHONE}
    page should contain element            ${Meetingtype}
    click on button                        ${Meetingtype}
    page should contain element            ${opt_All}
    page should contain element            ${OPT_LIVEUPCOMING}
    page should contain element            ${opt_Upcoming}
    page should contain element            ${opt_RecordingAvailable}
    click on button                        ${opt_LiveUpcoming}
#    page should contain element            ${ZoomSettings_btn}
    wait until element is visible          ${createmeeting}                         120
    page should contain element            ${CreateMeeting}

#-------------------------------------------------------------------------------------------
verify Zoom Conferences page of Student user
    [Arguments]                            ${BatchN}
    wait until element is visible          ${hZoomConferences}                      120
    page should contain element            ${hZoomConferences}
    page should contain element            ${hbatches}
    page should contain element            ${SelectBatch}
    page should contain element            ${Meetingtype}
    click on button                        ${SelectBatch}
    page should contain element            xpath://div[contains(text(),'${BatchN}')]
    click on button                        xpath://div[contains(text(),'${BatchN}')]
    page should contain element            ${Meetingtype}
    click on button                        ${Meetingtype}
    page should contain element            ${opt_All}
    page should contain element            ${OPT_LIVEUPCOMING}
    page should contain element            ${opt_Upcoming}
    page should contain element            ${opt_RecordingAvailable}
    click on button                        ${opt_LiveUpcoming}
#-------------------------------------------------------------------------------------------
verify Zoom setting
    click element                          ${zoomsettings_btn}
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
    switch window                          main
    page should contain element            ${inpjwt}
    page should contain element            ${btndelete}
    page should contain element            ${z_setting_cancel}
    click on button                        ${z_setting_cancel}
    wait until element is visible          ${hzoomconferences}                      120
    click on button                        ${SelectBatch}
    page should contain element            ${BatchARTBATCHONE}
    click on button                        ${BatchARTBATCHONE}
    page should contain element            ${zoomsettings_btn}
    click on button                        ${zoomsettings_btn}
    wait until element is visible          ${inpjwt}
    input text                             ${inpjwt}                                ${JWTToken}
    wait until element is visible          ${z_setting_update}                      120
    page should contain element            ${z_setting_update}
    click on button                        ${z_setting_update}
#-------------------------------------------------------------------------------------------
verify Zoom Meeting Create Configuration window
    sleep                                  10
    wait until element is visible          ${createmeeting}                         120
    click on button                        ${SelectBatch}
    page should contain element            ${BatchARTBATCHONE}
    click on button                        ${BatchARTBATCHONE}
    wait until element is visible          ${createmeeting}                         120
    page should contain element            ${createmeeting}
    click on button                        ${createmeeting}
    wait until element is visible          ${zoommeetingcreateconfiguration}        120
    page should contain element            ${zoommeetingcreateconfiguration}
    page should contain element            ${meetingtopic}
    page should contain element            ${meetingagenda}
    page should contain element            ${selectmodule}
    page should contain element            ${SelectTeacher}
    page should contain element            ${meetingdate}
    page should contain element            ${meetingtime}
    page should contain element            ${meetingduration}
    page should contain element            ${meetingrecordingtype}
    page should contain element            ${cretae_meetingtype}
    page should contain element            ${selectedusers}
    scroll to the element                  ${CreateMeeting_Cancel}
    page should contain element            ${hostvideo}
    checkbox should be selected            ${hostvideo}
    page should contain element            ${participantvideo}
    checkbox should be selected            ${participantvideo}
    page should contain element            ${joinbeforehost}
    checkbox should not be selected        ${joinbeforehost}
    page should contain element            ${muteuponentry}
    checkbox should be selected            ${muteuponentry}
    page should contain element            ${hostmeetingincn}
    checkbox should not be selected        ${hostmeetingincn}
    page should contain element            ${hostmeetinginin}
    checkbox should not be selected        ${hostmeetinginin}
    page should contain element            ${Registrantsemailnotification}
    checkbox should be selected            ${registrantsemailnotification}
    page should contain element            ${addprerequisite}
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
    wait until element is visible          ${createmeeting_cancel}
    click on button                        ${CreateMeeting_Cancel}
    sleep                                  5