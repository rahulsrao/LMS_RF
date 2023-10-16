*** Settings ***
Documentation   All the page objects and keywords of Student Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hStudentReport}                       xpath://div[@class='v-toolbar__title headline font-weight-bold']
${sr_Student}                           css:input[aria-label='Student']
${sr_FromDate}                          css:input[aria-label='From Date']
${sr_ToDate}                            css:input[aria-label='To Date']
${sr_ReferredbyStudentName}             css:input[aria-label='Referred by Student Name']
${sr_ReferredbyStudentEmail}            css:input[aria-label='Referred by Student Email']
${sr_ReferredbyStudentCode}             css:input[aria-label='Referred by Student Code']
${sr_ReferredbyStudentPhoneNumber}      css:input[aria-label='Referred by Student Phone Number']
${sr_ReferredFromDate}                  css:input[aria-label='Referred From Date']
${sr_ReferredToDate}                    css:input[aria-label='Referred To Date']
${sr_Program}                           css:input[aria-label='Program']
${sr_opt_uni}                           xpath://div[contains(text(),'Uni')]//ancestor::a
${sr_Attribute1}                        css:input[aria-label='Attribute 1']
${sr_Attribute2}                        css:input[aria-label='Attribute 2']
${sr_BatchGroup}                        css:input[aria-label='Batch Group']
${sr_BirthFromDate}                     css:input[aria-label='Birth From Date']
${sr_BirthToDate}                       css:input[aria-label='Birth To Date']
${sr_FetchData}                         xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${sr_th_StudentFirstName}               css:th[aria-label='Student First Name: Sorted ascending. Activate to sort descending.']
${sr_th_StudentLastName}                css:th[aria-label='Student Last Name: Not sorted. Activate to sort ascending.']
${sr_th_DateCreated}                    css:th[aria-label='Date Created: Not sorted. Activate to sort ascending.']
${sr_th_BirthDate}                      css:th[aria-label='Birth Date: Not sorted. Activate to sort ascending.']
${sr_th_EmailId}                        css:th[aria-label='Email Id: Not sorted. Activate to sort ascending.']
${sr_th_PhoneNumber}                    css:th[aria-label='Phone Number: Not sorted. Activate to sort ascending.']
${sr_th_level}                          css:th[aria-label='Level: Not sorted. Activate to sort ascending.']
${sr_th_program}                        css:th[aria-label='Program: Not sorted. Activate to sort ascending.']
${sr_th_BatchGroup}                     css:th[aria-label='Batch Group: Not sorted. Activate to sort ascending.']
${sr_th_Attribute1}                     css:th[aria-label='Attribute1: Not sorted. Activate to sort ascending.']
${sr_th_Attribute2}                     css:th[aria-label='Attribute2: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentFirstName}     css:th[aria-label='Referred by Student First Name: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentLastName}      css:th[aria-label='Referred by Student Last Name: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentEmailId}       css:th[aria-label='Referred by Student Email Id: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentPhone}         css:th[aria-label='Referred by Student Phone: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentLevel}         css:th[aria-label='Referred by Student Level: Not sorted. Activate to sort ascending.']
${sr_th_ReferredbyStudentReferralCode}  css:th[aria-label='Referred by Student Referral Code: Not sorted. Activate to sort ascending.']
${sr_th_ReferredonDate}                 css:th[aria-label='Referred on Date: Not sorted. Activate to sort ascending.']
${sr_downloadReport}                    xpath://div[contains(text(),'download report')]//parent::a
${sr_BacktoReports}                     xpath://div[contains(text(),'Back to reports')]//parent::button
