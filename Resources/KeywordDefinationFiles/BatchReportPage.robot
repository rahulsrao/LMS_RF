*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/BatchReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Batch Report page
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    click element                       ${batchreport}
    wait until element is visible       ${hbatchreport}              120
    page should contain element         ${hbatchreport}
    page should contain element         ${btn_organizations}
    click element                       ${btn_organizations}
    page should contain element         ${br_Refresh}
    click on button                     ${br_Refresh}
    wait until element is visible       ${opt_lms}                   120
    page should contain element         ${opt_lms}
    click element                       ${opt_lms}
    page should contain element         ${btn_terms}
    click element                       ${btn_terms}
    scroll element into view            ${opt_spring2020}
    page should contain element         ${opt_spring2020}
    click element                       ${opt_spring2020}
    page should contain element         ${btn_level}
    click element                       ${btn_level}
    page should contain element         ${opt_level7}
    click element                       ${opt_Level7}
    wait until element is visible       ${BR_Course}                120
    page should contain element         ${BR_Course}
    click on button                     ${BR_Course}
    wait until element is visible       ${opt_art}                  120
    page should contain element         ${OPT_ART}
    click element                       ${OPT_ART}
    Press Keys                          ${hbatchreport}             ESC
    page should contain element         ${btn_batchtype}
    click on button                     ${btn_batchtype}
    wait until element is visible       ${opt_BR_Active}            120
    page should contain element         ${opt_BR_Active}
    page should contain element         ${opt_BR_Inactive}
    click on button                     ${opt_BR_Active}
    page should contain element         ${btn_batch}
    click on button                     ${btn_batch}
    wait until element is visible       ${opt_artbatchone}         120
    page should contain element         ${opt_artbatchone}
    click on button                     ${opt_artbatchone}
    Press Keys                          ${hbatchreport}             ESC
    page should contain element         ${br_startdate}
    page should contain element         ${br_enddate}
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120
    page should contain element         ${th_batchname}
    page should contain element         ${th_term}
    page should contain element         ${th_course}
    page should contain element         ${th_startdate}
    page should contain element         ${th_enddate}
    page should contain element         ${th_status}
    page should contain element         ${th_students}
    page should contain element         ${th_studentname}
    page should contain element         ${th_studentcontactnumber}
    page should contain element         ${th_studentparentsnumber}
    scroll element into view            ${th_attendance}
    page should contain element         ${th_progressclassavg}
    page should contain element         ${th_progresshighest}
    page should contain element         ${th_conferencesdone}
    page should contain element         ${th_discussiondone}
    page should contain element         ${th_attendancedays}
    page should contain element         ${th_attendance}
#-------------------------------------------------------------------------------------------
verify Batch Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                         ${TermN}        ${levelN}      ${CourseN}       ${BatchType}        ${Batch}
    click element                       ${batchreport}
    wait until element is visible       ${hbatchreport}              120
    page should contain element         ${hbatchreport}
    page should contain element         ${btn_organizations}
    page should contain element         ${br_Refresh}
    BatchReportPage.Select a Term       ${TermN}
    BatchReportPage.Select a level      ${levelN}
    BatchReportPage.Select a Course     ${CourseN}
    BatchReportPage.Select a BatchType  ${BatchType}
    BatchReportPage.Select a Batch      ${Batch}
    page should contain element         ${br_startdate}
    page should contain element         ${br_enddate}
    BatchReportPage.Click on Fetch Data
    BatchReportPage.Verify Batch Report Table
    batchreportpage.verify download batch report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${btn_fetchdata}
    click on button                     ${btn_fetchdata}
    wait until element is visible       ${btn_fetchdata}            120

#-------------------------------------------------------------------------------------------
#                               Term
#-------------------------------------------------------------------------------------------
Click on Terms
    page should contain element         ${btn_terms}
    click on button                     ${btn_terms}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Term
    [Arguments]                         ${Opt_Term}
    BatchReportPage.Click on Terms
    input text                          ${btn_terms}                   ${Opt_Term}
    page should contain element         xpath:(//span[contains(text(),'${Opt_Term}')])[1]//ancestor::a
    click on button                     xpath:(//span[contains(text(),'${Opt_Term}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                   Level
#-------------------------------------------------------------------------------------------
Click on level
    page should contain element         ${btn_level}
    click on button                     ${btn_level}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a level
    [Arguments]                         ${Opt_level}
    BatchReportPage.Click on level
    input text                          css:input[aria-label='Level']               ${Opt_level}
    page should contain element         xpath://span[contains(text(),'${Opt_level}')]//ancestor::a
    click on button                     xpath://span[contains(text(),'${Opt_level}')]//ancestor::a
    Press Keys                          ${hbatchreport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Course
#-------------------------------------------------------------------------------------------
Click on Course
    page should contain element         ${br_course}
    click on button                     ${br_course}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Opt_course}
    BatchReportPage.Click on Course
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    Press Keys                          ${hbatchreport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch Type
#-------------------------------------------------------------------------------------------
Click on BatchType
    page should contain element         ${btn_batchtype}
    click on button                     ${btn_batchtype}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchType
    [Arguments]                         ${Opt_BatchType}
    BatchReportPage.Click on BatchType
    page should contain element         xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_BatchType}')]//ancestor::a
    Press Keys                          ${hbatchreport}             ESC

#-------------------------------------------------------------------------------------------
#                                       Batch
#-------------------------------------------------------------------------------------------
Click on Batch
    page should contain element         ${btn_Batch}
    click on button                     ${btn_Batch}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                         ${Opt_Batch}
    BatchReportPage.Click on Batch
    page should contain element         xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a
    click on button                       xpath://div[contains(text(),'${Opt_Batch}')]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Report Table
#-------------------------------------------------------------------------------------------
Verify Batch Report Table
    page should contain element         ${th_batchname}
    page should contain element         ${th_term}
    page should contain element         ${th_course}
    page should contain element         ${th_startdate}
    page should contain element         ${th_enddate}
    page should contain element         ${th_status}
    page should contain element         ${th_students}
    page should contain element         ${th_studentname}
    page should contain element         ${th_studentcontactnumber}
    page should contain element         ${th_studentparentsnumber}
    scroll element into view            ${th_attendance}
    page should contain element         ${th_progressclassavg}
    page should contain element         ${th_progresshighest}
    page should contain element         ${th_conferencesdone}
    page should contain element         ${th_discussiondone}
    page should contain element         ${th_attendancedays}
    page should contain element         ${th_attendance}

#-------------------------------------------------------------------------------------------
verify download Batch Report
    [Documentation]  This test case verifies that Batch Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}