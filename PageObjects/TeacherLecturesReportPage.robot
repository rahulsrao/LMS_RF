*** Settings ***
Documentation   All the page objects and keywords of Teacher Lectures Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hTeacherLecturesReport}                  xpath://div[@class='v-toolbar__title headline font-weight-bold']
${tlr_Teacher}                             css:input[aria-label='Teacher']
${tlr_opt_GuruDronacharya}                 xpath://div[contains(text(),'Guru Dronacharya')]//ancestor::a
${tlr_Course}                              css:input[aria-label='Course']
${tlr_opt_ART}                             xpath:(//div[@class='v-list__tile__title' and contains(text(),'ART')]//ancestor::a)[6]
${tlr_BatchType}                           css:input[aria-label='Batch Type']
${tlr_Active}                              xpath://div[contains(text(),'Active')]//ancestor::a
${tlr_Inactive}                            xpath://div[contains(text(),'Inactive')]//ancestor::a
${tlr_Batch}                               css:input[aria-label='Batch']
${tlr_opt_ARTBATCHTHREE}                   xpath://div[contains(text(),'ART BATCH THREE')]//ancestor::a
${tlr_StartDate}                           css:input[aria-label='Start Date']
${tlr_EndDate}                             css:input[aria-label='End Date']
${tlr_FetchData}                           xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${tlr_th_BatchName}                        css:th[aria-label='Batch Name: Sorted ascending. Activate to sort descending.']
${tlr_th_Course}                           css:th[aria-label='Course: Not sorted. Activate to sort ascending.']
${tlr_th_Module}                           css:th[aria-label='Module: Not sorted. Activate to sort ascending.']
${tlr_th_NumberofLectures}                 css:th[aria-label='Number of Lectures: Not sorted. Activate to sort ascending.']
${tlr_TotalLectures}                       css:div[class='flex md12'] div b
${BR_downloadReport}                       xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                        xpath://div[contains(text(),'Back to reports')]//parent::button