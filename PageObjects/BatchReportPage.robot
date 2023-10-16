*** Settings ***
Documentation   All the page objects and keywords of Reports Page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hBatchReport}                     xpath://div[contains(text(),'Batch Report')]
${btn_Organizations}                css:input[aria-label='Organizations']
${br_Refresh}                       xpath://i[contains(text(),'refresh')]//parent::div
${opt_LMS}                          xpath://div[contains(text(),'LMS')]//ancestor::a
${btn_Terms}                        css:input[aria-label='Terms']
${opt_SPRING2020}                   xpath://div[contains(text(),'SPRING 2020')]//ancestor::a
${btn_Level}                        css:input[aria-label='Level']
${opt_Level7}                       xpath://div[contains(text(),'Level 7')]//ancestor::a
${BR_Course}                        css:input[aria-label='Course']
${opt_ART}                          xpath://div[@class='v-list__tile__title' and text()='ART']//ancestor::a
${btn_BatchType}                    css:input[aria-label='Batch Type']
${opt_BR_Active}                    xpath://div[contains(text(),'Active')]//ancestor::a
${opt_BR_Inactive}                  xpath:(//div[contains(text(),'Inactive')]//ancestor::a)[1]
${btn_Batch}                        css:input[aria-label='Batch']
${opt_ARTBATCHONE}                  xpath://div[contains(text(),'ART BATCH ONE')]//ancestor::a
${BR_StartDate}                     css:input[aria-label='Start Date']
${BR_EndDate}                       css:input[aria-label='End Date']
${btn_FetchData}                    xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${th_BatchName}                     css:th[aria-label='Batch Name: Sorted ascending. Activate to sort descending.']
${th_Term}                          css:th[aria-label='Term: Not sorted. Activate to sort ascending.']
${th_Course}                        css:th[aria-label='Course: Not sorted. Activate to sort ascending.']
${th_StartDate}                     css:th[aria-label='Start Date: Not sorted. Activate to sort ascending.']
${th_EndDate}                       css:th[aria-label='End Date: Not sorted. Activate to sort ascending.']
${th_Status}                        css:th[aria-label='Status: Not sorted. Activate to sort ascending.']
${th_Students}                      css:th[aria-label='Students: Not sorted. Activate to sort ascending.']
${th_StudentName}                   css:th[aria-label='Student Name: Not sorted. Activate to sort ascending.']
${th_StudentContactNumber}          css:th[aria-label='Student Contact Number: Not sorted. Activate to sort ascending.']
${th_StudentParentsNumber}          css:th[aria-label='Student Parents Number: Not sorted. Activate to sort ascending.']
${th_Progressclassavg}              css:th[aria-label='Progress class avg(%): Not sorted. Activate to sort ascending.']
${th_ProgressHighest}               css:th[aria-label='Progress Highest(%): Not sorted. Activate to sort ascending.']
${th_ConferencesDone}               css:th[aria-label='Conferences Done: Not sorted. Activate to sort ascending.']
${th_DiscussionDone}                css:th[aria-label='Discussion Done: Not sorted. Activate to sort ascending.']
${th_AttendanceDays}                css:th[aria-label='Attendance Days: Not sorted. Activate to sort ascending.']
${th_Attendance}                    css:th[aria-label='Attendance(%): Not sorted. Activate to sort ascending.']
${BR_downloadReport}                xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                 xpath://div[contains(text(),'Back to reports')]//parent::button