*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${BadgesInformation_h}                      xpath://div[contains(text(),'Badges Information')]
${BadgesInformation_BadgeName_th}           xpath://th[contains(@aria-label,'Badge Name: Not sorted.')]
${BadgesInformation_Badge_th}               xpath://th[contains(@aria-label,'Badge:')]
${BadgesInformation_Description_th}         xpath://th[contains(@aria-label,'Description:')]
${BadgesInformation_StarPerformer}          xpath://td[normalize-space()='Star Performer']
${BadgesInformation_ModuleLeader}           xpath://td[normalize-space()='Module Leader']
${BadgesInformation_CourseCompleted}        xpath://td[normalize-space()='Course Completed']
${BadgesInformation_ConceptLeader}          xpath://td[normalize-space()='Concept Leader']
${BadgesInformation_TestTopper}             xpath://td[normalize-space()='Test Topper']
${BadgesInformation_AssignmentsTopper}      xpath://td[normalize-space()='Assignments Topper']
${BadgesInformation_MostStudious}           xpath://td[normalize-space()='Most Studious']
${BadgesInformation_BingeWatcher}           xpath://td[normalize-space()='Binge Watcher']
${BadgesInformation_DiscussionTopper}       xpath://td[normalize-space()='Discussion Topper']
${BadgesInformation_MostPunctual}           xpath://td[normalize-space()='Most Punctual']