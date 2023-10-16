*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        ../../PageObjects/ProficiencyAnalysis.robot
Resource         ../../Resources/KeywordDefinationFiles/SATPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
#                               Take Test
#-------------------------------------------------------------------------------------------
Verify Proficiency Analysis Page
    wait until Element is present in the page       ${proficiencyanalysis_h}
    page should contain element                     ${proficiencyanalysis_h}
    page should contain element                     ${selfananlysis_graph}
    page should contain element                     ${testwiseanalysis_graph}
    ProficiencyAnalysis.Click on a Self Assessment
    SATPage.Verify Test Submission Page
    wait until Element is present in the page       ${proficiencyanalysis_h}
    go back
    sleep                                           5

#-------------------------------------------------------------------------------------------
Verify Proficiency Analysis Concept Page
    wait until Element is present in the page       ${proficiencyanalysis_h}
    page should contain element                     ${proficiencyanalysis_h}
    page should contain element                     ${selfananlysis_graph}
    page should contain element                     ${testwiseanalysis_graph}
    go back
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on a Self Assessment
    page should contain element                     ${selfassessment}
    click on button                                 ${selfassessment}
    sleep                                           5
