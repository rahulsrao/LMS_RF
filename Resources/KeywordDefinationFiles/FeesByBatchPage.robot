*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/FeesByBatchPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Fees By Batch Report page
    [Documentation]  This test case verifies Fees By Batch Report page
    [Tags]  Report
    click element                       ${feesreportbybatch}
    wait until element is visible       ${hFeesByBatch}                           120
    page should contain element         ${hFeesByBatch}
    page should contain element         ${fbb_Organizations}
    click element                       ${fbb_Organizations}
    page should contain element         ${fbb_Refresh}
    click on button                     ${fbb_refresh}
    wait until element is visible       ${opt_lms}                                120
    page should contain element         ${opt_lms}
    click element                       ${opt_lms}
    page should contain element         ${btn_terms}
    click element                       ${btn_terms}
    sleep                               5
    scroll element into view            ${trm_SPRING2020}
    page should contain element         ${trm_SPRING2020}
    click element                       ${trm_SPRING2020}
    page should contain element         ${fbb_Course}
    click element                       ${fbb_Course}
    page should contain element         ${FBB_ART}
    click element                       ${FBB_ART}
    wait until element is visible       ${fbb_Status}                120
    page should contain element         ${fbb_Status}
    click on button                     ${fbb_Status}
    wait until element is visible       ${fbb_Active}                120
    page should contain element         ${fbb_Active}
    page should contain element         ${fbb_Inactive}
    click on button                     ${fbb_Active}
    page should contain element         ${fbb_startdate}
    page should contain element         ${fbb_enddate}
    page should contain element         ${fbb_FetchData}
    click on button                     ${fbb_FetchData}
    wait until element is visible       ${fbb_FetchData}            120
    page should contain element         ${fbb_th_batchname}
    page should contain element         ${fbb_th_status}
    page should contain element         ${fbb_th_Course}
    page should contain element         ${fbb_th_Students}
    page should contain element         ${fbb_th_TotalFees}
    page should contain element         ${fbb_th_TotalFeesDue}
    page should contain element         ${fbb_th_FeesRecd}
    page should contain element         ${fbb_th_feesduebutnotrecd}


#-------------------------------------------------------------------------------------------
verify Fees By Batch Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                         ${TermN}       ${CourseN}           ${status}
    click element                       ${feesreportbybatch}
    wait until element is visible       ${hFeesByBatch}              120
    page should contain element         ${hFeesByBatch}
    page should contain element         ${fbb_Organizations}
    page should contain element         ${fbb_Refresh}
    FeesByBatchPage.Select a Term       ${TermN}
    FeesByBatchPage.Select a Course     ${CourseN}
    FeesByBatchPage.Select a Status     ${status}
    page should contain element         ${fbb_startdate}
    page should contain element         ${fbb_EndDate}
    FeesByBatchPage.Click on Fetch Data
    FeesByBatchPage.Verify Fees By Batch Report Table
    FeesByBatchPage.verify download Fees By Batch Report

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${fbb_FetchData}
    click on button                     ${fbb_FetchData}
    wait until element is visible       ${fbb_FetchData}            120

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
    FeesByBatchPage.Click on Terms
    input text                          css:input[aria-label='Terms']                ${Opt_Term}
    page should contain element         xpath:(//span[contains(text(),'${Opt_Term}')])[1]//ancestor::a
    click on button                     xpath:(//span[contains(text(),'${Opt_Term}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Course
#-------------------------------------------------------------------------------------------
Click on Course
    page should contain element         ${fbb_Course}
    click on button                     ${fbb_Course}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${Opt_course}
    FeesByBatchPage.Click on Course
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_course}']//ancestor::a
    Press Keys                          ${hFeesByBatch}             ESC

#-------------------------------------------------------------------------------------------
#                                       Status
#-------------------------------------------------------------------------------------------
Click on Status
    page should contain element         ${fbb_status}
    click on button                     ${fbb_status}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Status
    [Arguments]                         ${Opt_status}
    FeesByBatchPage.Click on Status
    page should contain element         xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    click on button                     xpath://div[contains(text(),'${Opt_status}')]//ancestor::a
    Press Keys                          ${hFeesByBatch}             ESC

#-------------------------------------------------------------------------------------------
#                           Fees By Batch Page Table
#-------------------------------------------------------------------------------------------
Verify Fees By Batch Report Table
    page should contain element         ${fbb_th_batchname}
    page should contain element         ${fbb_th_status}
    page should contain element         ${fbb_th_Course}
    page should contain element         ${fbb_th_Students}
    page should contain element         ${fbb_th_TotalFees}
    page should contain element         ${fbb_th_TotalFeesDue}
    page should contain element         ${fbb_th_FeesRecd}
    page should contain element         ${fbb_th_feesduebutnotrecd}

#-------------------------------------------------------------------------------------------
verify download Fees By Batch Report
    [Documentation]  This test case verifies that Fees By Batch Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${br_downloadreport}
    click on button                     ${br_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${br_backtoreports}
    click on button                     ${br_backtoreports}