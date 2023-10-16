*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Library         String

*** Variables ***
#${BatchReport_GoBackToTakeAttendance}                       xpath://a[contains(normalize-space(),'Go Back To Take Attedence')]
${BatchReport_GoBackToTakeAttendance}                       xpath://i[normalize-space()='west']
${Attendance_Batch}                                         css:input[aria-label='Select']
${BatchReport_FromDate}                                     css:input[aria-label='From Date']
${BatchReport_ToDate}                                       css:input[aria-label='To Date']
${BatchReport_DownloadReport}                               xpath://a[contains(normalize-space(),'Download Report')]
${BatchReport_Student_th}                                   xpath://th[normalize-space()='Student']
${BatchReport_Total_th}                                     xpath://th[normalize-space()='Total']
${BatchReport_Present%_th}                                  xpath://th[normalize-space()='Present %']
${BatchReport_BatchAverage}                                 xpath://span[contains(normalize-space(),'Batch Average:')]
