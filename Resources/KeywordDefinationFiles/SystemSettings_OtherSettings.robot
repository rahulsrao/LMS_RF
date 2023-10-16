*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_OtherSettings.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify OtherSettings page
    [Documentation]  This test case verifies Other Settings page
    [Tags]  Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    page should contain element                     ${othersettings_expandall}
    page should contain element                     ${othersettings_academia_h}
    page should contain element                     ${othersettings_rewards&games_h}
    page should contain element                     ${othersettings_security_h}
    page should contain element                     ${othersettings_integrations_h}
    page should contain element                     ${othersettings_miscellaneous_h}
    click on button                                 ${othersettings_expandall}
    sleep                                           2
    page should contain element                     ${Academia_1:1Mentoring}
    page should contain element                     ${academia_batchgroupsettings}
    page should contain element                     ${academia_certificatessettings}
    page should contain element                     ${academia_contentsettings}
    page should contain element                     ${academia_customstudentattributes}
    page should contain element                     ${academia_progresstrackingsettings}
    page should contain element                     ${academia_satsettings}
    page should contain element                     ${academia_wallpostsettings}
    page should contain element                     ${academia_coursemapsettings}
    page should contain element                     ${academia_achievementapprovalsettings}
    scroll element into view                        ${othersettings_integrations_h}
    page should contain element                     ${rewards&games_coinsettings}
    page should contain element                     ${rewards&games_gamesettings}
    page should contain element                     ${security_concurrentloginsettings}
    page should contain element                     ${security_rolepermissionssettings}
    scroll element into view                        ${miscellaneous_wheredidyouhearaboutus?}
    page should contain element                     ${integrations_bbbmeetingsettings}
    page should contain element                     ${integrations_googlesettings}
    page should contain element                     ${integrations_microsoftteamsettings}
    page should contain element                     ${integrations_zoommeetingsettings}
    page should contain element                     ${miscellaneous_birthdaybanner}
    page should contain element                     ${miscellaneous_crmsettings}
    page should contain element                     ${miscellaneous_enable/disablestore}
    page should contain element                     ${miscellaneous_vendorsettings}
    page should contain element                     ${miscellaneous_wheredidyouhearaboutus?}
    scroll element into view                        ${othersettings_collapseall}
    click on button                                 ${othersettings_collapseall}
    page should not contain element                 ${Academia_1:1Mentoring}

#::::::::::::::::::::::::::::Academia::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

Verify 1:1 Mentoring
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${Academia_1:1Mentoring}
    click on button                                 ${Academia_1:1Mentoring}
    sleep                                           5
    page should contain element                     ${1:1MentoringSettings_h}
    page should contain element                     ${1:1mentoringsettings_enabled}
    ${Result}=      Run Keyword And Return Status    checkbox should be selected    ${1:1mentoringsettings_enabled}
    IF       '${Result}' == 'True'
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting}
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting_yes}
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting_no}
        page should contain element                     ${1:1mentoringsettings_zoom}
        page should contain element                     ${1:1mentoringsettings_save}
        click on button                                 ${1:1mentoringsettings_enabled}
        checkbox should not be selected                 ${1:1mentoringsettings_enabled}
        page should not contain element                 ${1:1mentoringsettings_autocreatemeeting}
        page should not contain element                 ${1:1mentoringsettings_autocreatemeeting_yes}
        page should contain element                     ${1:1mentoringsettings_save}
    ELSE IF    '${Result}' == 'False'
        click on button                                 ${1:1mentoringsettings_enabled}
        sleep                                           5
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting}
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting_yes}
        page should contain element                     ${1:1mentoringsettings_autocreatemeeting_no}
        page should contain element                     ${1:1mentoringsettings_zoom}
        page should contain element                     ${1:1mentoringsettings_save}
    END

    go back

Verify Batch Group Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_batchgroupsettings}
    click on button                                 ${academia_batchgroupsettings}
    sleep                                           5
    page should contain element                     ${batchgroupsettings_enabled}
#    checkbox should be selected                     ${batchgroupsettings_enabled}
    page should contain element                     ${batchgroupattendancesetting_h}
    page should contain element                     ${batchgroupattendancesetting_manualattendanceupdate}
    page should contain element                     ${batchgroupattendancesetting_automaticattendanceupdate}
    page should contain element                     ${batchgroupattendancesetting_save}
    go back

Verify Certificates Settings
    [Arguments]                                     ${nameoftheuniversity}    ${BodyTextforCertificate}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_certificatessettings}
    click on button                                 ${academia_certificatessettings}
    sleep                                           10
    page should contain element                     ${certificatessettings_h}
    page should contain element                     ${certificatessettings_savechanges}
    page should contain element                     ${certificatessettings_preview}
    page should contain element                     ${certificatessettings_enabled}
    checkbox should be selected                     ${certificatessettings_enabled}
    page should contain element                     ${certificatessettings_showlogo}
    checkbox should be selected                     ${certificatessettings_showlogo}
    page should contain element                     ${certificatessettings_nameoftheuniversity}
    page should contain element                     ${certificatessettings_bodytextforcertificate}
    page should contain element                     ${certificatessettings_goldlabel}
    page should contain element                     ${certificatessettings_pacificblue}
    page should contain element                     ${certificatessettings_floralabstract}
    press keys                                      ${certificatessettings_nameoftheuniversity}             CTRL+a   BACKSPACE
    page should contain element                     ${certificatessettings_validation}
    input text                                      ${certificatessettings_nameoftheuniversity}             ${nameoftheuniversity}
    page should not contain element                 ${certificatessettings_validation}
    press keys                                      ${certificatessettings_bodytextforcertificate}          CTRL+a   BACKSPACE
    page should contain element                     ${certificatessettings_validation}
    input text                                      ${certificatessettings_bodytextforcertificate}          ${BodyTextforCertificate}
    click on button                                 ${certificatessettings_savechanges}
    sleep                                           4
#    page should contain element                     ${CertificatesSettings_conformation}
    go back

Verify Content Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_contentsettings}
    click on button                                 ${academia_contentsettings}
    sleep                                           5
    page should contain element                     ${contentsettings_editpublishedpages}
    page should contain element                     ${contentsettings_editquestions}
    page should contain element                     ${contentsettings_editpublishedvideos}
    page should contain element                     ${contentsettings_downloadvideos}
    page should contain element                     ${contentsettings_viewuniversal(shared)content}
    go back

Verify Custom Student Attributes
    [Arguments]                                     ${Attribute1}    ${Attribute2}      ${Attribute}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_customstudentattributes}
    click on button                                 ${academia_customstudentattributes}
    sleep                                           5
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[1]
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[2]
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[3]
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']//following-sibling::button[1]
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']//following-sibling::button[2]
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']//following-sibling::button[3]
    page should contain element                     xpath://div[@class='v-list__tile__title' and text()='${Attribute}']
    page should contain element                     xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[1]
    click element                                   xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[1]
    sleep                                           5
    page should contain element                     ${customizeattribute1_h}
    page should contain element                     ${customizeattribute1_input}
    page should contain element                     ${customizeattribute1_done}
    page should contain element                     ${customizeattribute1_close}
    click element                                   ${customizeattribute1_close}
    sleep                                           5
    click element                                   xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[1]
    sleep                                           3
    page should contain element                     xpath://div[contains(text(),'Edit ${Attribute1}')]
    page should contain element                     ${CustomizeAttribute1_EditAttribute1_AttributeName}
    page should contain element                     ${customizeattribute1_EditAttribute1_save}
    page should contain element                     ${customizeattribute1_EditAttribute1_close}
    click element                                   ${customizeattribute1_EditAttribute1_close}
    go back
    sleep                                           4
Edit Custom Attribute Name
    [Arguments]                                     ${Attribute1}    ${Attribute2}      ${nAttribute1}    ${nAttribute2}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_customstudentattributes}
    click on button                                 ${academia_customstudentattributes}
    sleep                                           5
    wait until page contains element                xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']           20
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']
    IF      '${nAttribute1}' != '-'
        click element                                   xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[1]
        sleep                                           5
        page should contain element                     ${customizeattribute1_h}
        press keys                                      ${customizeattribute1_input}             CTRL+a   BACKSPACE
        input text                                      ${customizeattribute1_input}             ${nAttribute1}
        click element                                   ${customizeattribute1_done}
        sleep                                           3
        wait until element is not visible               ${customizeattribute_validation}        20
    END

    IF      '${nAttribute2}' != '-'
        wait until element is visible                   xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']//following-sibling::button[1]             20
        click element                                   xpath://div[@class='v-toolbar__title' and text()='${Attribute2}']//following-sibling::button[1]
        sleep                                           5
        page should contain element                     ${customizeattribute2_h}
        press keys                                      ${customizeattribute2_input}             CTRL+a   BACKSPACE
        input text                                      ${customizeattribute2_input}             ${nAttribute2}
        click element                                   ${customizeattribute2_done}
        sleep                                           3
    END
    go back
    sleep                                               5

Edit Attribute
     [Arguments]                                     ${Attribute1}    ${Attribute2}       ${Attribute}      ${nAttribute}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_customstudentattributes}
    click on button                                 ${academia_customstudentattributes}
    sleep                                           5
    wait until page contains element                xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']           20
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']
    page should contain element                     xpath://div[@class='v-list__tile__title' and text()='${Attribute}']
    page should contain element                     xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[1]
    click element                                   xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[1]
    sleep                                           3
    page should contain element                     xpath://div[contains(text(),'Edit ${Attribute1}')]
    press keys                                      ${CustomizeAttribute1_EditAttribute1_AttributeName}             CTRL+a   BACKSPACE
    input text                                      ${CustomizeAttribute1_EditAttribute1_AttributeName}             ${nAttribute}
    click element                                   ${customizeattribute1_editattribute1_save}
    sleep                                           3
    wait until element is not visible               ${CustomizeAttribute_validation1}        20
    go back
    sleep                                           5
Add Attribute
    [Arguments]                                     ${Attribute1}    ${Attribute2}       ${Attribute}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_customstudentattributes}
    click on button                                 ${academia_customstudentattributes}
    sleep                                           5
    wait until page contains element                xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']           20
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']
    page should contain element                     xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[3]
    click element                                   xpath://div[@class='v-toolbar__title' and text()='${Attribute1}']//following-sibling::button[3]
    sleep                                           3
    wait until element is visible                   xpath://div[contains(text(),'Add ${Attribute1}')]                       20
    page should contain element                     xpath://div[contains(text(),'Add ${Attribute1}')]
    input text                                      ${customizeattribute1_addattribute_input}                               ${Attribute}
    click element                                   ${customizeattribute1_addattribute_save}
    sleep                                           3
    go back
    sleep                                           5

Delete Attribute
     [Arguments]                                ${Attribute}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_customstudentattributes}
    click on button                                 ${academia_customstudentattributes}
    sleep                                           5
    wait until element is visible                   xpath://div[@class='v-list__tile__title' and text()='${Attribute}']
    page should contain element                     xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[2]
    click element                                   xpath://div[@class='v-list__tile__title' and text()='${Attribute}']//following::button[2]
    sleep                                           2
    handle alert                                    accept
    go back
    sleep                                           5

Progress Tracking Settings
    [Arguments]                                     ${PTScore}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_progresstrackingsettings}
    click on button                                 ${academia_progresstrackingsettings}
    sleep                                           4
    page should contain element                     ${enableprogresstracking}
    checkbox should be selected                     ${enableprogresstracking}
    page should contain element                     ${weightagefor_th}
    page should contain element                     ${selfpaced_th}
    page should contain element                     ${others_th}
    page should contain element                     ${videos_self-paced(%)}
    page should contain element                     ${pt_self-paced(%)}
    page should contain element                     ${sat_self-paced(%)}
    page should contain element                     ${assignment_self-paced(%)}
    page should contain element                     ${attendence_self-paced(%)}
    page should contain element                     ${total_self-paced(%)}
    page should contain element                     ${videos_others(%)}
    page should contain element                     ${pt_others(%)}
    page should contain element                     ${sat_others(%)}
    page should contain element                     ${assignment_others(%)}
    page should contain element                     ${attendence_others(%)}
    page should contain element                     ${total_others(%)}
    page should contain element                     ${scoreforpracticetest}
    page should contain element                     ${scoreforselfassessmenttest}
    page should contain element                     ${progresstrackingsettings_save}
    click on button                                 ${enableprogresstracking}
    page should not contain element                 ${weightagefor_th}
    page should not contain element                 ${selfpaced_th}
    page should not contain element                 ${others_th}
    page should not contain element                 ${scoreforpracticetest}
    page should not contain element                 ${scoreforselfassessmenttest}
    click on button                                 ${enableprogresstracking}
    page should contain element                     ${scoreforpracticetest}
    click on button                                 ${scoreforpracticetest}
    page should contain element                     xpath://div[contains(text(),'${PTScore}')]//ancestor::a
    click element                                   xpath://div[contains(text(),'${PTScore}')]//ancestor::a
    Press Keys                                      ${scoreforselfassessmenttest}                  ESC
    click on button                                 ${progresstrackingsettings_save}
    go back
    sleep                                           5

Verify SAT Settings
    [Arguments]                                     ${noQ}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_satsettings}
    click on button                                 ${academia_satsettings}
    sleep                                           5
    page should contain element                     ${satsettings_h}
    page should contain element                     ${satsettings_noofquestions}
    page should contain element                     ${satsettings_save}
    press keys                                      ${satsettings_noofquestions}             CTRL+a   BACKSPACE
    click element                                   ${satsettings_save}
    wait until element is visible                   ${satsettings_validation}               10
    page should contain element                     ${satsettings_validation}
    input text                                      ${satsettings_noofquestions}             ${noQ}
    click on button                                 ${satsettings_save}
    wait until element is visible                   ${satsettings_confirmation}              10
    page should contain element                     ${satsettings_confirmation}
    go back
    sleep                                           5
Verify Wall Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_wallpostsettings}
    click on button                                 ${academia_wallpostsettings}
    sleep                                           5
    page should contain element                     ${wallsettings_h}
    page should contain element                     ${wallsettings_content}
    page should contain element                     ${wallsettings_collections}
    page should contain element                     ${wallsettings_lessonplans}
    page should contain element                     ${wallsettings_assignments}
    page should contain element                     ${wallsettings_tests}
    page should contain element                     ${wallsettings_studentprojects}
    page should contain element                     ${wallsettings_discussions}
    page should contain element                     ${wallsettings_videos}
    page should contain element                     ${wallsettings_badges}
    page should contain element                     ${wallsettings_zoom}
    page should contain element                     ${wallsettings_bbb}
    page should contain element                     ${wallsettings_microsoftteam}
    page should contain element                     ${wallsettings_birthdaygreetings}
    page should contain element                     ${wallsettings_save}
    go back
    sleep                                           5

Verify Course Map Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${academia_coursemapsettings}
    click on button                                 ${academia_coursemapsettings}
    sleep                                           5
    wait until element is visible                   ${coursemapsettings_h}
    page should contain element                     ${coursemapsettings_h}
    page should contain element                     ${coursemapsettings_enablecousemap}
    page should contain element                     ${coursemapsettings_enablemodulelock}
    page should contain element                     ${coursemapsettings_enablecertificategeneration}
    page should contain element                     ${coursemapdefaults_pt}
    page should contain element                     ${coursemapdefaults_nt}
    page should contain element                     ${coursemapdefaults_sat}
    page should contain element                     ${coursemapdefaults_discussionforum}
    page should contain element                     ${coursemapsettings_save}
    press keys                                      ${coursemapdefaults_pt}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${coursemapsettings_validation}                 20
    press keys                                      ${coursemapdefaults_nt}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${coursemapsettings_validation}                 20
    press keys                                      ${coursemapdefaults_sat}                        CTRL+a   BACKSPACE
    wait until element is visible                   ${coursemapsettings_validation}                 20
    press keys                                      ${coursemapdefaults_discussionforum}            CTRL+a   BACKSPACE
    wait until element is visible                   ${coursemapsettings_validation}                 20
    go back
    sleep                                           5
#:::::::::::::::::::::::::::::::::::::::: Rewards & Games ::::::::::::::::::::::::::::::::::::::::::::::::::::

Verify Coin Settings
    [Arguments]                                     ${moduleleadercoins}                ${conceptleadercoins}       ${testtoppercoins}       ${referralscoins}      ${winningagamecoins}        ${videowatchedandquiz}      ${satpt}
    sleep                                           5
    wait until page contains element                ${othersettings_h}          20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${rewards&games_coinsettings}
    click on button                                 ${rewards&games_coinsettings}
    wait until element is visible                   ${coinsettings_h}                   20
    page should contain element                     ${coinsettings_enable}
    page should contain element                     ${coinsettings_moduleleadercoins}
    page should contain element                     ${coinsettings_conceptleadercoins}
    page should contain element                     ${coinsettings_testtoppercoins}
    page should contain element                     ${coinsettings_referralscoins}
    page should contain element                     ${coinsettings_winningagamecoins}
    page should contain element                     ${coinsettings_videowatchedandquizanswered}
    page should contain element                     ${coinsettings_satpl}
    page should contain element                     ${coinsettings_save}
    press keys                                      ${coinsettings_moduleleadercoins}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                           20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_moduleleadercoins}                   ${moduleleadercoins}
    press keys                                      ${coinsettings_conceptleadercoins}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                           20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_conceptleadercoins}                   ${conceptleadercoins}
    press keys                                      ${coinsettings_testtoppercoins}                      CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                           20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_testtoppercoins}                      ${testtoppercoins}
    press keys                                      ${coinsettings_referralscoins}                      CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                           20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_referralscoins}                      ${referralscoins}
    press keys                                      ${coinsettings_winningagamecoins}                      CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                              20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_winningagamecoins}                      ${winningagamecoins}
    press keys                                      ${coinsettings_videowatchedandquizanswered}                      CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                                       20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_videowatchedandquizanswered}                      ${videowatchedandquiz}
    press keys                                      ${coinsettings_satpl}                               CTRL+a   BACKSPACE
    wait until element is visible                   ${CoinSettings_validation}                                       20
    page should contain element                     ${CoinSettings_validation}
    input text                                      ${coinsettings_satpl}                               ${satpt}
    click on button                                 ${coinsettings_save}
    go back
    sleep                                           5

Verify Game Settings
    [Arguments]                                     ${time}
    sleep                                           5
    wait until page contains element                ${othersettings_h}                         20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${rewards&games_gamesettings}
    click on button                                 ${rewards&games_gamesettings}
    wait until element is visible                   ${gamesettings_h}                          20
    page should contain element                     ${gamesettings_h}
    page should contain element                     ${gamesettings_enable}
    page should contain element                     ${gamesettings_timeforeachquestion}
    page should contain element                     ${gamesettings_save}
    press keys                                      ${gamesettings_timeforeachquestion}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${gamesettings_validation}                                  20
    page should contain element                     ${gamesettings_validation}
    input text                                      ${gamesettings_timeforeachquestion}                         ${time}
    wait until element is visible                   ${gamesettings_h}                                           20
    go back
    sleep                                           5

#:::::::::::::::::::::::::::::::::::::::: Security :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

Verify Concurrent Login Settings
    [Arguments]                                     ${LoginNo}
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${security_concurrentloginsettings}
    click on button                                 ${security_concurrentloginsettings}
    wait until element is visible                   ${concurrentloginsettings_h}                          20
    sleep                                           2
    page should contain element                     ${concurrentloginsettings_h}
    page should contain element                     ${concurrentloginsettings_nos}
    page should contain element                     ${concurrentloginsettings_save}
    press keys                                      ${concurrentloginsettings_nos}                         CTRL+a   BACKSPACE
    wait until element is visible                   ${concurrentloginsettings_validation}                  20
    page should contain element                     ${concurrentloginsettings_validation}
    click on button                                 ${concurrentloginsettings_save}
    wait until element is visible                   ${concurrentloginsettings_validation1}                  20
    input text                                      ${concurrentloginsettings_nos}                          ${LoginNo}
    click on button                                 ${concurrentloginsettings_save}
    go back
    sleep                                           5
Verify Role Permissions
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${Security_RolePermissionsSettings}
    click on button                                 ${Security_RolePermissionsSettings}
    wait until element is visible                   ${RolePermissions_h}                                  20
    sleep                                           2
    page should contain element                     ${RolePermissions_h}
    page should contain element                     ${rolepermissions_student_h}
    page should contain element                     ${rolepermissions_student_permissions}
    page should contain element                     ${rolepermissions_teacher_h}
    page should contain element                     ${rolepermissions_teacher_permissions}
    page should contain element                     ${rolepermissions_adminteacher_h}
    page should contain element                     ${rolepermissions_adminteacher_permissions}
    page should contain element                     ${rolepermissions_parent_h}
    page should contain element                     ${rolepermissions_parent_permissions}
    page should contain element                     ${rolepermissions_admin_h}
    page should contain element                     ${rolepermissions_admin_permissions}
    page should contain element                     ${rolepermissions_createnewrole}

Verify Student Role Permissions
    click on button                                 ${rolepermissions_student_permissions}
    wait until element is visible                   ${rolestudent_h}                            20
    page should contain element                     ${rolestudent_h}
    page should contain element                     ${rolestudent_close}
    page should contain element                     ${rolestudent_wall}
    page should contain element                     ${rolestudent_createwallposts}
    page should contain element                     ${rolestudent_canuploadmediafilesinnormalwallposts}
    page should contain element                     ${rolestudent_attendance}
    page should contain element                     ${rolestudent_content}
    page should contain element                     ${rolestudent_createcontent}
    page should contain element                     ${rolestudent_canuploadvideos}
    page should contain element                     ${rolestudent_canpublish}
    page should contain element                     ${rolestudent_collections}
    page should contain element                     ${rolestudent_createcollectionsforcontent}
    page should contain element                     ${rolestudent_gradebook}
    page should contain element                     ${rolestudent_assignments}
    page should contain element                     ${rolestudent_createassignment}
    page should contain element                     ${rolestudent_assignments_canpublish}
    page should contain element                     ${rolestudent_tests}
    page should contain element                     ${rolestudent_createtest}
    page should contain element                     ${rolestudent_tests_canpublish}
    page should contain element                     ${rolestudent_discussionforums}
    page should contain element                     ${rolestudent_creatediscussion}
    scroll element into view                        ${rolestudent_submit}
    page should contain element                     ${rolestudent_studentprojects}
    page should contain element                     ${rolestudent_inbox}
    page should contain element                     ${rolestudent_calendar}
    page should contain element                     ${rolestudent_todo}
    page should contain element                     ${rolestudent_search}
    page should contain element                     ${rolestudent_homedashboard}
    page should contain element                     ${rolestudent_video}
    page should contain element                     ${rolestudent_createvideo}
    page should contain element                     ${rolestudent_video_canpublish}
    page should contain element                     ${rolestudent_submit}
    scroll element into view                        ${rolestudent_close}
    click on button                                 ${rolestudent_close}
    wait until element is visible                   ${rolepermissions_student_permissions}      20

Verify Teacher Role Permissions
    click on button                                 ${rolepermissions_teacher_permissions}
    wait until element is visible                   ${roleteacher_h}                            20
    page should contain element                     ${roleteacher_h}
    page should contain element                     ${roleteacher_close}
    page should contain element                     ${roleteacher_wall}
    page should contain element                     ${roleteacher_createwallposts}
    page should contain element                     ${roleteacher_canuploadmediafilesinnormalwallposts}
    page should contain element                     ${roleteacher_createemergencywallpost}
    page should contain element                     ${roleteacher_createscheduledwallpost}
    page should contain element                     ${roleteacher_attendance}
    page should contain element                     ${roleteacher_cantakeattendance}
    page should contain element                     ${roleteacher_content}
    page should contain element                     ${roleteacher_createcontent}
    page should contain element                     ${roleteacher_canuploadvideos}
    page should contain element                     ${roleteacher_content_canpublish}
    page should contain element                     ${roleteacher_collections}
    page should contain element                     ${roleteacher_createcollectionsforcontent}
    page should contain element                     ${roleteacher_gradebook}
    page should contain element                     ${roleteacher_assignments}
    page should contain element                     ${RoleTeacher_CreateAssignment}
    page should contain element                     ${roleteacher_creategradableassignment}
    page should contain element                     ${roleteacher_assignments_canpublish}
    page should contain element                     ${roleteacher_tests}
    page should contain element                     ${roleteacher_createtest}
    page should contain element                     ${roleteacher_creategradabletest}
    page should contain element                     ${roleteacher_tests_canpublish}
    scroll element into view                        ${roleteacher_calendar}
    page should contain element                     ${roleteacher_questionbank}
    page should contain element                     ${roleteacher_addquestionstoquestionbank}
    page should contain element                     ${roleteacher_discussionforums}
    page should contain element                     ${roleteacher_creatediscussion}
    page should contain element                     ${roleteacher_creategradablediscussion}
    page should contain element                     ${roleteacher_createscheduleddiscussion}
    page should contain element                     ${roleteacher_studentprojects}
    page should contain element                     ${roleteacher_studentprojects_createprojects}
    page should contain element                     ${roleteacher_lessonplans}
    page should contain element                     ${roleteacher_createlessonplan}
    page should contain element                     ${roleteacher_inbox}
    page should contain element                     ${roleteacher_calendar}
    scroll element into view                        ${roleteacher_submit}
    page should contain element                     ${roleteacher_todo}
    page should contain element                     ${roleteacher_search}
    page should contain element                     ${roleteacher_homedashboard}
    page should contain element                     ${roleteacher_systemsettings}
    page should contain element                     ${roleteacher_createstudentsandparents}
    page should contain element                     ${roleteacher_createteacher}
    page should contain element                     ${roleteacher_createadmin}
    page should contain element                     ${roleteacher_createclassgrouping}
    page should contain element                     ${roleteacher_createclass}
    page should contain element                     ${roleteacher_createcourse}
    page should contain element                     ${roleteacher_deleteotherswallposts}
    page should contain element                     ${roleteacher_deleteotherscontents}
    page should contain element                     ${roleteacher_deleteotherscollection}
    page should contain element                     ${roleteacher_deleteothersassignments}
    page should contain element                     ${roleteacher_deleteotherslessonplan}
    page should contain element                     ${roleteacher_deleteothersstudentproject}
    page should contain element                     ${roleteacher_deleteotherstests}
    page should contain element                     ${roleteacher_deleteothersdiscussion}
    page should contain element                     ${roleteacher_deletequestionsfromquestionbank}
    page should contain element                     ${roleteacher_video}
    page should contain element                     ${roleteacher_createvideo}
    page should contain element                     ${roleteacher_video_canpublish}
    page should contain element                     ${roleteacher_submit}
    scroll element into view                        ${roleteacher_close}
    click on button                                 ${roleteacher_close}

Verify Admin Teacher Role Permissions
    click on button                                 ${rolepermissions_adminteacher_permissions}
    wait until element is visible                   ${roleadminteacher_h}                            20
    page should contain element                     ${roleadminteacher_h}
    page should contain element                     ${roleadminteacher_close}
    page should contain element                     ${roleadminteacher_wall}
    page should contain element                     ${roleadminteacher_createwallposts}
    page should contain element                     ${roleadminteacher_canuploadmediafilesinnormalwallposts}
    page should contain element                     ${roleadminteacher_createemergencywallpost}
    page should contain element                     ${roleadminteacher_createscheduledwallpost}
    page should contain element                     ${roleadminteacher_attendance}
    page should contain element                     ${roleadminteacher_cantakeattendance}
    page should contain element                     ${roleadminteacher_content}
    page should contain element                     ${roleadminteacher_createcontent}
    page should contain element                     ${roleadminteacher_canuploadvideos}
    page should contain element                     ${roleadminteacher_content_canpublish}
    page should contain element                     ${roleadminteacher_collections}
    page should contain element                     ${roleadminteacher_createcollectionsforcontent}
    page should contain element                     ${roleadminteacher_gradebook}
    page should contain element                     ${roleadminteacher_assignments}
    page should contain element                     ${roleadminteacher_CreateAssignment}
    page should contain element                     ${roleadminteacher_creategradableassignment}
    page should contain element                     ${roleadminteacher_assignments_canpublish}
    page should contain element                     ${roleadminteacher_tests}
    page should contain element                     ${roleadminteacher_createtest}
    page should contain element                     ${roleadminteacher_creategradabletest}
    page should contain element                     ${roleadminteacher_tests_canpublish}
    scroll element into view                        ${roleadminteacher_calendar}
    page should contain element                     ${roleadminteacher_questionbank}
    page should contain element                     ${roleadminteacher_addquestionstoquestionbank}
    page should contain element                     ${roleadminteacher_discussionforums}
    page should contain element                     ${roleadminteacher_creatediscussion}
    page should contain element                     ${roleadminteacher_creategradablediscussion}
    page should contain element                     ${roleadminteacher_createscheduleddiscussion}
    page should contain element                     ${roleadminteacher_studentprojects}
    page should contain element                     ${roleadminteacher_studentprojects_createprojects}
    page should contain element                     ${roleadminteacher_lessonplans}
    page should contain element                     ${roleadminteacher_createlessonplan}
    page should contain element                     ${roleadminteacher_inbox}
    page should contain element                     ${roleadminteacher_calendar}
    scroll element into view                        ${roleadminteacher_submit}
    page should contain element                     ${roleadminteacher_todo}
    page should contain element                     ${roleadminteacher_search}
    page should contain element                     ${roleadminteacher_homedashboard}
    page should contain element                     ${roleadminteacher_systemsettings}
    page should contain element                     ${roleadminteacher_createstudentsandparents}
    page should contain element                     ${roleadminteacher_createteacher}
    page should contain element                     ${roleadminteacher_createadmin}
    page should contain element                     ${roleadminteacher_createclassgrouping}
    page should contain element                     ${roleadminteacher_createclass}
    page should contain element                     ${roleadminteacher_createcourse}
    page should contain element                     ${roleadminteacher_changepermission}
    page should contain element                     ${roleadminteacher_deleteotherswallposts}
    page should contain element                     ${roleadminteacher_deleteotherscontents}
    page should contain element                     ${roleadminteacher_deleteotherscollection}
    page should contain element                     ${roleadminteacher_deleteothersassignments}
    page should contain element                     ${roleadminteacher_deleteotherslessonplan}
    page should contain element                     ${roleadminteacher_deleteothersstudentproject}
    page should contain element                     ${roleadminteacher_deleteotherstests}
    page should contain element                     ${roleadminteacher_deleteothersdiscussion}
    page should contain element                     ${roleadminteacher_deletequestionsfromquestionbank}
    page should contain element                     ${roleadminteacher_video}
    page should contain element                     ${roleadminteacher_createvideo}
    page should contain element                     ${roleadminteacher_video_canpublish}
    page should contain element                     ${roleadminteacher_submit}
    scroll element into view                        ${roleadminteacher_close}
    click on button                                 ${roleadminteacher_close}

Verify Admin Role Permissions
    click on button                                 ${rolepermissions_admin_permissions}
    wait until element is visible                   ${roleadmin_h}                            20
    page should contain element                     ${roleadmin_h}
    page should contain element                     ${roleadmin_close}
    page should contain element                     ${roleadmin_wall}
    page should contain element                     ${roleadmin_createwallposts}
    page should contain element                     ${roleadmin_canuploadmediafilesinnormalwallposts}
    page should contain element                     ${roleadmin_createemergencywallpost}
    page should contain element                     ${roleadmin_createscheduledwallpost}
    page should contain element                     ${roleadmin_attendance}
    page should contain element                     ${roleadmin_cantakeattendance}
    page should contain element                     ${roleadmin_content}
    page should contain element                     ${roleadmin_createcontent}
    page should contain element                     ${roleadmin_canuploadvideos}
    page should contain element                     ${roleadmin_content_canpublish}
    page should contain element                     ${roleadmin_collections}
    page should contain element                     ${roleadmin_createcollectionsforcontent}
    page should contain element                     ${roleadmin_gradebook}
    page should contain element                     ${roleadmin_assignments}
    page should contain element                     ${roleadmin_CreateAssignment}
    page should contain element                     ${roleadmin_assignments_canpublish}
    page should contain element                     ${roleadmin_tests}
    page should contain element                     ${roleadmin_createtest}
    page should contain element                     ${roleadmin_tests_canpublish}
    scroll element into view                        ${roleadmin_calendar}
    page should contain element                     ${roleadmin_questionbank}
    page should contain element                     ${roleadmin_addquestionstoquestionbank}
    page should contain element                     ${roleadmin_discussionforums}
    page should contain element                     ${roleadmin_studentprojects}
    page should contain element                     ${roleadmin_lessonplans}
    page should contain element                     ${roleadmin_createlessonplan}
    page should contain element                     ${roleadmin_inbox}
    page should contain element                     ${roleadmin_calendar}
    scroll element into view                        ${roleadmin_submit}
    page should contain element                     ${roleadmin_todo}
    page should contain element                     ${roleadmin_search}
    page should contain element                     ${roleadmin_homedashboard}
    page should contain element                     ${roleadmin_systemsettings}
    page should contain element                     ${roleadmin_createstudentsandparents}
    page should contain element                     ${roleadmin_createteacher}
    page should contain element                     ${roleadmin_createadmin}
    page should contain element                     ${roleadmin_createclassgrouping}
    page should contain element                     ${roleadmin_createclass}
    page should contain element                     ${roleadmin_createcourse}
    page should contain element                     ${roleadmin_changepermission}
    page should contain element                     ${roleadmin_deleteotherswallposts}
    page should contain element                     ${roleadmin_deleteotherscontents}
    page should contain element                     ${roleadmin_deleteotherscollection}
    page should contain element                     ${roleadmin_deleteothersassignments}
    page should contain element                     ${roleadmin_deleteotherslessonplan}
    page should contain element                     ${roleadmin_deleteothersstudentproject}
    page should contain element                     ${roleadmin_deleteotherstests}
    page should contain element                     ${roleadmin_deleteothersdiscussion}
    page should contain element                     ${roleadmin_deletequestionsfromquestionbank}
    page should contain element                     ${roleadmin_video}
    page should contain element                     ${roleadmin_createvideo}
    page should contain element                     ${roleadmin_video_canpublish}
    page should contain element                     ${roleadmin_submit}
    scroll element into view                        ${roleadmin_close}
    click on button                                 ${roleadmin_close}

Verify Parent Permissions
    click on button                                 ${rolepermissions_parent_permissions}
    wait until element is visible                   ${roleparent_h}                            20
    page should contain element                     ${roleparent_h}
    page should contain element                     ${roleparent_close}
    page should contain element                     ${roleparent_wall}
    page should contain element                     ${roleparent_content}
    page should contain element                     ${roleparent_collections}
    page should contain element                     ${roleparent_gradebook}
    page should contain element                     ${roleparent_assignments}
    page should contain element                     ${roleparent_tests}
    page should contain element                     ${roleparent_questionbank}
    page should contain element                     ${roleparent_discussionforums}
    page should contain element                     ${roleparent_studentprojects}
    page should contain element                     ${roleparent_inbox}
    page should contain element                     ${roleparent_calendar}
    page should contain element                     ${roleparent_todo}
    page should contain element                     ${roleparent_search}
    page should contain element                     ${roleparent_homedashboard}
    scroll element into view                        ${roleparent_submit}
    page should contain element                     ${roleparent_video}
    page should contain element                     ${roleparent_submit}
    scroll element into view                        ${roleparent_close}
    click on button                                 ${roleparent_close}

Create New Role
    click on button                                 ${rolepermissions_createnewrole}
    wait until element is visible                   ${newrole_h}                                          10
    page should contain element                     ${newrole_h}
    page should contain element                     ${newrole_displayname}
    page should contain element                     ${newrole_usertype}
    click on button                                 ${newrole_usertype}
    page should contain element                     xpath://div[text()='Student']
    page should contain element                     xpath://div[text()='Teacher']
    page should contain element                     xpath://div[text()='Parent']
    page should contain element                     xpath://div[text()='Admin']
    click on button                                 xpath://div[text()='Student']
    go back
    sleep                                           5
#::::::::::::::::::::::::::::::::::::::::::::::::::::: Integrations    ::::::::::::::::::::::::::::::::::::::::::::::::

Verify BBB Meeting Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${integrations_bbbmeetingsettings}
    click on button                                 ${integrations_bbbmeetingsettings}
    wait until element is visible                   ${bbbmeetingsettings_h}                               20
    sleep                                           2
    page should contain element                     ${bbbmeetingsettings_h}
    page should contain element                     ${bbbmeetingsettings_enable}
    page should contain element                     ${bbbmeetingsettings_createatickettoenable}
    click on button                                 ${bbbmeetingsettings_createatickettoenable}
    Switch Window                                   new
    page should contain element                     xpath://h3[contains(text(),'Submit a ticket')]
    switch window                                   main
    page should contain element                     ${bbbmeetingsettings_h}
    go back
    sleep                                           5
Verify Google Settings page
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${integrations_googlesettings}
    click on button                                 ${integrations_googlesettings}
    wait until element is visible                   ${googlesettings_h}                                   20
    sleep                                           2
    page should contain element                     ${googlesettings_h}
    page should contain element                     ${googlesettings_enable}
    ${enabled}=      Run Keyword And Return Status       checkbox should be selected     ${googlesettings_enable}
    IF      '${enabled}' == 'False'
        click on button             ${googlesettings_enable}
        sleep           5
        page should contain element                 ${googleaccountdetails_code}
        page should contain element                 ${googlesettings_clientid}
        page should contain element                 ${googlesettings_clientsecret}
        page should contain element                 ${googlesettings_clientemailid}
        page should contain element                 ${googleaccount_enable}
        page should contain element                 ${googleaccount_sendmailnotificationforcalender}
        page should contain element                 ${googleaccount_code}
        scroll element into view                    ${googlesettings_save}
        page should contain element                 ${googleaccount_sendmailnotificationforwallpost}
        page should contain element                 ${sendmailnotificationforwallpost_content}
        page should contain element                 ${sendmailnotificationforwallpost_collections}
        page should contain element                 ${sendmailnotificationforwallpost_lessonplans}
        page should contain element                 ${sendmailnotificationforwallpost_assignments}
        page should contain element                 ${sendmailnotificationforwallpost_tests}
        page should contain element                 ${sendmailnotificationforwallpost_studentprojects}
        page should contain element                 ${sendmailnotificationforwallpost_discussions}
        page should contain element                 ${sendmailnotificationforwallpost_videos}
        page should contain element                 ${sendmailnotificationforwallpost_zoom}
        page should contain element                 ${sendmailnotificationforwallpost_microsoftteam}
        page should contain element                 ${sendmailnotificationforwallpost_birthdaygreetings}
        page should contain element                 ${sendmailnotificationforwallpost_mentoring}
        page should contain element                 ${googlesettings_note}
        page should contain element                 ${gamesettings_save}
        page should contain element                 ${googlesettings_info}
    ELSE IF  '${enabled}' == 'True'
        page should contain element                 ${googleaccountdetails_code}
        page should contain element                 ${googlesettings_clientid}
        page should contain element                 ${googlesettings_clientsecret}
        page should contain element                 ${googlesettings_clientemailid}
        page should contain element                 ${googleaccount_enable}
        page should contain element                 ${googleaccount_sendmailnotificationforcalender}
        scroll element into view                    ${googlesettings_save}
        page should contain element                 ${googleaccount_code}
        page should contain element                 ${googleaccount_sendmailnotificationforwallpost}
        page should contain element                 ${sendmailnotificationforwallpost_content}
        page should contain element                 ${sendmailnotificationforwallpost_collections}
        page should contain element                 ${sendmailnotificationforwallpost_lessonplans}
        page should contain element                 ${sendmailnotificationforwallpost_assignments}
        page should contain element                 ${sendmailnotificationforwallpost_tests}
        page should contain element                 ${sendmailnotificationforwallpost_studentprojects}
        page should contain element                 ${sendmailnotificationforwallpost_discussions}
        page should contain element                 ${sendmailnotificationforwallpost_videos}
        page should contain element                 ${sendmailnotificationforwallpost_zoom}
        page should contain element                 ${sendmailnotificationforwallpost_microsoftteam}
        page should contain element                 ${sendmailnotificationforwallpost_birthdaygreetings}
        page should contain element                 ${sendmailnotificationforwallpost_mentoring}
        page should contain element                 ${googlesettings_note}
        page should contain element                 ${gamesettings_save}
        page should contain element                 ${googlesettings_info}
    END
    go back
    sleep                                           5

Verify Microsoft Teams Meeting Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    page should contain element                     ${integrations_microsoftteamsettings}
    click on button                                 ${integrations_microsoftteamsettings}
    wait until element is visible                   ${microsoftteamsmeetingsettings_h}                    20
    sleep                                           2
    page should contain element                     ${microsoftteamsmeetingsettings_h}
    page should contain element                     ${microsoftteamsmeetingsettings_enable}
    ${msteams_enabled}=      Run Keyword And Return Status       checkbox should be selected     ${microsoftteamsmeetingsettings_enable}
    IF    '${msteams_enabled}' == 'False'
        click on button             ${microsoftteamsmeetingsettings_enable}
        sleep                       5
        page should contain element         ${microsoftteamaccountdetails_clientid}
        page should contain element         ${microsoftteamaccountdetails_clientsecret}
        page should contain element         ${microsoftteamaccountdetails_tenantid}
        page should contain element         ${microsoftteamaccountdetails_emailid}
        page should contain element         ${microsoftteamaccountdetails_password}
        page should contain element         ${microsoftteamsmeetingsettings_save}

    ELSE IF  '${msteams_enabled}' == 'True'
        page should contain element         ${microsoftteamaccountdetails_clientid}
        page should contain element         ${microsoftteamaccountdetails_clientsecret}
        page should contain element         ${microsoftteamaccountdetails_tenantid}
        page should contain element         ${microsoftteamaccountdetails_emailid}
        page should contain element         ${microsoftteamaccountdetails_password}
        page should contain element         ${microsoftteamsmeetingsettings_save}
    END
    go back
    sleep                                   5
Verify Zoom Meeting Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        ${integrations_zoommeetingsettings}
    page should contain element                     ${integrations_zoommeetingsettings}
    click on button                                 ${integrations_zoommeetingsettings}
    wait until element is visible                   ${zoommeetingsettings_h}                             20
    sleep                                           2
    page should contain element                     ${zoommeetingsettings_h}
    page should contain element                     ${zoommeetingsettings_enable}
    page should contain element                     ${zoommeetingsettings_showparticipantslist}
    page should contain element                     ${zoommeetingsettings_joinbeforehost}
    page should contain element                     ${zoommeetingsettings_businessaccount}
    ${BusinessAccount_enabled}=                     Run Keyword And Return Status       checkbox should be selected     ${zoommeetingsettings_businessaccount}
    IF      '${BusinessAccount_enabled}' == 'False'
        click on button                                 ${zoommeetingsettings_businessaccount}
        page should contain element                     ${zoommeetingsettings_registrationisnotrequired}
        page should contain element                     ${zoommeetingsettings_registrationisnotrequired}
        page should contain element                     ${zoommeetingsettings_addzoomaccount}
        click on button                                 ${zoommeetingsettings_addzoomaccount}
        wait until element is visible                   ${zoommeetingsettings_addzoomaccount_h}                     20
        page should contain element                     ${zoommeetingsettings_addzoomaccount_h}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_zoomaccount}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_save}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_close}
        click on button                                 ${zoommeetingsettings_addzoomaccount_close}
        page should contain element                     ${zoommeetingsettings_addzoomaccount}
    ELSE IF  '${BusinessAccount_enabled}' == 'True'
        click on button                                 ${zoommeetingsettings_businessaccount}
        page should contain element                     ${zoommeetingsettings_registrationisnotrequired}
        page should contain element                     ${zoommeetingsettings_registrationisnotrequired}
        page should contain element                     ${zoommeetingsettings_addzoomaccount}
        click on button                                 ${zoommeetingsettings_addzoomaccount}
        wait until element is visible                   ${zoommeetingsettings_addzoomaccount_h}                     20
        page should contain element                     ${zoommeetingsettings_addzoomaccount_h}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_zoomaccount}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_save}
        page should contain element                     ${zoommeetingsettings_addzoomaccount_close}
        click on button                                 ${zoommeetingsettings_addzoomaccount_close}
        page should contain element                     ${zoommeetingsettings_addzoomaccount}
    END
    go back


#::::::::::::::::::::::::::::::: Miscellaneous    ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Verify Birthday Banner Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        ${Miscellaneous_BirthdayBanner}
    page should contain element                     ${Miscellaneous_BirthdayBanner}
    click on button                                 ${Miscellaneous_BirthdayBanner}
    wait until element is visible                   ${BirthdayBannerSettings_h}                           20
    sleep                                           2
    page should contain element                     ${BirthdayBannerSettings_h}
    page should contain element                     ${birthdaybannersettings_birthdaymessage}
    page should contain element                     ${birthdaybannersettings_birthdaybanner1}
    page should contain element                     ${birthdaybannersettings_birthdaybanner2}
    page should contain element                     ${birthdaybannersettings_birthdaybanner3}
    page should contain element                     ${birthdaybannersettings_uploadcustombanner}
    page should contain element                     ${birthdaybannersettings_info}
    page should contain element                     ${birthdaybannersettings_savechanges}
    go back

Verify Enable/Disable Store
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        ${Miscellaneous_Enable/DisableStore}
    page should contain element                     ${Miscellaneous_Enable/DisableStore}
    click on button                                 ${Miscellaneous_Enable/DisableStore}
    wait until element is visible                   ${Enable/DisableStore_h}                                     20
    sleep                                           2
    page should contain element                     ${Enable/DisableStore_h}
    page should contain element                     ${Enable/DisableStore_enable}
    page should contain element                     ${Enable/DisableStore_disable}
    go back

Verify Vendor Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        ${Miscellaneous_VendorSettings}
    page should contain element                     ${Miscellaneous_VendorSettings}
    click on button                                 ${Miscellaneous_VendorSettings}
    wait until element is visible                   ${vendorsettings_h}                                  20
    page should contain element                     ${vendorsettings_h}
    page should contain element                     ${vendorsettings_becomevendor}
    element should be disabled                      ${vendorsettings_becomevendor}
    go back

Verify Where did you hear about us?
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        ${Miscellaneous_Wheredidyouhearaboutus?}
    page should contain element                     ${Miscellaneous_Wheredidyouhearaboutus?}
    click on button                                 ${Miscellaneous_Wheredidyouhearaboutus?}
    sleep                                           3
    wait until element is visible                   ${wheredidyouhearaboutus?_h}                          20
    page should contain element                     ${wheredidyouhearaboutus?_h}
    page should contain element                     ${wheredidyouhearaboutus?_addoption}
    page should contain element                     ${wheredidyouhearaboutus?_google}
    page should contain element                     ${wheredidyouhearaboutus?_google_delete}
    page should contain element                     ${wheredidyouhearaboutus?_phone}
    page should contain element                     ${wheredidyouhearaboutus?_phone_delete}
    page should contain element                     ${wheredidyouhearaboutus?_socialmedia}
    page should contain element                     ${wheredidyouhearaboutus?_socialmedia_delete}
    page should contain element                     ${wheredidyouhearaboutus?_t.v.}
    page should contain element                     ${wheredidyouhearaboutus?_t.v._delete}
    click on button                                 ${wheredidyouhearaboutus?_addoption}
    wait until element is visible                   ${wheredidyouhearaboutus?_addoption_h}                20
    page should contain element                     ${wheredidyouhearaboutus?_addoption_h}
    page should contain element                     ${wheredidyouhearaboutus?_addoption_enteranoption}
    page should contain element                     ${wheredidyouhearaboutus?_addoption_addoption}
    go back


Verify Store Settings
    sleep                                           5
    wait until page contains element                ${othersettings_h}                                    20
    page should contain element                     ${othersettings_h}
    click on button                                 ${othersettings_expandall}
    scroll element into view                        xpath://div[text()='Vendor Settings']
    page should contain element                     ${Miscellaneous_StoreSettings}
    click on button                                 ${Miscellaneous_StoreSettings}
    wait until element is visible                   ${StoreSettings_h}                                     20
    sleep                                           2
    page should contain element                     ${StoreSettings_SetDefaultPrices}
    click on button                                 ${StoreSettings_SetDefaultPrices}
    page should contain element                     ${StoreSettings_SetDefaultPrices_INR}
    page should contain element                     ${StoreSettings_SetDefaultPrices_GBP}
    page should contain element                     ${StoreSettings_SetDefaultPrices_USD}
    page should contain element                     ${StoreSettings_SetDefaultPrices_EUR}
    click on button                                 ${StoreSettings_SetDefaultPrices_INR}
    press keys                                      ${StoreSettings_Assignment_IndividualPrice}             ESC
    page should contain element                     ${StoreSettings_Info}
    page should contain element                     ${StoreSettings_Assignment_IndividualPrice}
    page should contain element                     ${StoreSettings_Assignment_SchoolPrice}
    page should contain element                     ${StoreSettings_Collection_IndividualPrice}
    page should contain element                     ${StoreSettings_Collection_SchoolPrice}
    page should contain element                     ${StoreSettings_Page_IndividualPrice}
    page should contain element                     ${StoreSettings_Page_SchoolPrice}
    page should contain element                     ${StoreSettings_Test_IndividualPrice}
    page should contain element                     ${StoreSettings_Test_SchoolPrice}
    page should contain element                     ${storesettings_save}
    page should contain element                     ${StoreSettings_Edit}
    click on button                                 ${StoreSettings_Edit}
    wait until element is visible                   ${StoreSettings_EditStoreInformation_h}                 20
    page should contain element                     ${StoreSettings_EditStoreInformation_h}
    page should contain element                     ${StoreSettings_EditStoreInformation_CompanyName}
    page should contain element                     ${StoreSettings_EditStoreInformation_Website}
    page should contain element                     ${StoreSettings_EditStoreInformation_Description}
    page should contain element                     ${StoreSettings_EditStoreInformation_Address}
    page should contain element                     ${StoreSettings_EditStoreInformation_AddressLine1}
    page should contain element                     ${StoreSettings_EditStoreInformation_AddressLine2}
    page should contain element                     ${StoreSettings_EditStoreInformation_City}
    page should contain element                     ${StoreSettings_EditStoreInformation_State}
    page should contain element                     ${StoreSettings_EditStoreInformation_Country}
    page should contain element                     ${StoreSettings_EditStoreInformation_Save}
    page should contain element                     ${StoreSettings_EditStoreInformation_Cancel}
    click on button                                 ${StoreSettings_EditStoreInformation_Cancel}
    wait until element is visible                   ${StoreSettings_h}                                      20
    page should contain element                     ${StoreSettings_h}