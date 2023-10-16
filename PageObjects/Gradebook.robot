*** Settings ***
Documentation   All the page objects and keywords of Discussion Forums Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hGradebook}                     xpath:(//div[contains(text(),'Gradebook')])[2]
${btnSelectTerm}                  css:input[aria-label='Select Term']
${SelectCourse}                   css:input[aria-label='Select Course']
${btnSelectBatch}                 css:input[aria-label='Select Batch']
${btnRefresh}                     css:button[title='Refresh']
${btnActivate}                    css:button[title='Activate gradebook(s) by student']
${hStudents}                      xpath://div[contains(text(),'Students')]
${btnSave}                        xpath://div[contains(text(),'Save')]//parent::button
${btnPublish}                     css:button[title='Publish Gradebook For Selected Batch']
${btnByStudents}                  css:button[title='By Students']
${Term_SPRING2020}                xpath://div[contains(text(),'SPRING 2020')]//ancestor::a
${Course_ART}                     xpath://div[contains(text(),'ART')]//ancestor::a
${Batch_ARTBATCHONE}              xpath://div[contains(text(),'ART BATCH ONE')]//ancestor::a
${btnRefresh1}                    xpath://i[contains(text(),'refresh')]//ancestor::button
${btnLibraryBooks}                xpath://i[contains(text(),'library_books')]//ancestor::button
${btnSelectStudent}               css:input[aria-label='Select Student']
${OptBadgesUni1}                  xpath:(//div[contains(text(),'Badges Uni 1')]//ancestor::a)[1]

