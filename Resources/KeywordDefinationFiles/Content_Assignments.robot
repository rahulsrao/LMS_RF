*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_Assignments.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Assignments tab in Content Page
    select tab       ASSIGNMENTS
    Content_Assignments.verify Page
    Content_Assignments.verify Filter
    Content_Assignments.verify Question Bank section
    Content_Assignments.verify Game Questions section
    Content_Assignments.verify Flash Cards section

#-------------------------------------------------------------------------------------------
Verify Assignments tab in Content Page of Student user
    select tab       ASSIGNMENTS
    Content_Assignments.verify Assignments tab of student user
    Content_Assignments.verify Assignments Filter option of Student user
    Content_Assignments.verify Question Bank section of student user
    Content_Assignments.verify Flash Cards section of student user
#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${btnCreateAssignment}
    page should contain element                         ${A_Search}
    page should contain element                         ${btnCreateAssignment}
    page should contain element                         ${A_Filter}
    page should contain element                         ${A_sort_Latest}
    page should contain element                         ${A_sort_MostViewed}
    page should contain element                         ${A_sort_Likes}
    page should contain element                         ${A_sort_TitleA-Z}
    page should contain element                         ${A_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Assignments tab of student user
    wait until Element is present in the page           ${A_Search}
    page should contain element                         ${A_Search}
    page should contain element                         ${A_Filter}
    page should contain element                         ${A_sort_Latest}
    page should contain element                         ${A_sort_MostViewed}
    page should contain element                         ${A_sort_Likes}
    page should contain element                         ${A_sort_TitleA-Z}
    page should contain element                         ${A_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${A_Filter}
    wait until Element is present in the page           ${A_hAdvancedFilters}
    page should contain element                         ${A_hAdvancedFilters}
    page should contain element                         ${A_Published}
    page should contain element                         ${A_UnPublished}
    page should contain element                         ${A_Liked}
    page should contain element                         ${A_Public}
    page should contain element                         ${A_MyContent}
    page should contain element                         ${A_Apply}
    page should contain element                         ${A_ClearAll}
    page should contain element                         ${A_close}
    click element                                       ${A_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Assignments Filter option of Student user
    click element                                       ${A_Filter}
    wait until Element is present in the page           ${A_hAdvancedFilters_1}
    page should contain element                         ${A_hAdvancedFilters_1}
    page should contain element                         ${A_Published_1}
    page should contain element                         ${A_Submitted}
    page should contain element                         ${A_Graded}
    page should contain element                         ${A_Liked_1}
    page should contain element                         ${A_Public_1}
    page should contain element                         ${A_Apply_1}
    page should contain element                         ${A_ClearAll_1}
    page should contain element                         ${A_close_1}
    click element                                       ${A_close_1}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Question Bank section
    page should contain element                         ${A_hQuestionBank}
    page should contain element                         ${A_QBAdd}
    page should contain element                         ${A_QBMassUpload}
    page should contain element                         ${A_QBCount}
    ${QBCount}=    get text                             ${A_QBCount}
    printvalue     There are ${QBCount} questions in Question Bank

#-------------------------------------------------------------------------------------------
verify Question Bank section of student user
    page should contain element                         ${A_hQuestionBank}
    page should contain element                         ${A_QBCount_1}
    ${QBCount}=    get text                             ${A_QBCount_1}
    printvalue     There are ${QBCount} questions in Question Bank
#-------------------------------------------------------------------------------------------
verify Game Questions section
    page should contain element                         ${A_hGameQuestions}
    page should contain element                         ${A_GQAdd}
    page should contain element                         ${A_GQMassUpload}
    page should contain element                         ${A_GQCount}
    ${GQCount}=    get text                             ${A_GQCount}
    printvalue     There are ${GQCount} Game Questions
#-------------------------------------------------------------------------------------------
verify Flash Cards section
    page should contain element                         ${A_hFlashCards}
    page should contain element                         ${A_FCCount}
    ${FCCount}=    get text                             ${A_FCCount}
    printvalue     There are ${FCCount} Flash Cards
#-------------------------------------------------------------------------------------------
verify Flash Cards section of student user
    page should contain element                         ${A_hFlashCards}
    page should contain element                         ${A_FCCount_1}
    ${FCCount}=    get text                             ${A_FCCount_1}
    printvalue     There are ${FCCount} Flash Cards
#-------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------
Search a Assignment
    [Arguments]                                         ${Assignment}
    page should contain element                         ${a_search}
    click on button                                     ${a_search}
    page should contain element                         ${searchAssgninp}
    input text                                          ${searchAssgninp}           ${Assignment}

#-------------------------------------------------------------------------------------------
Click on a Assignment
    [Arguments]                                          ${Assignment}
    wait until Element is present in the page            css:h3[title='${Assignment}']
    page should contain element                          css:h3[title='${Assignment}']
    click on button                                      css:h3[title='${Assignment}']