*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentDetailReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Student Detail Report page
    [Documentation]  This test case verifies Student Detail Report page
    [Tags]  Report
    click element                       ${studentdetailreport}
    wait until element is visible       ${hStudentDetailReport}                       120
    page should contain element         ${hStudentDetailReport}
    page should contain element         ${sdr_student}
    click on button                     ${sdr_student}
    wait until element is visible       ${sdr_abhimanyu.}
    page should contain element         ${sdr_abhimanyu.}
    click on button                     ${sdr_abhimanyu.}
    wait until element is visible       ${sdr_fromdate}
    page should contain element         ${sdr_FromDate}
    page should contain element         ${sdr_ToDate}
    page should contain element         ${sdr_program}
    click on button                     ${sdr_program}
    wait until element is visible       ${sdr_opt_uni}                              120
    page should contain element         ${sdr_opt_uni}
    Press Keys                          ${hStudentDetailReport}                     ESC
    wait until element is visible       ${sdr_attribute1}
    page should contain element         ${sdr_Attribute2}
    page should contain element         ${sdr_batchgroup}
    page should contain element         ${sdr_birthfromdate}
    page should contain element         ${sdr_BirthToDate}
    page should contain element         ${sdr_fetchdata}
    click on button                     ${sdr_fetchdata}
    wait until element is visible       ${sdr_fetchdata}                            120
    wait until element is visible       ${sdr_th_studentfirstname}                   120
    page should contain element         ${sdr_th_studentfirstname}
    page should contain element         ${sdr_th_StudentLastName}
    page should contain element         ${sdr_th_DateCreated}
    page should contain element         ${sdr_th_birthdate}
    page should contain element         ${sdr_th_emailid}
    page should contain element         ${sdr_th_phonenumber}
    page should contain element         ${sdr_th_level}
    page should contain element         ${sdr_th_program}
    page should contain element         ${sdr_th_batchgroup}
    page should contain element         ${sdr_th_Attribute1}
    page should contain element         ${sdr_th_Attribute2}
    scroll element into view            ${sdr_th_tests}
    page should contain element         ${sdr_th_Coins}
    page should contain element         ${sdr_th_Progress%}
    page should contain element         ${sdr_th_Attendance%}
    page should contain element         ${sdr_th_Assignments}
    page should contain element         ${sdr_th_tests}

#-------------------------------------------------------------------------------------------
verifyStudent Detail Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                           ${studentN}            ${Program}          ${BatchGrp}
    click element                                                         ${StudentDetailReport}
    wait until element is visible                                         ${hStudentDetailReport}              120
    page should contain element                                           ${hStudentDetailReport}
    StudentDetailReportPage.Select a Student                              ${studentN}
    page should contain element                                           ${sdr_FromDate}
    page should contain element                                           ${sdr_ToDate}
    StudentDetailReportPage.Select a Program                              ${Program}
    page should contain element                                           ${sdr_attribute1}
    page should contain element                                           ${sdr_Attribute2}
    StudentDetailReportPage.Select a BatchGroup                           ${BatchGrp}
    page should contain element                                           ${sdr_birthfromdate}
    page should contain element                                           ${sdr_birthtodate}
    StudentDetailReportPage.Click on Fetch Data
    StudentDetailReportPage.Verify Student Detail Report Table
    StudentDetailReportPage.verify download Student Detail Report

#-------------------------------------------------------------------------------------------
#                               Student
#-------------------------------------------------------------------------------------------
Click on Student
    page should contain element         ${sdr_student}
    click on button                     ${sdr_student}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Student
    [Arguments]                         ${Opt_Student}
    StudentDetailReportPage.Click on Student
    input text                          ${sdr_student}                 ${Opt_Student}
    wait until element is visible       xpath:(//span[contains(text(),'${Opt_Student}')])[1]//ancestor::a       120
    page should contain element         xpath:(//span[contains(text(),'${Opt_Student}')])[1]//ancestor::a
    click on button                     xpath:(//span[contains(text(),'${Opt_Student}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                               Program
#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element         ${sdr_Program}
    click on button                     ${sdr_Program}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${Opt_Program}
    StudentDetailReportPage.Click on Program
    page should contain element         xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Group
#-------------------------------------------------------------------------------------------
Click on Batch Group
    page should contain element         ${sdr_batchgroup}
    click on button                     ${sdr_batchgroup}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${Opt_batchgroup}
    StudentDetailReportPage.Click on Batch Group
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    Press Keys                          ${hStudentDetailReport}             ESC

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${sdr_FetchData}
    click on button                     ${sdr_FetchData}
    wait until element is visible       ${sdr_FetchData}            120

#-------------------------------------------------------------------------------------------
#                                     Student Report Table
#-------------------------------------------------------------------------------------------
Verify Student Detail Report Table
    wait until element is visible       ${sdr_th_studentfirstname}                   120
    page should contain element         ${sdr_th_studentfirstname}
    page should contain element         ${sdr_th_StudentLastName}
    page should contain element         ${sdr_th_DateCreated}
    page should contain element         ${sdr_th_birthdate}
    page should contain element         ${sdr_th_emailid}
    page should contain element         ${sdr_th_phonenumber}
    page should contain element         ${sdr_th_level}
    page should contain element         ${sdr_th_program}
    page should contain element         ${sdr_th_batchgroup}
    page should contain element         ${sdr_th_Attribute1}
    page should contain element         ${sdr_th_Attribute2}
    scroll element into view            ${sdr_th_tests}
    page should contain element         ${sdr_th_Coins}
    page should contain element         ${sdr_th_Progress%}
    page should contain element         ${sdr_th_Attendance%}
    page should contain element         ${sdr_th_Assignments}
    page should contain element         ${sdr_th_tests}

#-------------------------------------------------------------------------------------------
verify download Student Detail Report
    [Documentation]  This test case verifies that Student Detail Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${sdr_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${sdr_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${sdr_backtoreports}
    click on button                     ${sdr_backtoreports}
    sleep                               5