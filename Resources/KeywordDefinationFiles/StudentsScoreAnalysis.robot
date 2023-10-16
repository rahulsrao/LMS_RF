*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentsScoreAnalysis.robot
Resource        ../../PageObjects/Courses_Dashboard.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Students Score Analysis
    page should contain element             ${studentsscoreanalysis_h}
    page should contain element             ${StudentsScoreAnalysis_Score}
    verify student's score analysis table

#-------------------------------------------------------------------------------------------
Click on Student Score
    [Arguments]                             ${student}
    page should contain element             xpath://td[normalize-space()='${student}']/following::div[@role='progressbar']
    click on button                         xpath://td[normalize-space()='${student}']/following::div[@role='progressbar']
    sleep                                   5

#-------------------------------------------------------------------------------------------
#                                 Verify Table
#-------------------------------------------------------------------------------------------

Verify Student's Score Analysis Table
    page should contain element             ${studentsscoreanalysis_avatar_th}
    page should contain element             ${studentsscoreanalysis_name_th}
    page should contain element             ${studentsscoreanalysis_rollnumber_th}
    page should contain element             ${studentsscoreanalysis_score_th}
