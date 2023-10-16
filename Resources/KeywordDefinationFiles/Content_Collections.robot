*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_Collections.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Collections tab in Content Page
    select tab       COLLECTIONS
    Content_Collections.verify Page
    Content_Collections.verify Filter
#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${btnCreateCollection}
    page should contain element                         ${cl_Search}
    page should contain element                         ${btnCreateCollection}
    page should contain element                         ${cl_Filter}
    page should contain element                         ${cl_sort_Latest}
    page should contain element                         ${cl_sort_MostViewed}
    page should contain element                         ${cl_sort_Likes}
    page should contain element                         ${cl_sort_TitleA-Z}
    page should contain element                         ${cl_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${cl_Filter}
    wait until Element is present in the page           ${cl_hAdvancedFilters}
    page should contain element                         ${cl_hAdvancedFilters}
    page should contain element                         ${cl_Liked}
    page should contain element                         ${cl_Public}
    page should contain element                         ${cl_MyContent}
    page should contain element                         ${cl_Apply}
    page should contain element                         ${cl_ClearAll}
    page should contain element                         ${cl_close}
    click element                                       ${cl_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
Verify Collections tab in Content Page of Student user
    select tab       COLLECTIONS
    Content_Collections.verify Collections Page of Student user
    Content_Collections.verify Collections Filter option of Student user
#-------------------------------------------------------------------------------------------
verify Collections Page of Student user
    wait until Element is present in the page           ${cl_Search}
    page should contain element                         ${cl_Search}
    page should contain element                         ${cl_Filter}
    page should contain element                         ${cl_sort_Latest}
    page should contain element                         ${cl_sort_MostViewed}
    page should contain element                         ${cl_sort_Likes}
    page should contain element                         ${cl_sort_TitleA-Z}
    page should contain element                         ${cl_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Collections Filter option of Student user
    click element                                       ${cl_Filter}
    wait until Element is present in the page           ${cl_hAdvancedFilters_1}
    page should contain element                         ${cl_hAdvancedFilters_1}
    page should contain element                         ${cl_Liked_1}
    page should contain element                         ${cl_Public_1}
    page should contain element                         ${cl_Apply_1}
    page should contain element                         ${cl_ClearAll_1}
    page should contain element                         ${cl_close_1}
    click element                                       ${cl_close_1}
    sleep                                               5
#-------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------
Search a Collection
    [Arguments]                                         ${CollectionN}
    page should contain element                         ${cl_Search}
    click on button                                     ${cl_Search}
    page should contain element                         ${searchcollinp}
    input text                                          ${searchcollinp}           ${CollectionN}

#-------------------------------------------------------------------------------------------
Click on a Collection
    [Arguments]                                          ${CollectionN}
    wait until Element is present in the page            css:h3[title='${CollectionN}']
    page should contain element                          css:h3[title='${CollectionN}']
    click on button                                      css:h3[title='${CollectionN}']