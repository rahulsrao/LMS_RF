*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_Batches.robot
Resource        ../../Resources/TestData/TestData.robot
Resource        ../../PageObjects/SystemSettings.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Batches page of Teacher User
    [Arguments]                                                     ${OrgN}     ${TermN}        ${prgm}     ${levlN}        ${CourseN}       ${BatchN}     ${StudentHouse}
    SystemSettings_Batches.Click on Batch button
    SystemSettings_Batches.verify Batch page elements
    SystemSettings_Batches.Select a Course                          ${CourseN}
    SystemSettings_Batches.Search a Batch                           ${BatchN}
    SystemSettings_Batches.Verify mass enrol Window                 ${BatchN}        ${prgm}     ${StudentHouse}     ${levlN}
    SystemSettings_Batches.Verify Enrolment Settings window         ${BatchN}
    SystemSettings_Batches.verify Edit Batch                        ${BatchN}        ${TermN}        ${CourseN}      ${OrgN}

#-------------------------------------------------------------------------------------------
Click on Batch button
    page should contain element                                     ${ss_batch}
    click on button                                                 ${ss_batch}
    sleep                                                           5

#-------------------------------------------------------------------------------------------
#                                 Course
#-------------------------------------------------------------------------------------------
Click on Filter By Course
    page should contain element         ${btch_filterbycourse}
    click on button                     ${btch_filterbycourse}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Course}
    SystemSettings_Batches.Click on Filter By Course
    page should contain element         xpath:(//div[text()='${Course}'])[1]
    click on button                     xpath:(//div[text()='${Course}'])[1]
    sleep                               3

#-------------------------------------------------------------------------------------------
#                                 Term
#-------------------------------------------------------------------------------------------
Click on Filter By Term
    page should contain element         ${btch_FilterByTerm}
    click on button                     ${btch_FilterByTerm}
    sleep                               3

#-------------------------------------------------------------------------------------------
Select a Term
    [Arguments]                         ${TermN}
    SystemSettings_Batches.Click on Filter By Term
    page should contain element         xpath:(//div[text()='${TermN}'])[1]
    click on button                     xpath:(//div[text()='${TermN}'])[1]
    sleep                               3

#-------------------------------------------------------------------------------------------
Search a Batch
    [Arguments]                         ${BatchN}
    page should contain element         ${btch_search}
    input text                          ${btch_search}          ${BatchN}
    sleep                               3

#-------------------------------------------------------------------------------------------
verify Batch page elements
    wait until element is visible       ${hBatches}                 120
    page should contain element         ${hBatches}
    page should contain element         ${btch_filterbycourse}
    page should contain element         ${btch_FilterByTerm}
    page should contain element         ${btch_organizations}
    page should contain element         ${btch_search}
    page should contain element         ${btch_isactive}
    page should contain element         ${btch_openenrolment}
    page should contain element         ${btch_publicurl}


#-------------------------------------------------------------------------------------------
#                           Edit Batch
#-------------------------------------------------------------------------------------------
verify Edit Batch
    [Arguments]                                                 ${BatchN}       ${TermN}        ${CourseN}      ${OrgN}
    SystemSettings_Batches.Click on Edit button of a Batch      ${BatchN}
    SystemSettings_Batches.verify Edit Batch window Elements    ${BatchN}       ${TermN}        ${CourseN}      ${OrgN}
#    SystemSettings_Batches.Verify Zoom Meeting Settings
    SystemSettings_Batches.Verify Zoom OAuth Settings
    SystemSettings_Batches.Close Edit Batch window

#-------------------------------------------------------------------------------------------
verify Edit Batch window Elements
    [Arguments]                                                 ${BatchN}       ${TermN}        ${CourseN}      ${OrgN}
    SystemSettings_Batches.verify Batch Name                    ${BatchN}
    SystemSettings_Batches.Verify Term Name                     ${TermN}
    SystemSettings_Batches.Verify Course Name                   ${CourseN}
    SystemSettings_Batches.Verify Organization Name             ${OrgN}
#    page should contain element                                 ${editbatch_EditZoomJWT}
    page should contain element                                 ${editbatch_AddZoomOAuth}
    page should contain element                                 ${addbatch_Active}
    checkbox should be selected                                 ${addbatch_Active}
    page should contain element                                 ${addbatch_lessonplan}
    checkbox should not be selected                             ${addbatch_lessonplan}
    element should be disabled                                  ${addbatch_SelfPacedBatch}
    page should contain element                                 ${addbatch_startdate}
    element should be disabled                                  ${addbatch_startdate}
    page should contain element                                 ${addbatch_enddate}
    element should be disabled                                  ${addbatch_enddate}
    page should contain element                                 ${editbatch_Delete}
    page should contain element                                 ${addbatch_close}
    page should contain element                                 ${addbatch_save}

#-------------------------------------------------------------------------------------------
Click on Edit button of a Batch
    [Arguments]                         ${BatchN}
    page should contain element         xpath://div[contains(text(),'${BatchN}')]//following::button[4]
    click on button                     xpath://div[contains(text(),'${BatchN}')]//following::button[4]
    sleep                               5
#-------------------------------------------------------------------------------------------
verify Batch Name
    [Arguments]                                 ${BatchN}
    page should contain element                 ${addbatch_name}
    Textfield Value Should Be                   ${addbatch_name}            ${BatchN}

#-------------------------------------------------------------------------------------------
Verify Term Name
    [Arguments]                                 ${TermN}
    element should be disabled                  ${editbatch_termname}
    ${tname}=  get element attribute            ${editbatch_termname}               value
    should be equal                             ${tname}                            ${TermN}

#-------------------------------------------------------------------------------------------
Verify Course Name
    [Arguments]                                 ${CourseN}
    element should be disabled                  ${editbatch_coursename}
    ${cname}=  get element attribute            ${editbatch_coursename}             value
    should be equal                             ${cname}                            ${CourseN}

#-------------------------------------------------------------------------------------------
Verify Organization Name
    [Arguments]                                 ${OrgN}
    element should be disabled                  ${btch_organizations}
    ${orname}=  get element attribute           ${btch_organizations}           value
    should be equal                             ${orname}                       ${OrgN}
    sleep                                       1

#-------------------------------------------------------------------------------------------
Close Edit Batch window
    page should contain element                 ${addbatch_close}
    click on button                             ${addbatch_close}


#-------------------------------------------------------------------------------------------
#                       Zoom Meeting Settings
#-------------------------------------------------------------------------------------------
Verify Zoom Meeting Settings
    SystemSettings_Batches.Click on Edit Zoom JWT Key
    SystemSettings_Batches.Verify Zoom Meeting Settings window elements
    SystemSettings_Batches.Click on zoomsettings info
    SystemSettings_Batches.Verify Create a JWT app page
    SystemSettings_Batches.Close Zoom Meeting Settings

#-------------------------------------------------------------------------------------------
Click on Edit Zoom JWT Key
    page should contain element                 ${editbatch_EditZoomJWT}
    click on button                             ${editbatch_EditZoomJWT}
    sleep                                       5

#-------------------------------------------------------------------------------------------
Verify Zoom Meeting Settings window elements
    page should contain element                 ${editbatch_zoomsettingsh}
    page should contain element                 ${editbatch_zoomsettings_jwtkey}
    page should contain element                 ${editbatch_zoomsettings_info}
    page should contain element                 ${editbatch_zoomsettings_delete}
    page should contain element                 ${editbatch_zoomsettings_update}
    page should contain element                 ${editbatch_zoomsettings_cancel}

#-------------------------------------------------------------------------------------------
Click on zoomsettings info
    page should contain element                 ${editbatch_zoomsettings_info}
    click element                               ${editbatch_zoomsettings_info}
#    click on button                             ${editbatch_zoomsettings_info}
    sleep                                       5

#-------------------------------------------------------------------------------------------
Verify Create a JWT app page
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[1]
    wait until element is visible               xpath://h1[@id='the-zoom-platform' and text()='The Zoom Platform']              30
    page should contain element                 xpath://h1[@id='the-zoom-platform' and text()='The Zoom Platform']
    close window
    sleep                                       3
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[0]
    sleep                                       2

#-------------------------------------------------------------------------------------------
Close Zoom Meeting Settings
    page should contain element                 ${editbatch_zoomsettings_cancel}
    click on button                             ${editbatch_zoomsettings_cancel}
    sleep                                       5

#-------------------------------------------------------------------------------------------
#                       Zoom OAuth Settings
#-------------------------------------------------------------------------------------------
Verify Zoom OAuth Settings
    SystemSettings_Batches.Click on Add Zoom OAuth
    SystemSettings_Batches.Verify Zoom OAuth Settings window
    SystemSettings_Batches.Close on Add Zoom OAuth

#-------------------------------------------------------------------------------------------
Click on Add Zoom OAuth
    page should contain element                 ${editbatch_AddZoomOAuth}
    click on button                             ${editbatch_AddZoomOAuth}
    sleep                                       5

#-------------------------------------------------------------------------------------------
Verify Zoom OAuth Settings window
    page should contain element                 ${ZoomOAuthSettings_h}
    page should contain element                 ${ZoomOAuthSettings_Code}
    page should contain element                 ${ZoomOAuthSettings_ClientID}
    page should contain element                 ${ZoomOAuthSettings_ClientSecret}
    page should contain element                 ${ZoomOAuthSettings_Save}

#-------------------------------------------------------------------------------------------
Close on Add Zoom OAuth
    page should contain element                 ${ZoomOAuthSettings_Cancel}
    click on button                             ${ZoomOAuthSettings_Cancel}
    sleep                                       5

#-------------------------------------------------------------------------------------------
#                           Mass Enrol
#-------------------------------------------------------------------------------------------
Verify mass enrol Window
    [Arguments]                                                 ${bname}        ${prgm}     ${StudentHouse}     ${levlN}
    SystemSettings_Batches.Click on mass enrol button           ${bname}
    SystemSettings_Batches.Verify mass enrol Window elements
    SystemSettings_Batches.Select program                       ${prgm}
    SystemSettings_Batches.Select Student House                 ${StudentHouse}
    SystemSettings_Batches.Select a level                       ${levlN}
    SystemSettings_Batches.Close batch mass enrol window

#-------------------------------------------------------------------------------------------
Verify mass enrol Window elements
    page should contain element                 ${Batchmassenrol_h}
    page should contain element                 ${batchmassenrol_program}
    page should contain element                 ${batchmassenrol_studenthouse}
    page should contain element                 ${batchmassenrol_attribute2}
    page should contain element                 ${batchmassenrol_level}
    page should contain element                 ${batchmassenrol_save}
    element should be disabled                  ${batchmassenrol_save}
    page should contain element                 ${batchmassenrol_close}

#-------------------------------------------------------------------------------------------
Click on mass enrol button
    [Arguments]                                 ${bname}
    page should contain element                 xpath://div[contains(text(),'${bname}')]//following::button[1]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[1]
    sleep                                       5

#-------------------------------------------------------------------------------------------
Click on program
    page should contain element                 ${batchmassenrol_program}
    click on button                             ${batchmassenrol_program}
    sleep                                       4

#-------------------------------------------------------------------------------------------
Select program
    [Arguments]                                 ${prgm}
    SystemSettings_Batches.Click on program
    page should contain element                 xpath://div[text()='${prgm}']
    click on button                             xpath://div[text()='${prgm}']
    sleep                                       3

#-------------------------------------------------------------------------------------------
Click on Student House
    page should contain element                 ${Batchmassenrol_StudentHouse}
    click on button                             ${Batchmassenrol_StudentHouse}
    sleep                                       4

#-------------------------------------------------------------------------------------------
Select Student House
    [Arguments]                                 ${StudentHouse}
    SystemSettings_Batches.Click on Student House
    page should contain element                 xpath://div[text()='${StudentHouse}']
    click on button                             xpath://div[text()='${StudentHouse}']
    sleep                                       3

#-------------------------------------------------------------------------------------------
Click on level
    page should contain element                 ${batchmassenrol_level}
    click on button                             ${batchmassenrol_level}
    sleep                                       3

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                                 ${levlN}
    SystemSettings_Batches.Click on Student House
    page should contain element                 xpath://div[text()='${levlN}']
    click on button                             xpath://div[text()='${levlN}']
    sleep                                       3

#-------------------------------------------------------------------------------------------
Close batch mass enrol window
    page should contain element                 ${batchmassenrol_close}
    click on button                             ${batchmassenrol_close}
    sleep                                       5

#-------------------------------------------------------------------------------------------
#                               Enrolment Settings
#-------------------------------------------------------------------------------------------
Verify Enrolment Settings window
    [Arguments]                                                                 ${bname}
    SystemSettings_Batches.Click on Enrolment Settings button of a batch        ${bname}
    SystemSettings_Batches.Verify Enrolment Settings Window elements
    SystemSettings_Batches.Close Enrolment Settings window

#-------------------------------------------------------------------------------------------
Click on Enrolment Settings button of a batch
    [Arguments]                                 ${bname}
    page should contain element                 xpath://div[contains(text(),'${bname}')]//following::button[3]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[3]
    sleep                                       5

#-------------------------------------------------------------------------------------------
Verify Enrolment Settings Window elements
    page should contain element                 ${enrolmentsettings_maxenrolments}
    checkbox should not be selected             ${enrolmentsettings_maxenrolments}
    page should contain element                 ${enrolmentsettings_openenrolment}
    checkbox should not be selected             ${enrolmentsettings_openenrolment}
    page should contain element                 ${enrolmentsettings_publicurl}
    page should contain element                 ${enrolmentsettings_done}
#-------------------------------------------------------------------------------------------
Close Enrolment Settings window
    page should contain element                 ${enrolmentsettings_close}
    click on button                             ${enrolmentsettings_close}
    sleep                                       5

#-------------------------------------------------------------------------------------------
verify Batch page
    [Documentation]  This test case verifies System Settings Batches page
    [Tags]  Settings
    [Arguments]                         ${batch}        ${Course}       ${Term}     ${org}
    wait until element is visible       ${hBatches}
    page should contain element         ${hBatches}
    page should contain element         ${btch_filterbycourse}
    page should contain element         ${btch_organizations}
    page should contain element         ${btch_search}
    page should contain element         ${btch_isactive}
    page should contain element         ${btch_openenrolment}
    page should contain element         ${btch_publicurl}
    click on button                     ${btch_filterbycourse}
    page should contain element         xpath:(//div[text()='${Course}'])[1]
    click on button                     xpath:(//div[text()='${Course}'])[1]
    click on button                     ${btch_FilterByTerm}
    sleep                               2
    scroll element into view            xpath:(//div[text()='${Term}'])[1]
    page should contain element         xpath:(//div[text()='${Term}'])[1]
    click on button                     xpath:(//div[text()='${Term}'])[1]
    page should contain element         ${btch_organizations}
    click on button                     ${btch_organizations}
    sleep                               2
    page should contain element         xpath://div[text()='${org}']
    click on button                     xpath://div[text()='${org}']
    checkbox should be selected         ${btch_isactive}
    checkbox should not be selected     ${btch_openenrolment}
    checkbox should not be selected     ${btch_publicurl}
    page should contain element         xpath://div[contains(text(),'${batch}')]
    page should contain element         xpath://div[contains(text(),'${batch}')]//following::button[1]
    page should contain element         xpath://div[contains(text(),'${batch}')]//following::button[2]
    page should contain element         xpath://div[contains(text(),'${batch}')]//following::button[3]
    page should contain element         xpath://div[contains(text(),'${batch}')]//following::button[4]

verify Add Batch window
    click on button                    ${btch_add}
    sleep                              2
    page should contain element        ${addbatch_name}
    page should contain element        ${addbatch_term}
    page should contain element        ${addbatch_course}
    page should contain element        ${btch_organizations}
    page should contain element        ${addbatch_active}
    page should contain element        ${addbatch_lessonplan}
    page should contain element        ${addbatch_selfpacedbatch}
    scroll element into view           ${addbatch_close}
    page should contain element        ${addbatch_startdate}
    page should contain element        ${addbatch_enddate}
    page should contain element        ${addbatch_close}
    page should contain element        ${addbatch_save}
    click on button                    ${addbatch_close}
    sleep                              2

Add Batch
    [Arguments]                        ${bname}     ${Course}       ${Term}     ${org}       ${start}        ${end}
    click on button                    ${btch_add}
    sleep                              2
    scroll element into view           ${addbatch_save}
    click on button                    ${addbatch_save}
    sleep                              2
    page should contain element        ${addbatch_validation}
    scroll element into view           ${addbatch_name}
    input text                         ${addbatch_name}                     ${bname}
    click on button                    ${addbatch_term}
    input text                         ${addbatch_term}                     ${Term}
    page should contain element         xpath:(//span[text()='SPRING 2020'])[1]
    click on button                     xpath:(//span[text()='SPRING 2020'])[1]
    sleep                               2
    click on button                     ${addbatch_course}
    page should contain element         xpath:(//div[text()='${Course}'])[1]
    click on button                     xpath:(//div[text()='${Course}'])[1]
    sleep                               1
    click on button                     ${btch_organizations}
    page should contain element         xpath://div[text()='${org}']
    click on button                     xpath://div[text()='${org}']
    sleep                               1
    scroll element into view            ${addbatch_save}
    add date                            ${addbatch_startdate}           ${start}
    add date                            ${addbatch_enddate}             ${end}
    click on button                     ${addbatch_save}
    sleep                               5
    search a batch                      ${bname}
    page should contain element         xpath://div[contains(text(),'${bname}')]

Edit Batch
    [Arguments]                                 ${bname}     ${Course}       ${Term}     ${org}      ${bname1}     ${org1}
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[4]
    sleep                                       5
    page should contain element                 ${addbatch_name}
    Textfield Value Should Be                   ${addbatch_name}            ${bname}
    press keys                                  ${addbatch_name}            CTRL+a   BACKSPACE
    input text                                  ${addbatch_name}            ${bname1}
    element should be disabled                  ${editbatch_termname}
    ${tname}=  get element attribute            ${editbatch_termname}               value
    should be equal                             ${tname}                            ${Term}
    element should be disabled                  ${editbatch_coursename}
    ${cname}=  get element attribute            ${editbatch_coursename}             value
    should be equal                             ${cname}                            ${Course}
    ${orname}=  get element attribute           ${btch_organizations}               value
    should be equal                             ${orname}                           ${org}
    sleep                                       1
    click on button                             ${btch_organizations}
    page should contain element                 xpath://div[text()='${org1}']
    click on button                             xpath://div[text()='${org1}']
#    page should contain element                 ${editbatch_addzoomjwt}
    page should contain element                 ${editbatch_addzoomoauth}
    checkbox should be selected                 ${addbatch_active}
    checkbox should not be selected             ${addbatch_lessonplan}
    click on button                             ${addbatch_lessonplan}
    page should contain element                 ${editbatch_Delete}
    page should contain element                 ${addbatch_close}
    page should contain element                 ${addbatch_save}
    click on button                             ${addbatch_save}
    sleep                                       5

Add Add Zoom JWT Key
    [Arguments]                                 ${org}                          ${bname}        ${jwt}
    page should contain element                 ${btch_organizations}
    click on button                             ${btch_organizations}
    sleep                                       2
    page should contain element                 xpath://div[text()='${org}']
    click on button                             xpath://div[text()='${org}']
    sleep                                       3
    page should contain element                 xpath://div[contains(text(),'${bname}')]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[4]
    sleep                                       5
    page should contain element                 ${addbatch_name}
    Textfield Value Should Be                   ${addbatch_name}            ${bname}
    scroll element into view                    ${addbatch_save}
    page should contain element                 ${editbatch_addzoomjwt}
    click on button                             ${editbatch_addzoomjwt}
    sleep                                       2
    page should contain element                 ${editbatch_zoomsettingsh}
    page should contain element                 ${editbatch_zoomsettings_jwtkey}
    page should contain element                 ${editbatch_zoomsettings_info}
    page should contain element                 ${editbatch_zoomsettings_submit}
    page should contain element                 ${editbatch_zoomsettings_cancel}
    click on button                             ${editbatch_zoomsettings_info}
    sleep                                       5
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[1]
    wait until element is visible               xpath://h1[@id='the-zoom-platform' and text()='The Zoom Platform']         30
    page should contain element                 xpath://h1[@id='the-zoom-platform' and text()='The Zoom Platform']
    close window
    sleep                                       5
    switch window                               ${handles}[0]
    sleep                                       1
    page should contain element                 ${editbatch_zoomsettingsh}
    click on button                             ${editbatch_zoomsettings_cancel}
    sleep                                       2
    page should contain element                 ${EDITBATCH_ADDZOOMJWT}
    click on button                             ${EDITBATCH_ADDZOOMJWT}
    sleep                                       2
    page should contain element                 ${editbatch_zoomsettingsh}
    input text                                  ${editbatch_zoomsettings_jwtkey}                ${jwt}
    click on button                             ${editbatch_zoomsettings_submit}
    sleep                                       2
    page should contain element                 ${editbatch_addzoomjwt}
    click on button                             ${addbatch_close}
    sleep                                       2

verify mass enrol
    [Arguments]                                 ${bname}        ${prm}       ${crs}     ${org}
    page should contain element                 ${btch_organizations}
    click on button                             ${btch_organizations}
    sleep                                       5
    page should contain element                 xpath://div[text()='${org}']
    click on button                             xpath://div[text()='${org}']
    sleep                                       3
    wait until element is visible               xpath://div[contains(text(),'${bname}')]
    page should contain element                 xpath://div[contains(text(),'${bname}')]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[1]
    sleep                                       2
    page should contain element                 ${batchmassenrol_program}
    wait until element is visible               ${batchmassenrol_studenthouse}          120
    page should contain element                 ${batchmassenrol_studenthouse}
    page should contain element                 ${batchmassenrol_attribute2}
    page should contain element                 ${batchmassenrol_level}
    page should contain element                 ${batchmassenrol_close}
    click on button                             ${batchmassenrol_close}
    sleep                                       2
    page should contain element                 xpath://div[contains(text(),'${bname}')]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[1]
    sleep                                       2
    page should contain element                 ${batchmassenrol_program}
    click on button                             ${batchmassenrol_program}
    sleep                                       4
    page should contain element                 xpath://div[text()='${prm}']
    click on button                             xpath://div[text()='${prm}']
    page should contain element                 ${batchmassenrol_level}
    click on button                             ${batchmassenrol_level}
    sleep                                       3
    page should contain element                 xpath://div[text()='${crs}']
    click on button                             xpath://div[text()='${crs}']
    page should contain element                 ${batchmassenrol_save}
#    click on button                             ${batchmassenrol_save}
    click on button                             ${batchmassenrol_close}
    sleep                                       5

Verify Batch Online
    [Arguments]                                 ${bname}                ${org}
    page should contain element                 ${btch_organizations}
    click on button                             ${btch_organizations}
    sleep                                       2
    page should contain element                 xpath://div[text()='${org}']
    click on button                             xpath://div[text()='${org}']
    sleep                                       3
    page should contain element                 xpath://div[contains(text(),'${bname}')]//following::button[2]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[2]//child::i[1]
    sleep                                       5
    page should contain element                 ${batchonlineh}
    page should contain element                 ${batchonline_done}
    page should contain element                 ${batchonline_close}
    click on button                             ${batchonline_close}
    sleep                                       5

Enrolment Settings
    [Arguments]                                 ${bname}
    page should contain element                 xpath://div[contains(text(),'${bname}')]//following::button[3]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[3]
    sleep                                       5
    page should contain element                 ${enrolmentsettings_maxenrolments}
    page should contain element                 ${enrolmentsettings_openenrolment}
    page should contain element                 ${enrolmentsettings_publicurl}
    page should contain element                 ${enrolmentsettings_done}
    page should contain element                 ${enrolmentsettings_close}
    click on button                             ${enrolmentsettings_close}

Delete Batch
    [Arguments]                                 ${bname}
    page should contain element                 xpath://div[contains(text(),'${bname}')]
    click on button                             xpath://div[contains(text(),'${bname}')]//following::button[4]
    sleep                                       5
    scroll element into view                    ${editbatch_delete}
    page should contain element                 ${editbatch_delete}
    click on button                             ${editbatch_delete}
    handle alert                                accept
    sleep                                       5
    page should not contain element             xpath://div[contains(text(),'${bname}')]