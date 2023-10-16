*** Settings ***
Documentation   All the keywords of Question Report Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/QuestionReport.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Question Analysis Speed
    page should contain element             ${QuestionReport_QuestionAnalysisSpeed}
    page should contain element             ${QuestionAnalysisSpeed_Module_th}
    page should contain element             ${QuestionAnalysisSpeed_AverageTime_th}
    page should contain element             ${QuestionAnalysisSpeed_TotalCorrectQuestions_th}
    page should contain element             ${QuestionAnalysisSpeed_Module_tr}
    click on button                         ${QuestionAnalysisSpeed_Module_tr}
    sleep                                   5
    page should contain element             ${studentreport_speed_h}
    page should contain element             ${studentreport_speed_student_th}
    page should contain element             ${studentreport_speed_averagetime_th}
    page should contain element             ${studentreport_speed_close}
    click on button                         ${studentreport_speed_close}
#-------------------------------------------------------------------------------------------
Verify Question Analysis Accuracy
    page should contain element             ${QuestionReport_QuestionAnalysisAccuracy}
    page should contain element             ${QuestionAnalysisAccuracy_Module_th}
    page should contain element             ${QuestionAnalysisAccuracy_Accuracy(%)_th}
    page should contain element             ${QuestionAnalysisAccuracy_TotalCorrectQuestions_th}
    page should contain element             ${QuestionAnalysisAccuracy_TotalQuestions_th}
    page should contain element             ${QuestionAnalysisAccuracy_Module_tr}
    click on button                         ${QuestionAnalysisAccuracy_Module_tr}
    sleep                                   5
    page should contain element             ${studentreport_accuracy_h}
    page should contain element             ${studentreport_accuracy_student_th}
    page should contain element             ${studentreport_accuracy_accuracy(%)_th}
    page should contain element             ${studentreport_accuracy_close}
    click on button                         ${StudentReport_Accuracy_close}
#-------------------------------------------------------------------------------------------
Verify Question Analysis Accuracy Concept
    page should contain element              ${QuestionReport_QuestionAnalysisAccuracyConcept}
    page should contain element              ${QuestionAnalysisAccuracyConcept_Concept_th}
    page should contain element              ${QuestionAnalysisAccuracyConcept_Accuracy(%)_th}
    page should contain element              ${QuestionAnalysisAccuracyConcept_TotalCorrectQuestions_th}
    page should contain element              ${QuestionAnalysisAccuracyConcept_TotalQuestions_th}
    page should contain element              ${QuestionAnalysisAccuracyConcept_Concept_tr}
    click on button                          ${QuestionAnalysisAccuracyConcept_Concept_tr}
    sleep                                    5
    page should contain element              ${studentreport_concept_accuracy_h}
    page should contain element              ${studentreport_concept_accuracy_student_th}
    page should contain element              ${studentreport_concept_accuracy_accuracy(%)_th}
    page should contain element              ${studentreport_concept_accuracy_close}
    click on button                          ${studentreport_concept_accuracy_close}
#-------------------------------------------------------------------------------------------
Verify Question Report
    ${handles}=    Get Window Handles
    Switch Window                           ${handles}[2]
    sleep                                   5
    wait until page contains element        ${QuestionReport_h}
    page should contain element             ${QuestionReport_h}
    page should contain element             ${questionreport_course}
    page should contain element             ${questionreport_averagetime}
    verify question analysis speed
    verify question analysis accuracy
    verify question analysis accuracy concept
    close window
    switch window                           ${handles}[1]

#-------------------------------------------------------------------------------------------
Select Module
    [Arguments]                             ${module}
    QuestionReport.Click on Select Module dropdown
    page should contain element             xpath://div[contains(text(),'${module}')]/ancestor::a
    click on button                         xpath://div[contains(text(),'${module}')]/ancestor::a
    press keys                              ${QuestionReport_Module}                    ESC

#-------------------------------------------------------------------------------------------
Click on Select Module dropdown
    page should contain element             ${QuestionReport_Module}
    click on button                         ${QuestionReport_Module}
    sleep                                   3

#-------------------------------------------------------------------------------------------
Verify Question Reports
    page should contain element                     ${QuestionAnalysis_Speed}
    page should contain element                     ${QuestionAnalysis_Accuracy}
    page should contain element                     ${QuestionAnalysis_Accuracy_Concept}

#-------------------------------------------------------------------------------------------
Verify Question Report of Student User
    [Arguments]                                     ${batch}            ${moduleN}
    ${handles}=    Get Window Handles
    Switch Window                                   ${handles}[2]
    sleep                                           5
    wait until page contains element                ${QuestionReport_h}
    page should contain element                     ${QuestionReport_h}
    page should contain element                     xpath://div[contains(text(),'Course - ${batch}')]
    QuestionReport.Click on Select Module dropdown
    QuestionReport.Select Module                    ${moduleN}
    QuestionReport.Verify Question Reports
    close window
    switch window                          ${handles}[1]
    close window
    switch window                          ${handles}[0]