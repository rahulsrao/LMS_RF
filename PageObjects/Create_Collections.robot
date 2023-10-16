*** Settings ***
Documentation   All the page objects and keywords of Create Test Page
Library         SeleniumLibrary
Library          ../Generic/CreateTest.py
Resource        Generic.robot

*** Variables ***
${collections_Title}                          css:textarea[placeholder='Title']
${collections_Description}                    css:textarea[placeholder='Description']
${collections_message}                        xpath://h3[contains(text(),'Click on the cards below to add them to the collec')]
${collections_course}                         xpath:(//div[contains(text(),'ART')])[2]/ancestor::button
${collections_module}                         xpath:(//div[contains(text(),'All Modules')])[2]/ancestor::button
${collections_pages}                          xpath://a[contains(text(),'Pages')]
${collections_Assignments}                    xpath://a[contains(text(),'Assignments')]
${collections_Tests}                          xpath://a[contains(text(),'Tests')]
${collections_search}                         xpath://i[contains(text(),'search')]/ancestor::button
${collections_searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[1]
${collections_SaveNext}                       xpath://div[contains(text(),'Save & Next')]/ancestor::button

#div[title='Fundamental Architecture']