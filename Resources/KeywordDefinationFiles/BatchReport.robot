*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/BatchReport.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Select Batch
    click on button                                  ${attendance_batch}
    sleep                                            5
    page should contain element                      xpath:(//div[contains(text(),'${batch1}')])[1]
    click on button                                  xpath:(//div[contains(text(),'${batch1}')])[1]
    Press Keys                                       ${batchreport_fromdate}                      ESC

Select From Date
    input date                                       ${batchreport_fromdate}                      ${date1}
    Press Keys                                       ${batchreport_todate}                        ESC

Select To Date
    input date                                       ${batchreport_todate}                        ${date2}
    Press Keys                                       ${batchreport_fromdate}                      ESC
    sleep                                            3

Verify Attence Table
    wait until element is visible                    ${batchreport_student_th}                  120
    page should contain element                      ${batchreport_student_th}
    page should contain element                      ${batchreport_total_th}
    page should contain element                      ${batchreport_present%_th}
    page should contain element                      ${batchreport_batchaverage}
    ${average}=         Get Text                     ${batchreport_batchaverage}
    @{batchaverage} =   split string                 ${average}           :
    printvalue                                       The Batch Average of ${batch1} is ${batchaverage}[1]

Verify Download Batch Report
    wait until page contains element                ${BatchReport_DownloadReport}
    page should contain element                     ${BatchReport_DownloadReport}
    Empty Directory                                 C:/Users/Rahul/Downloads/
    click on button                                 ${BatchReport_DownloadReport}
    sleep                                           10
    Download should be done                         C:/Users/Rahul/Downloads/
    Empty Directory                                 C:/Users/Rahul/Downloads/

Click on Go Back To Take Attedence
    page should contain element                     ${batchreport_gobacktotakeattendance}
    click on button                                 ${batchreport_gobacktotakeattendance}
    sleep                                           10

Verify Batch Report
    page should contain element                      ${batchreport_gobacktotakeattendance}
    page should contain element                      ${attendance_batch}
    select batch
    select from date
    select to date
    BatchReport.verify attence table
    BatchReport.verify download batch report