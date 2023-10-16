*** Settings ***
Documentation   All the page objects and keywords of Course Report page
Library         SeleniumLibrary
Library         OperatingSystem
Library         ../Generic/BaseClass.py
Resource        Generic.robot
Resource        ReportsPage.robot

*** Variables ***
${hCourseReport}                    xpath://div[contains(text(),'Course Report')]
${btn_Levels}                       css:input[aria-label='Levels']
${opt_Level7}                       xpath://div[contains(text(),'Level 7')]//ancestor::a
${BR_Course}                        css:input[aria-label='Course']
${opt_ART}                          xpath://div[@class='v-list__tile__title' and text()='ART']//ancestor::a
${btn_FetchData}                    xpath://div[contains(text(),'Fetch Data')]//ancestor::button
${th_CourseName}                    css:th[aria-label='Course Name: Sorted ascending. Activate to sort descending.']
${th_CourseLevel}                   css:th[aria-label='Course Level: Not sorted. Activate to sort ascending.']
${th_Modules}                       css:th[aria-label='Modules: Not sorted. Activate to sort ascending.']
${th_Concepts}                      css:th[aria-label='Concepts: Not sorted. Activate to sort ascending.']
${th_Pages}                         css:th[aria-label='Pages: Not sorted. Activate to sort ascending.']
${th_Videos}                        css:th[aria-label='Videos: Not sorted. Activate to sort ascending.']
${th_Collections}                   css:th[aria-label='Collections: Not sorted. Activate to sort ascending.']
${th_flashCard}                     css:th[aria-label='Flash Cards: Not sorted. Activate to sort ascending.']
${th_Questions}                     css:th[aria-label='Questions: Not sorted. Activate to sort ascending.']
${th_gameQuestion}                  css:th[aria-label='Game Questions: Not sorted. Activate to sort ascending.']
${th_StudentProjects}               css:th[aria-label='Student Projects: Not sorted. Activate to sort ascending.']
${BR_downloadReport}                xpath://div[contains(text(),'download report')]//parent::a
${BR_BacktoReports}                 xpath://div[contains(text(),'Back to reports')]//parent::button