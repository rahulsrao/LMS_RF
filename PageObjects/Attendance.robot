*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         String
Library          ../Generic/BaseClass.py
Library          ../Generic/DashBoard.py
Resource          ../PageObjects/TopMenu.robot

*** Variables ***
${Attendance_BatchGroup_h}                                  xpath://div[contains(text(),'BatchGroup Attendance')]
${Attendance_BatchGroup}                                    xpath://input[@aria-label='Attendance Date']//preceding::input
${Attendance_AttendanceDate}                                css:input[aria-label='Attendance Date']
${Attendance_Submit}                                        xpath://div[contains(text(),'SUBMIT')]/parent::button
${Attendance_BatchGroupReport}                              xpath://div[contains(text(),'BatchGroup Report')]/parent::button
${Attendance_BatchReport}                                   xpath://div[contains(text(),'Batch Report')]/parent::button
${Attendance_BatchAttendance}                               xpath://div[contains(text(),'Batch Attendance')]/parent::button
${Attendance_Name_th}                                       xpath://th[@aria-label='Name: Sorted ascending. Activate to sort descending.' or @aria-label='Name: Sorted descending. Activate to remove sorting.']
${Attendance_RollNumber_th}                                 xpath://th[@aria-label='Roll Number: Not sorted. Activate to sort ascending.' or @aria-label='Roll Number: Sorted descending. Activate to remove sorting.' ]
${Attendance_Attendance_th}                                 xpath://th[@aria-label='Attendance: Not sorted.' ]

#Batch Attendance
${Attendance_Batch_h}                                       xpath://div[contains(text(),'Batch Attendance')]
${Attendance_Batch}                                         css:input[aria-label='Select']
${Attendance_SelectModule}                                  css:input[aria-label='Select Module']
${Attendance_BatchGroupAttendance}                          xpath://div[normalize-space()='BatchGroup Attendance']/parent::button

#BatchGroup Report
${BatchGroupReport_GoBackToTakeAttendance}                  xpath://a[contains(normalize-space(),'Go Back To Take Attendance')]
${BatchGroupReport_BatchGroup}                              xpath://input[@aria-label='From Date']//preceding::input
${BatchGroupReport_DownloadReport}                          xpath://a[contains(normalize-space(),'Download Report')]
${BatchGroupReport_FromDate}                                css:input[aria-label='From Date']
${BatchGroupReport_ToDate}                                  css:input[aria-label='To Date']
${BatchGroupReport_Student_th}                              xpath://th[normalize-space()='Student']
${BatchGroupReport_Total_th}                                xpath://th[normalize-space()='Total']
${BatchGroupReport_Present%_th}                             xpath://th[normalize-space()='Present %']
${BatchGroupReport_BatchAverage}                            xpath://span[contains(normalize-space(),'Batch Average:')]


#Batch Report
${BatchReport_GoBackToTakeAttendance}                       xpath://a[contains(normalize-space(),'Go Back To Take Attedence')]
${BatchReport_FromDate}                                     css:input[aria-label='From Date']
${BatchReport_ToDate}                                       css:input[aria-label='To Date']
${BatchReport_DownloadReport}                               xpath://a[contains(normalize-space(),'Download Report')]
${BatchReport_Student_th}                                   xpath://th[normalize-space()='Student']
${BatchReport_Total_th}                                     xpath://th[normalize-space()='Total']
${BatchReport_Present%_th}                                  xpath://th[normalize-space()='Present %']
${BatchReport_BatchAverage}                                 xpath://span[contains(normalize-space(),'Batch Average:')]
