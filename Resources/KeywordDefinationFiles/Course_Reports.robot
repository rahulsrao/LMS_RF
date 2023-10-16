*** Settings ***
Documentation   All the keywords of Question Report Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Course_Reports.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Click on Question Report
    wait until page contains element        ${reports_questionreport}
    page should contain element             ${reports_questionreport}
    click on button                         ${reports_questionreport}
    sleep                                   5

#-------------------------------------------------------------------------------------------
Click on Attendance Report
    page should contain element             ${reports_attendancereport}
    click on button                         ${reports_attendancereport}
    sleep                                   3
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[2]
    sleep                                   5
#-------------------------------------------------------------------------------------------
Verify Course Report
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    sleep                                   5
    wait until page contains element       ${reports_h}
    page should contain element            ${reports_h}
    page should contain element            ${reports_questionreport}
    page should contain element            ${reports_assignmentsreport}
    page should contain element            ${reports_assignmentsreport_download}
    page should contain element            ${reports_attendancereport}
#-------------------------------------------------------------------------------------------
Verify Batch Report Page
    [Arguments]                                 ${batch}
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[1]
    sleep                                       5
    wait until Element is present in the page   xpath://div[contains(text(),'Reports - ${batch}')]
    page should contain element                 xpath://div[contains(text(),'Reports - ${batch}')]
    page should contain element                 ${reports_questionreport}
#-------------------------------------------------------------------------------------------
verify download Assignments Report
    [Documentation]  This test case verifies that Assignments Report successfully downloaded
    [Tags]           Report SmokeTest
    page should contain element         ${reports_assignmentsreport}
    page should contain element         ${reports_assignmentsreport_download}
    Empty Directory                     C:/Users/Rahul/Downloads/
    click on button                     ${reports_assignmentsreport_download}
    sleep                               10
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/