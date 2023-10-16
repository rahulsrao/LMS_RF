*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         String

*** Variables ***
${BatchGroup_h}                                             xpath://div[contains(text(),'BatchGroup Attendance')]
${BatchGroup_Select}                                        xpath://input[@aria-label='Attendance Date']/preceding::input
${BatchGroup_AttendanceDate}                                css:input[aria-label='Attendance Date']
${BatchGroup_Submit}                                        xpath://div[contains(text(),'SUBMIT')]/parent::button
${Attendance_BatchGroupReport}                              xpath://div[contains(text(),'BatchGroup Report')]/parent::button
${Attendance_BatchReport}                                   xpath://div[contains(text(),'Batch Report')]/parent::button
${Attendance_BatchAttendance}                               xpath://div[contains(text(),'Batch Attendance')]/parent::button
${BatchGroup_Name_th}                                       xpath://th[@aria-label='Name: Sorted ascending. Activate to sort descending.' or @aria-label='Name: Sorted descending. Activate to remove sorting.']
${BatchGroup_RollNumber_th}                                 xpath://th[@aria-label='Roll Number: Not sorted. Activate to sort ascending.' or @aria-label='Roll Number: Sorted descending. Activate to remove sorting.' ]
${BatchGroup_Attendance_th}                                 xpath://th[@aria-label='Attendance: Not sorted.' ]




