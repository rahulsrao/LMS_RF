*** Settings ***
Documentation   All the keywords of MicrosoftTeam Meetings
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/MicrosoftTeamPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify MicrosoftTeam meeting
    MicrosoftTeamPage.verify Microsoft Team Conferences page
#    MicrosoftTeamPage.verify Microsoft Team Meeting Create Configuration window

verify Microsoft Team Conferences page
    wait until element is visible               ${hmicrosoftteamconferences}        120
    page should contain element                 ${hmicrosoftteamconferences}
    page should contain element                 ${hbatches}
    mouse over                                  ${SelectBatch}
    page should contain element                 ${SelectBatch}
    page should contain element                 ${meetingtype}
    click element                               ${SelectBatch}
    page should contain element                 ${BatchARTBATCHONE}
    click element                               ${batchartbatchone}
    page should contain element                 ${meetingtype}
    click element                               ${meetingtype}
    page should contain element                 ${opt_All}
    page should contain element                 ${opt_liveupcoming}
    page should contain element                 ${opt_upcoming}
    page should contain element                 ${opt_recordingavailable}
    click element                               ${opt_All}
#    wait until element is visible               ${createmeeting}                    120
#    page should contain element                 ${createmeeting}

verify Microsoft Team Meeting Create Configuration window
    page should contain element                 ${createmeeting}
    click element                               ${createmeeting}
    wait until element is visible               ${hmicrosoftteammeetingcreateconfiguration}         120
    page should contain element                 ${hmicrosoftteammeetingcreateconfiguration}
    page should contain element                 ${meetingsubject}
    page should contain element                 ${msteam_selectmodule}
    page should contain element                 ${msteam_selectteacher}
    page should contain element                 ${meetingstartdate}
    page should contain element                 ${meetingstarttime}
    page should contain element                 ${meetingenddate}
    page should contain element                 ${msteam_meetingduration}
    page should contain element                 ${meetingpresenters}
    page should contain element                 ${msteam_selectedusers}
    scroll element into view                    ${msteam_addprerequisite}
    page should contain element                 ${meetingenablemic}
    checkbox should be selected                 ${meetingenablemic}
    page should contain element                 ${meetingrecording}
    page should contain element                 ${meetingenablecamera}
    page should contain element                 ${allowmeetingchat}
    page should contain element                 ${meetingallowteamworkreactions}
    page should contain element                 ${msteam_addprerequisite}
    click element                               ${msteam_addprerequisite}
    wait until element is visible               ${msteam_selectavideotoadd}             120
    page should contain element                 ${msteam_selectavideotoadd}
    scroll element into view                    ${msteam_save}
    page should contain element                 ${msteam_save}
    page should contain element                 ${msteam_cancel}
    click element                               ${msteam_cancel}
    wait until element is visible               ${msteam_create}                        120
    page should contain element                 ${msteam_create}
    click element                               ${msteam_cancel}
    sleep                                       5