*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         String

*** Variables ***
${ManagePages_h}                                             xpath://div[normalize-space()='Manage Pages']
${ManagePages_AddPage}                                       xpath://div[contains(text(),'Add Page')]/parent::button
${ManagePages_More}                                          xpath:(//i[text()='more_vert']/ancestor::button)[2]
${ManagePages_Week1}                                         xpath://span[normalize-space()='Week 1']
${ManagePages_AddContent_h}                                  xpath://div[contains(text(),'Add Content')]
${ManagePages_SelectWeek}                                    css:input[aria-label='Select Week']
${AddContent_Close}                                          xpath://div[normalize-space()='Close']/parent::button
${AddContent_Save}                                           xpath://div[normalize-space()='Save']/parent::button
${Movecontenttoanotherweek_h}                                xpath://div[contains(text(),'Move content to another week')]
${Movecontenttoanotherweek_SelectWeek}                       css:input[aria-label='Select Week']
${Movecontenttoanotherweek_Save}                             xpath://div[normalize-space()='Save']/parent::button
${Movecontenttoanotherweek_Close}                            xpath://div[normalize-space()='Close']/parent::button
