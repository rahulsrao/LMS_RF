*** Settings ***
Documentation   All the page objects and keywords of Assignments Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${btn_BacktoAssignments}                                          xpath://div[contains(text(),'Back to Assignments')]
${btn_Save&Review}                                                xpath://div[contains(text(),'save & review')]/parent::button
${Pagination_left}                                                xpath://i[normalize-space()='chevron_left']//parent::button
${Pagination_Right}                                               xpath://i[normalize-space()='chevron_right']//parent::button
${Pagination}                                                     css:button[class='v-pagination__item v-pagination__item--active primary']

#Assignment Details
${AssignmentDetails_Course}                                                         xpath://span[normalize-space()='Course:']
${AssignmentDetails_Module}                                                         xpath://span[normalize-space()='Module:']
${AssignmentDetails_Duration}                                                       xpath://span[normalize-space()='Duration:']
${AssignmentDetails_DueDate}                                                        xpath://span[normalize-space()='Due Date:']
${AssignmentDetails_DateSubmitted}                                                  xpath://span[normalize-space()='Date Submitted:']
${AssignmentDetails_Grade}                                                          xpath://span[normalize-space()='Grade:']
${AssignmentDetails_Feedback}                                                       xpath://span[normalize-space()='Feedback:']