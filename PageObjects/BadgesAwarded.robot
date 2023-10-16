*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${BadgesAwarded_h}                      xpath://div[contains(text(),'Badges Awarded')]
${BadgesAwarded_BadgeName_th}           xpath://th[contains(@aria-label,'Badge Name:')]
${BadgesAwarded_Badge_th}               xpath://th[contains(@aria-label,'Badge:')]
${BadgesAwarded_AwardedStudents_th}     xpath://th[contains(@aria-label,'Awarded Students:')]
${BadgesAwarded_StarPerformer}          xpath://td[normalize-space()='Star Performer']
${BadgesAwarded_ModuleLeader}           xpath://td[normalize-space()='Module Leader']
${BadgesAwarded_ConceptLeader}          xpath://td[normalize-space()='Concept Leader']
${BadgesAwarded_TestTopper}             xpath://td[normalize-space()='Test Topper']
${BadgesAwarded_AssignmentsTopper}      xpath://td[normalize-space()='Assignments Topper']
${BadgesAwarded_MostStudious}           xpath://td[normalize-space()='Most Studious']
${BadgesAwarded_BingeWatcher}           xpath://td[normalize-space()='Binge Watcher']
${BadgesAwarded_DiscussionTopper}       xpath://td[normalize-space()='Discussion Topper']
${BadgesAwarded_MostPunctual}           xpath://td[normalize-space()='Most Punctual']
${BadgesAwarded_ShareOnWall}            css:button[title='Share on wall']
${BadgesAwarded_AwardedBadges_h}        xpath://div[contains(text(),'Awarded Badges')]
${BadgesAwarded_AwardedBadges_Close}    xpath://i[normalize-space()='close']/ancestor::button
