*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/TestPage.robot
Resource         ../../Resources/KeywordDefinationFiles//SATPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Test Details
    [Arguments]                     ${TName}
    wait until element is visible   xpath:(//h2[@title='${TName}'])[2]
    page should contain element     xpath:(//h2[@title='${TName}'])[2]
    page should contain element     ${test_course}
    page should contain element     ${test_module}
    page should contain element     ${test_testduration}

#-------------------------------------------------------------------------------------------
Verify Test Submissions table
    wait until Element is present in the page      ${testsubmissions_graph}
    page should contain element     ${testsubmissions_attempt}
    page should contain element     ${testsubmissions_createdat}
    page should contain element     ${testsubmissions_startedat}
    page should contain element     ${testsubmissions_submittedat}
    page should contain element     ${testsubmissions_pointsearned}
    page should contain element     ${testsubmissions_timeleft}
    page should contain element     ${testsubmissions_status}
    page should contain element     ${testsubmissions_graph}
    page should contain element     ${testsubmissions_submitted}

#-------------------------------------------------------------------------------------------
Verify Test Submissions Page
    [Arguments]                         ${BatchN}   ${status}   ${TName}
    TestPage.Verify Test Details        ${TName}
    TestPage.Select a batch             ${BatchN}
    TestPage.Select a status            ${status}
    TestPage.Verify Test Submissions table
    TestPage.Click on Submitted button
    SATPage.Verify Test Submission Page
    TestPage.Verify Test Submissions Graph       ${TName}

#-------------------------------------------------------------------------------------------
Select a batch
    [Arguments]                     ${BatchN}
    TestPage.Click on Batches drop
    wait until element is visible   xpath://div[contains(text(),'${BatchN}')]/ancestor::a       120
    page should contain element     xpath://div[contains(text(),'${BatchN}')]/ancestor::a
    click on button                 xpath://div[contains(text(),'${BatchN}')]/ancestor::a

#-------------------------------------------------------------------------------------------
Click on Batches drop
    page should contain element     ${TestSubmissions_Batches_drp}
    click on button                 ${TestSubmissions_Batches_drp}
    sleep                           5

#-------------------------------------------------------------------------------------------
Click on status drop
    page should contain element     ${TestSubmissions_Status_drp}
    click on button                 ${TestSubmissions_Status_drp}
    sleep                           5

#-------------------------------------------------------------------------------------------
Select a status
    [Arguments]                     ${status}
    TestPage.Click on status drop
    wait until element is visible   xpath:(//div[contains(text(),'${status}')]/ancestor::a)[1]          120
    page should contain element     xpath:(//div[contains(text(),'${status}')]/ancestor::a)[1]
    click on button                 xpath:(//div[contains(text(),'${status}')]/ancestor::a)[1]

#-------------------------------------------------------------------------------------------
Click on Submitted button
    page should contain element     ${testsubmissions_submitted}
    click on button                 ${testsubmissions_submitted}
    sleep                           5

#-------------------------------------------------------------------------------------------
Click on Graph button
    wait until element is visible   ${testsubmissions_graph}        120
    page should contain element     ${testsubmissions_graph}
    click on button                 ${testsubmissions_graph}
    sleep                           5

#-------------------------------------------------------------------------------------------
Verify Test Submissions Graph
    [Arguments]                     ${TestN}
    TestPage.Click on Graph button
    page should contain element     xpath:(//div[@class='v-toolbar__title'][normalize-space()='Test Submissions ${TestN}'])[3]
    page should contain element     xpath://h1[contains(text(),'Viewing a submission of ${TestN}')]
    page should contain element     ${testsubmissions_graph_difficultygraph}
    page should contain element     ${testsubmissions_graph_conceptsgraph}
    TestPage.Close Test Submissions Graph window

#-------------------------------------------------------------------------------------------
Close Test Submissions Graph window
    page should contain element     ${testsubmissions_graph_close}
    click on button                 ${testsubmissions_graph_close}
    sleep                           5


