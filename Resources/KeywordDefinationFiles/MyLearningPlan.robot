*** Settings ***
Documentation   All the keywords of MyLearning Plan
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/MyLearningPlan.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify My Learning Plan page
    page should contain element         ${mylearningplan_h}
    page should contain element         ${modulesandconcepts_h}
    page should contain element         ${dueassignments_h}
    page should contain element         ${upcomingtests_h}
    close window
#-------------------------------------------------------------------------------------------
Verify My Learning Plan page of Student user
    page should contain element         ${mylearningplan_h}
    page should contain element         ${modulesandconcepts_h}
    page should contain element         ${bookmarkedpages_h}
    page should contain element         ${dueassignments_h}
    page should contain element         ${upcomingtests_h}
    go back

