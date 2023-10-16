*** Settings ***
Documentation   All the page objects and keywords of Graph Page
Library         SeleniumLibrary
Resource        Generic.robot
Resource        ../Resources/TestData/TestData.robot
*** Variables ***
${hGraph}                         css:div[class='v-toolbar__title']
${btnSchool}                      xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button
${btnCourse}                      xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[1]
${btnModule}                      xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[2]
${btnStudents}                    xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[3]
${btnSubmissionGraph}             xpath://input[@aria-label='Submission Graph']
${btnDifficultyGraph}             xpath://input[@aria-label='Difficulty Graph']
${btnConceptGraph}                xpath://input[@aria-label='Concept Graph']


