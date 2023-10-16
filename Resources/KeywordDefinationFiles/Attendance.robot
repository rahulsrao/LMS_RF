*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Attendance.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify BatchGroup Attendance page
    [Arguments]                                      ${batchgroup}                      ${attendancedate}
    click on button                                  ${topmenu_attendance}
    sleep                                            5
    wait until element is visible                    ${attendance_batchgroup_h}                 20
    page should contain element                      ${attendance_batchgroup_h}
    page should contain element                      ${attendance_batchattendance}
    page should contain element                      ${attendance_batchgroup}
    page should contain element                      ${attendance_attendancedate}
    page should contain element                      ${attendance_submit}
    page should contain element                      ${attendance_batchgroupreport}
    page should contain element                      ${attendance_batchreport}
    click on button                                  ${attendance_batchgroup}
    wait until element is visible                    xpath:(//div[contains(text(),'${batchgroup}')])[1]         120
    page should contain element                      xpath:(//div[contains(text(),'${batchgroup}')])[1]
    input date                                       ${Attendance_AttendanceDate}              ${attendancedate}
    click on button                                  ${attendance_submit}
    page should contain element                      ${attendance_name_th}
    page should contain element                      ${attendance_rollnumber_th}
    page should contain element                      ${attendance_attendance_th}

Verify Batch Attendance page
    [Arguments]                                      ${batch}                      ${attendancedate}           ${module}
    click on button                                  ${topmenu_attendance}
    sleep                                            5
    wait until element is visible                    ${attendance_batchattendance}                 20
    page should contain element                      ${attendance_batchattendance}
    click on button                                  ${attendance_batchattendance}
    sleep                                            5
    wait until element is visible                    ${attendance_batch_h}                        20
    page should contain element                      ${attendance_batch_h}
    page should contain element                      ${attendance_batchgroupattendance}
    page should contain element                      ${attendance_batch}
    page should contain element                      ${attendance_selectmodule}
    page should contain element                      ${attendance_attendancedate}
    page should contain element                      ${attendance_submit}
    page should contain element                      ${attendance_batchgroupreport}
    click on button                                  ${attendance_batch}
    sleep                                            5
    wait until element is visible                    xpath:(//div[contains(text(),'${batch}')])[1]                  120
    page should contain element                      xpath:(//div[contains(text(),'${batch}')])[1]
    click on button                                  xpath:(//div[contains(text(),'${batch}')])[1]
    Press Keys                                       ${attendance_attendancedate}             ESC
    click on button                                  ${attendance_selectmodule}
    wait until element is visible                    xpath:(//div[contains(text(),'${module}')])[1]                 120
    page should contain element                      xpath:(//div[contains(text(),'${module}')])[1]
    click on button                                  xpath:(//div[contains(text(),'${module}')])[1]
    Press Keys                                       ${attendance_batch}                      ESC
    input date                                       ${Attendance_AttendanceDate}              ${attendancedate}
    click on button                                  ${attendance_submit}
    page should contain element                      ${attendance_name_th}
    page should contain element                      ${attendance_rollnumber_th}
    page should contain element                      ${attendance_attendance_th}

Verify BatchGroup Report
    [Arguments]                                      ${batchgroup}                      ${fromdate}           ${enddate}
    click on button                                  ${topmenu_attendance}
    sleep                                            5
    wait until element is visible                    ${attendance_batchgroupreport}                 20
    page should contain element                      ${attendance_batchgroupreport}
    click on button                                  ${attendance_batchgroupreport}
    sleep                                            5
    page should contain element                      ${batchgroupreport_gobacktotakeattendance}
    page should contain element                      ${BatchGroupReport_BatchGroup}
    click on button                                  ${BatchGroupReport_BatchGroup}
    sleep                                            3
    wait until element is visible                    xpath:(//div[contains(text(),'${batchgroup}')])[1]             120
    page should contain element                      xpath:(//div[contains(text(),'${batchgroup}')])[1]
    click on button                                  xpath:(//div[contains(text(),'${batchgroup}')])[1]
    Press Keys                                       ${batchgroupreport_fromdate}                      ESC
    input date                                       ${batchgroupreport_fromdate}                      ${fromdate}
    Press Keys                                       ${BatchGroupReport_BatchGroup}                         ESC
    input date                                       ${batchgroupreport_todate}                        ${enddate}
    Press Keys                                       ${BatchGroupReport_BatchGroup}                      ESC
    sleep                                            3
    page should contain element                      ${batchgroupreport_student_th}
    page should contain element                      ${batchgroupreport_total_th}
    page should contain element                      ${batchgroupreport_present%_th}
    page should contain element                      ${batchgroupreport_batchaverage}
    ${average}=         Get Text                     ${batchgroupreport_batchaverage}
    @{batchaverage} =   split string                 ${average}           :
    printvalue                                       The Batch Average of ${batchgroup} is ${batchaverage}[1]
    page should contain element                      ${batchgroupreport_downloadreport}
    Empty Directory                                  C:/Users/Rahul/Downloads/
    click on button                                  ${batchgroupreport_downloadreport}
    sleep                                            10
    Download should be done                          C:/Users/Rahul/Downloads/
    Empty Directory                                  C:/Users/Rahul/Downloads/
    click on button                                  ${batchgroupreport_gobacktotakeattendance}
    sleep                                            4
    page should contain element                      ${attendance_batchreport}

Verify Batch Report
    [Arguments]                                      ${batch}                      ${fromdate}           ${enddate}
    click on button                                  ${topmenu_attendance}
    sleep                                            5
    wait until element is visible                    ${attendance_batchreport}                 20
    page should contain element                      ${attendance_batchreport}
    click on button                                  ${attendance_batchreport}
    sleep                                            5
    page should contain element                      ${batchreport_gobacktotakeattendance}
    page should contain element                      ${attendance_batch}
    click on button                                  ${attendance_batch}
    sleep                                            5
    page should contain element                      xpath:(//div[contains(text(),'${batch}')])[1]
    click on button                                  xpath:(//div[contains(text(),'${batch}')])[1]
    Press Keys                                       ${batchreport_fromdate}                      ESC
    input date                                       ${batchreport_fromdate}                      ${fromdate}
    Press Keys                                       ${attendance_batch}                          ESC
    input date                                       ${batchreport_todate}                        ${enddate}
    Press Keys                                       ${attendance_batch}                          ESC
    sleep                                            3
    page should contain element                      ${batchreport_student_th}
    page should contain element                      ${batchreport_total_th}
    page should contain element                      ${batchreport_present%_th}
    page should contain element                      ${batchreport_batchaverage}
    ${average}=         Get Text                     ${batchreport_batchaverage}
    @{batchaverage} =   split string                 ${average}           :
    printvalue                                       The Batch Average of ${batch} is ${batchaverage}[1]
    page should contain element                      ${batchgroupreport_downloadreport}
    Empty Directory                                  C:/Users/Rahul/Downloads/
    click on button                                  ${batchgroupreport_downloadreport}
    sleep                                            10
    Download should be done                          C:/Users/Rahul/Downloads/
    Empty Directory                                  C:/Users/Rahul/Downloads/
    click on button                                  ${batchreport_gobacktotakeattendance}
    sleep                                            5
    page should contain element                      ${attendance_batchreport}