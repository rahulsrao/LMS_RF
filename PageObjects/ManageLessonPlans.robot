*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         String

*** Variables ***
${ManageLessonPlans_h}                                             xpath://div[contains(text(),'Manage Lesson Plans')]
${ManageLessonPlans_AddLessonPlan}                                 xpath://div[contains(text(),'Add Lesson Plan')]/parent::button
${ManageLessonPlans_More}                                          xpath:(//i[text()='more_vert']/ancestor::button)[2]
${ManageLessonPlans_Week1}                                         xpath://span[normalize-space()='Week 1']
${ManageLessonPlans_AddContent_h}                                  xpath://div[contains(text(),'Add Content')]
${ManageLessonPlans_SelectWeek}                                    css:input[aria-label='Select Week']
${AddContent_Close}                                                xpath://div[normalize-space()='Close']/parent::button
${AddContent_Save}                                                 xpath://div[normalize-space()='Save']/parent::button
${Movecontenttoanotherweek_h}                                      xpath://div[contains(text(),'Move content to another week')]
${Movecontenttoanotherweek_SelectWeek}                             css:input[aria-label='Select Week']
${Movecontenttoanotherweek_Save}                                   xpath://div[normalize-space()='Save']/parent::button
${Movecontenttoanotherweek_Close}                                  xpath://div[normalize-space()='Close']/parent::button

