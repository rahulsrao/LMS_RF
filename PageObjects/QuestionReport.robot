*** Settings ***
Documentation   All the page objects of Question Report page
Library         SeleniumLibrary
Resource        Generic.robot
Resource          ../Resources/TestData/TestData.robot

*** Variables ***
${QuestionReport_h}                                 xpath://div[contains(text(),'Question Report')]
${QuestionReport_Course}                            xpath://div[contains(text(),'Course - ${batch2}')]
${QuestionReport_Module}                            css:input[role='combobox']

${QuestionReport_AverageTime}                       xpath://div[contains(text(),'Average Time (Seconds):')]
${QuestionReport_QuestionAnalysisSpeed}             xpath://div[contains(text(),'Question Analysis - Speed')]

#Question Analysis - Speed
${QuestionAnalysisSpeed_Module_th}                  xpath:(//th[contains(@aria-label,'Module:')])[1]
${QuestionAnalysisSpeed_AverageTime_th}             xpath:(//th[contains(@aria-label,'Average Time (Seconds):')])[1]
${QuestionAnalysisSpeed_TotalCorrectQuestions_th}   xpath:(//th[contains(@aria-label,'Total Correct Questions:')])[1]
${QuestionAnalysisSpeed_Module_tr}                 xpath:(//td[contains(text(),'${module}')])[1]

#StudentReport Speed
${StudentReport_Speed_h}                            xpath://div[contains(text(),'${module} - Student Report - Speed')]
${StudentReport_Speed_Student_th}                   xpath:(//th[contains(@aria-label,'Student:')])[1]
${StudentReport_Speed_AverageTime_th}               xpath:(//th[contains(@aria-label,'Average Time (Seconds):')])[1]
${StudentReport_Speed_close}                        xpath://div[contains(text(),'Close')]/parent::button

#Question Analysis - Accuracy
${QuestionReport_QuestionAnalysisAccuracy}             xpath:(//div[text()='Question Analysis - Accuracy'])

${QuestionAnalysisAccuracy_Module_th}                  xpath:(//th[contains(@aria-label,'Module:')])[2]
${QuestionAnalysisAccuracy_Accuracy(%)_th}             xpath:(//th[contains(@aria-label,'Accuracy (%)')])[1]
${QuestionAnalysisAccuracy_TotalCorrectQuestions_th}   xpath:(//th[contains(@aria-label,'Total Correct Questions:')])[2]
${QuestionAnalysisAccuracy_TotalQuestions_th}          xpath:(//th[contains(@aria-label,'Total Questions:')])[1]
${QuestionAnalysisAccuracy_Module_tr}                  xpath:(//td[contains(text(),'${module}')])[2]

#Student Report - Accuracy
${StudentReport_Accuracy_h}                            xpath://div[contains(text(),'${module} - Student Report - Accuracy')]
${StudentReport_Accuracy_Student_th}                   xpath:(//th[contains(@aria-label,'Student:')])[1]
${StudentReport_Accuracy_Accuracy(%)_th}               xpath:(//th[contains(@aria-label,'Accuracy (%):')])[1]
${StudentReport_Accuracy_close}                        xpath://div[contains(text(),'Close')]/parent::button

#Question Analysis - Accuracy (Concept)
${QuestionReport_QuestionAnalysisAccuracyConcept}              xpath://div[contains(text(),'Question Analysis - Accuracy (Concept)')]

${QuestionAnalysisAccuracyConcept_Concept_th}                  xpath:(//th[contains(@aria-label,'Concept:')])[1]
${QuestionAnalysisAccuracyConcept_Accuracy(%)_th}              xpath:(//th[contains(@aria-label,'Accuracy (%)')])[1]
${QuestionAnalysisAccuracyConcept_TotalCorrectQuestions_th}    xpath:(//th[contains(@aria-label,'Total Correct Questions:')])[3]
${QuestionAnalysisAccuracyConcept_TotalQuestions_th}           xpath:(//th[contains(@aria-label,'Total Questions:')])[2]
${QuestionAnalysisAccuracyConcept_Concept_tr}                  xpath:(//td[contains(text(),'${concept1}')])[1]

#Student Report - Accuracy
${StudentReport_Concept_Accuracy_h}                            xpath://div[contains(text(),'${batch2} - Student Report - Accuracy')]
${StudentReport_Concept_Accuracy_Student_th}                   xpath:(//th[contains(@aria-label,'Student:')])[1]
${StudentReport_Concept_Accuracy_Accuracy(%)_th}               xpath:(//th[contains(@aria-label,'Accuracy (%):')])[1]
${StudentReport_Concept_Accuracy_close}                        xpath://div[contains(text(),'Close')]/parent::button

#Question Reports
${QuestionAnalysis_Speed}                                      css:#barChart
${QuestionAnalysis_Accuracy}                                   css:#barChartAccuracy
${QuestionAnalysis_Accuracy_Concept}                           css:#barChartConceptAccuracy