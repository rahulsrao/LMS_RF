*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentReportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Student Report page
    [Documentation]  This test case verifies Student Report page
    [Tags]  Report
    click element                       ${studentreport}
    wait until element is visible       ${hStudentReport}                       120
    page should contain element         ${hStudentReport}
    page should contain element         ${sr_student}
    page should contain element         ${sr_fromdate}
    page should contain element         ${sr_ToDate}
    page should contain element         ${sr_referredbystudentname}
    page should contain element         ${sr_ReferredbyStudentEmail}
    page should contain element         ${sr_referredbystudentcode}
    page should contain element         ${sr_ReferredbyStudentPhoneNumber}
    page should contain element         ${sr_referredfromdate}
    page should contain element         ${sr_ReferredToDate}
    page should contain element         ${sr_program}
    click on button                     ${sr_program}
    wait until element is visible       ${sr_opt_uni}                              120
    page should contain element         ${sr_opt_uni}
    click on button                     ${sr_opt_uni}
    wait until element is visible       ${sr_Attribute1}
    page should contain element         ${sr_attribute1}
    page should contain element         ${sr_Attribute2}
    page should contain element         ${sr_batchgroup}
    page should contain element         ${sr_birthfromdate}
    page should contain element         ${sr_BirthToDate}
    page should contain element         ${sr_fetchdata}
    click on button                     ${sr_fetchdata}
    wait until element is visible       ${sr_fetchdata}                            120
    wait until element is visible       ${sr_th_studentfirstname}                  120
    page should contain element         ${sr_th_studentfirstname}
    page should contain element         ${sr_th_StudentLastName}
    page should contain element         ${sr_th_DateCreated}
    page should contain element         ${sr_th_birthdate}
    page should contain element         ${sr_th_emailid}
    page should contain element         ${sr_th_phonenumber}
    page should contain element         ${sr_th_level}
    page should contain element         ${sr_th_program}
    page should contain element         ${sr_th_batchgroup}
    page should contain element         ${sr_th_Attribute1}
    scroll element into view            ${sr_th_ReferredbyStudentLevel}
    page should contain element         ${sr_th_Attribute2}
    page should contain element         ${sr_th_referredbystudentfirstname}
    page should contain element         ${sr_th_referredbystudentlastname}
    page should contain element         ${sr_referredbystudentemail}
    page should contain element         ${sr_th_referredbystudentphone}
    page should contain element         ${sr_th_referredbystudentlevel}
    scroll element into view            ${sr_th_referredondate}
    page should contain element         ${sr_th_referredbystudentreferralcode}
    page should contain element         ${sr_th_ReferredonDate}

#-------------------------------------------------------------------------------------------
verify Student Report page of Teacher User
    [Documentation]  This test case verifies Batch Report page
    [Tags]  Report
    [Arguments]                                                           ${Program}                 ${BatchGrp}
    click element                                                         ${StudentReport}
    wait until element is visible                                         ${hStudentReport}              120
    page should contain element                                           ${hStudentReport}
    page should contain element                                           ${sr_student}
    page should contain element                                           ${sr_fromdate}
    page should contain element                                           ${sr_ToDate}
    page should contain element                                           ${sr_referredbystudentname}
    page should contain element                                           ${sr_ReferredbyStudentEmail}
    page should contain element                                           ${sr_referredbystudentcode}
    page should contain element                                           ${sr_ReferredbyStudentPhoneNumber}
    page should contain element                                           ${sr_referredfromdate}
    page should contain element                                           ${sr_ReferredToDate}
    StudentReportPage.Select a Program                                    ${Program}
    page should contain element                                           ${sr_attribute1}
    page should contain element                                           ${sr_Attribute2}
    StudentReportPage.Select a BatchGroup                                 ${BatchGrp}
    page should contain element                                           ${sr_birthfromdate}
    page should contain element                                           ${sr_BirthToDate}
    StudentReportPage.Click on Fetch Data
    StudentReportPage.Verify Student Report Table
    StudentReportPage.verify download Student Report

#-------------------------------------------------------------------------------------------
#                               Program
#-------------------------------------------------------------------------------------------
Click on Program
    page should contain element         ${sr_program}
    click on button                     ${sr_program}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a Program
    [Arguments]                         ${Opt_Program}
    StudentReportPage.Click on Program
    page should contain element         xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a
    click on button                     xpath:(//div[contains(text(),'${Opt_Program}')])[1]//ancestor::a

#-------------------------------------------------------------------------------------------
#                                       Batch Group
#-------------------------------------------------------------------------------------------
Click on Batch Group
    page should contain element         ${sr_batchgroup}
    click on button                     ${sr_batchgroup}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select a BatchGroup
    [Arguments]                         ${Opt_batchgroup}
    StudentReportPage.Click on Batch Group
    scroll element into view            xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    page should contain element         xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    click on button                     xpath://div[@class='v-list__tile__title' and text()='${Opt_batchgroup}']//ancestor::a
    Press Keys                          ${hStudentReport}             ESC

#-------------------------------------------------------------------------------------------
Click on Fetch Data
    page should contain element         ${sr_FetchData}
    click on button                     ${sr_FetchData}
    wait until element is visible       ${sr_FetchData}            120

#-------------------------------------------------------------------------------------------
#                                     Student Report Table
#-------------------------------------------------------------------------------------------
Verify Student Report Table
    wait until element is visible       ${sr_th_studentfirstname}                  120
    page should contain element         ${sr_th_studentfirstname}
    page should contain element         ${sr_th_StudentLastName}
    page should contain element         ${sr_th_DateCreated}
    page should contain element         ${sr_th_birthdate}
    page should contain element         ${sr_th_emailid}
    page should contain element         ${sr_th_phonenumber}
    page should contain element         ${sr_th_level}
    page should contain element         ${sr_th_program}
    page should contain element         ${sr_th_batchgroup}
    page should contain element         ${sr_th_Attribute1}
    scroll element into view            ${sr_th_ReferredbyStudentLevel}
    page should contain element         ${sr_th_Attribute2}
    page should contain element         ${sr_th_referredbystudentfirstname}
    page should contain element         ${sr_th_referredbystudentlastname}
    page should contain element         ${sr_referredbystudentemail}
    page should contain element         ${sr_th_referredbystudentphone}
    page should contain element         ${sr_th_referredbystudentlevel}
    scroll element into view            ${sr_th_referredondate}
    page should contain element         ${sr_th_referredbystudentreferralcode}
    page should contain element         ${sr_th_ReferredonDate}
#-------------------------------------------------------------------------------------------
verify download Student Report
    [Documentation]  This test case verifies that Student Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${sr_downloadreport}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${sr_downloadreport}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/
    page should contain element         ${sr_backtoreports}
    click on button                     ${sr_backtoreports}