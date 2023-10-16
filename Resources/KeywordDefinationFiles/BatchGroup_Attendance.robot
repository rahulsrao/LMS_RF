*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Attendance_BatchGroup.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify BatchGroup page
    wait until element is visible                    ${BatchGroup_h}                 120
    page should contain element                      ${BatchGroup_h}
    page should contain element                      ${attendance_batchattendance}
    page should contain element                      ${BatchGroup_Select}
    page should contain element                      ${BatchGroup_AttendanceDate}
    page should contain element                      ${BatchGroup_Submit}
    page should contain element                      ${attendance_batchgroupreport}
    page should contain element                      ${attendance_batchreport}
    BatchGroup_Attendance.verify batchgroup attendance table
    close window
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    close window
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
    sleep                                   5

Select BatchGroup
    page should contain element                      ${batchgroup_select}
    click on button                                  ${batchgroup_select}
    page should contain element                      xpath:(//div[contains(text(),'${batchgroup}')])[1]

Select Attendence date
     input date                                       ${attendance_batchattendance}              ${Date1}

Verify BatchGroup Attendance Table
    page should contain element                      ${BatchGroup_Name_th}
    page should contain element                      ${BatchGroup_RollNumber_th}
    page should contain element                      ${BatchGroup_Attendance_th}

Select BatchGroup Date and Submit
    Select BatchGroup
    Select Attendence date
    click on button                                 ${BatchGroup_Submit}

Click on BatchGroup Report
    page should contain element                     ${attendance_batchgroupreport}
    click on button                                 ${attendance_batchgroupreport}
    sleep                                           5