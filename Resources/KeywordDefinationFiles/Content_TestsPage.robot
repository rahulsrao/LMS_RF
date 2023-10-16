*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_TestsPage.robot
Resource        ../../Resources/KeywordDefinationFiles/GraphPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Tests tab in Content Page
    [Arguments]                     ${schoolN}
    select tab       TESTS
    Content_TestsPage.verify Page
    Content_TestsPage.verify Question Bank section
    Content_TestsPage.verify Game Questions section
    Content_TestsPage.verify Flash Cards section
    Content_TestsPage.verify Create Test
    Content_TestsPage.verify Filter
    Content_TestsPage.Verify chart button and Click on chart button
    GraphPage.verify Page                                               ${schoolN}

#-------------------------------------------------------------------------------------------
Verify Tests tab in Content Page of Student user
    select tab       TESTS
    Content_TestsPage.verify Test tab of student user
    Content_TestsPage.verify Question Bank section of student user
    Content_TestsPage.verify Flash Cards section of student user
    Content_TestsPage.verify Tests Filter option of Student user

#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${btn_CreateTest}
    page should contain element                         ${T_Search}
    page should contain element                         ${btn_CreateTest}
    page should contain element                         ${T_Filter}
    page should contain element                         ${btnchart}
    page should contain element                         ${T_sort_Latest}
    page should contain element                         ${T_sort_TitleA-Z}
    page should contain element                         ${T_sort-TitleZ-A}

#-------------------------------------------------------------------------------------------
verify Test tab of student user
    wait until Element is present in the page           ${T_Search}
    page should contain element                         ${T_Search}
    page should contain element                         ${T_Filter}
    page should contain element                         ${T_sort_Latest}
    page should contain element                         ${T_sort_TitleA-Z}
    page should contain element                         ${T_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${T_Filter}
    sleep                                               5
    wait until Element is present in the page           ${T_hAdvancedFilters}
    page should contain element                         ${T_hAdvancedFilters}
    page should contain element                         ${T_Published}
    page should contain element                         ${NormalTests}
    page should contain element                         ${PracticeTests}
    page should contain element                         ${EasyTests}
    page should contain element                         ${MediumTests}
    page should contain element                         ${HardTests}
    page should contain element                         ${PracticeTests(Adaptive)}
    page should contain element                         ${NormalTests(Adaptive)}
    page should contain element                         ${OfflineTests}
    page should contain element                         ${T_UnPublished}
    page should contain element                         ${T_Liked}
    page should contain element                         ${T_Public}
    page should contain element                         ${T_MyContent}
    page should contain element                         ${T_Apply}
    page should contain element                         ${T_ClearAll}
    page should contain element                         ${T_close}
    click element                                       ${T_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Tests Filter option of Student user
    click element                                       ${T_Filter}
    wait until Element is present in the page           ${T_hAdvancedFilters}
    page should contain element                         ${T_hAdvancedFilters}
    page should contain element                         ${T_Published}
    page should contain element                         ${NormalTests}
    page should contain element                         ${PracticeTests}
    page should contain element                         ${EasyTests}
    page should contain element                         ${MediumTests}
    page should contain element                         ${HardTests}
    page should contain element                         ${PracticeTests(Adaptive)}
    page should contain element                         ${NormalTests(Adaptive)}
    page should contain element                         ${OfflineTests}
    page should contain element                         ${notsubmitted}
    page should contain element                         ${submitted}
    page should contain element                         ${T_Liked}
    page should contain element                         ${T_Public}
    page should contain element                         ${T_Apply}
    page should contain element                         ${T_ClearAll}
    page should contain element                         ${T_close}
    click element                                       ${T_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Question Bank section
    page should contain element                         ${T_hQuestionBank}
    page should contain element                         ${T_QBAdd}
    page should contain element                         ${T_QBMassUpload}
    page should contain element                         ${T_QBCount}
    ${QBCount}=    get text                             ${T_QBCount}
    printvalue     There are ${QBCount} questions in Question Bank
#-------------------------------------------------------------------------------------------
verify Question Bank section of student user
    page should contain element                         ${T_hQuestionBank}
    page should contain element                         ${T_QBCount_1}
    ${QBCount}=    get text                             ${T_QBCount_1}
    printvalue     There are ${QBCount} questions in Question Bank
#-------------------------------------------------------------------------------------------
verify Game Questions section
    page should contain element                         ${T_hGameQuestions}
    page should contain element                         ${T_GQAdd}
    page should contain element                         ${T_GQMassUpload}
    page should contain element                         ${T_GQCount}
    ${GQCount}=    get text                             ${T_GQCount}
    printvalue     There are ${GQCount} Game Questions
#-------------------------------------------------------------------------------------------
verify Flash Cards section
    page should contain element                         ${T_hFlashCards}
    page should contain element                         ${T_FCCount}
    ${FCCount}=    get text                             ${T_FCCount}
    printvalue     There are ${FCCount} Flash Cards

#-------------------------------------------------------------------------------------------
verify Flash Cards section of student user
    page should contain element                         ${T_hFlashCards}
    page should contain element                         ${T_FCCount_1}
    ${FCCount}=    get text                             ${T_FCCount_1}
    printvalue     There are ${FCCount} Flash Cards
#-------------------------------------------------------------------------------------------
Verify chart button and Click on chart button
    page should contain element                         ${btnchart}
    click element                                       ${btnchart}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Create Test
    page should contain element                         ${btn_CreateTest}
    click element                                       ${btn_CreateTest}
    wait until Element is present in the page           ${h_CreateTest}
    page should contain element                         ${sections}
    page should contain element                         ${manually}
    page should contain element                         ${FromQuestionBank}
    page should contain element                         ${Adaptive}
    page should contain element                         ${Offline}
    click on button                                     ${sections}
    page should contain element                         ${Manually}
    page should contain element                         ${FromQuestionBank}
    page should contain element                         ${btnclose}
#    click element                                       ${btnclose}
    press keys                                          ${h_CreateTest}             ESC
    sleep                                               5
#-------------------------------------------------------------------------------------------
Click on CreateTestButton and Select TestType
    [Arguments]                         ${TestType}             ${Section}
    click on button                     ${btn_CreateTest}
    wait until element is visible       ${h_CreateTest}
    Select Test Type                    ${TestType}             ${Section}
#-------------------------------------------------------------------------------------------
Search a Test
    [Arguments]                                         ${Test}
    page should contain element                         ${T_Search}
    click on button                                     ${T_Search}
    page should contain element                         ${searchTestinp}
    input text                                          ${searchTestinp}           ${Test}

#-------------------------------------------------------------------------------------------
Click on viewSubmission button of a Test
    [Arguments]                                          ${Test}
    wait until Element is present in the page            xpath://h3[@title='${Test}']/following::div[text()='View Submissions'][1]/parent::button
    page should contain element                          xpath://h3[@title='${Test}']/following::div[text()='View Submissions'][1]/parent::button
    click on button                                      xpath://h3[@title='${Test}']/following::div[text()='View Submissions'][1]/parent::button