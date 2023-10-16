*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${MyLearningPlan_h}                              xpath://div[contains(text(),'My Learning Plan')]
${ModulesandConcepts_H}                          xpath://h3[normalize-space()='Modules and Concepts']
${BookmarkedPages_h}                             xpath://h3[normalize-space()='Bookmarked Pages']
${DueAssignments_h}                              xpath://h3[normalize-space()='Due Assignments']
${UpcomingTests_h}                               xpath://h3[normalize-space()='Upcoming Tests']
