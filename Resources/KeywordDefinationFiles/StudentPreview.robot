*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentPreview.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify student Preview page
    [Arguments]                                                     ${BatchName}                    ${studentname}
    StudentPreview.Verify Student Name in Student Preview page      ${studentname}
    go back
#-------------------------------------------------------------------------------------------
verify student Preview page of Student
    [Arguments]                                                     ${BatchName}                    ${studentname}
    wait until element is visible                                   ${hstudentpreview}
    page should contain element                                     ${hstudentpreview}
    StudentPreview.Select a Batch                                   ${BatchName}
    StudentPreview.Search a Student                                 ${studentname}
    StudentPreview.Click on Student in the list                     ${studentname}
    StudentPreview.Verify Student Name in Student Preview page      ${studentname}
    go back
#-------------------------------------------------------------------------------------------
Select a Batch
    [Arguments]                             ${Batchname}
    StudentPreview.Click on Select Batch
    wait until element is visible           xpath://div[contains(text(),'${Batchname}')]//ancestor::a                  120
    click on button                         xpath://div[contains(text(),'${Batchname}')]//ancestor::a
    sleep                                   5
    press keys                              ${selectbatch}                          ESC
#-------------------------------------------------------------------------------------------
Click on Select Batch
    page should contain element             ${selectbatch}
    click on button                         ${selectbatch}
#-------------------------------------------------------------------------------------------
Search a Student
    [Arguments]                             ${studentname}
    page should contain element             ${searchname}
    Input Text                              ${searchname}                   ${studentname}
    sleep                                   5
#-------------------------------------------------------------------------------------------
Click on Student in the list
    [Arguments]                             ${studentname}
    page should contain element             css:button[title='${studentname}']
    wait until element is visible           css:button[title='${studentname}']                   120
    click element                           css:button[title='${studentname}']
    sleep                                   5
#-------------------------------------------------------------------------------------------
Verify Student Name in Student Preview page
    [Arguments]                                         ${studentname}
    wait until Element is present in the page           xpath://div[text()='${studentname}' and @class='v-subheader title white--text theme--light']
    page should contain element                         xpath://div[text()='${studentname}' and @class='v-subheader title white--text theme--light']
