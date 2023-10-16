*** Settings ***
Documentation   All the page objects and keywords of Student Detail Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hStudentDetailReport}                  xpath://div[@class='v-toolbar__title headline font-weight-bold']
${sdr_Student}                           css:input[aria-label='Student']
${sdr_Abhimanyu.}                        xpath://div[contains(text(),'Abhimanyu .')]//ancestor::a
${sdr_FromDate}                          css:input[aria-label='From Date']
${sdr_ToDate}                            css:input[aria-label='To Date']
${sdr_Program}                           css:input[aria-label='Program']
${sdr_opt_uni}                           xpath://div[contains(text(),'Uni')]//ancestor::a
${sdr_Attribute1}                        css:input[aria-label='Attribute 1']
${sdr_Attribute2}                        css:input[aria-label='Attribute 2']
${sdr_BatchGroup}                        css:input[aria-label='Batch Group']
${sdr_BirthFromDate}                     css:input[aria-label='Birth From Date']
${sdr_BirthToDate}                       css:input[aria-label='Birth To Date']
${sdr_FetchData}                         xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${sdr_th_StudentFirstName}               css:th[aria-label='Student First Name: Sorted ascending. Activate to sort descending.']
${sdr_th_StudentLastName}                css:th[aria-label='Student Last Name: Not sorted. Activate to sort ascending.']
${sdr_th_DateCreated}                    css:th[aria-label='Date Created: Not sorted. Activate to sort ascending.']
${sdr_th_BirthDate}                      css:th[aria-label='Birth Date: Not sorted. Activate to sort ascending.']
${sdr_th_EmailId}                        css:th[aria-label='Email Id: Not sorted. Activate to sort ascending.']
${sdr_th_PhoneNumber}                    css:th[aria-label='Phone Number: Not sorted. Activate to sort ascending.']
${sdr_th_level}                          css:th[aria-label='Level: Not sorted. Activate to sort ascending.']
${sdr_th_program}                        css:th[aria-label='Program: Not sorted. Activate to sort ascending.']
${sdr_th_BatchGroup}                     css:th[aria-label='Batch Group: Not sorted. Activate to sort ascending.']
${sdr_th_Attribute1}                     css:th[aria-label='Attribute1: Not sorted. Activate to sort ascending.']
${sdr_th_Attribute2}                     css:th[aria-label='Attribute2: Not sorted. Activate to sort ascending.']
${sdr_th_Coins}                          css:th[aria-label='Coins: Not sorted. Activate to sort ascending.']
${sdr_th_Progress%}                      css:th[aria-label='Progress%: Not sorted. Activate to sort ascending.']
${sdr_th_Attendance%}                    css:th[aria-label='Attendance%: Not sorted. Activate to sort ascending.']
${sdr_th_Assignments}                    css:th[aria-label='Assignments: Not sorted. Activate to sort ascending.']
${sdr_th_Tests}                          css:th[aria-label='Tests: Not sorted. Activate to sort ascending.']
${sdr_downloadReport}                    xpath://div[contains(text(),'download report')]//parent::a
${sdr_BacktoReports}                     xpath://div[contains(text(),'Back to reports')]//parent::button
