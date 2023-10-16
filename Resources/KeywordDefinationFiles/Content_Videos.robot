*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_Videos.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Videos tab in Content Page
    select tab       VIDEOS
    Content_Videos.verify Page
    Content_Videos.verify Filter

#-------------------------------------------------------------------------------------------
Verify Videos tab in Content Page of Student user
    select tab       VIDEOS
    Content_Videos.verify Videos Page of Student user
    Content_Videos.verify Filter option of Student user
#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${v_CreateVideo}
    page should contain element                         ${v_Search}
    page should contain element                         ${v_CreateVideo}
    page should contain element                         ${v_Filter}
    page should contain element                         ${v_sort_Latest}
    page should contain element                         ${v_sort_TitleA-Z}
    page should contain element                         ${v_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Videos Page of Student user
    wait until Element is present in the page           ${v_Filter}
    page should contain element                         ${v_Search}
    page should contain element                         ${v_Filter}
    page should contain element                         ${v_sort_Latest}
    page should contain element                         ${v_sort_TitleA-Z}
    page should contain element                         ${v_sort-TitleZ-A}

#-------------------------------------------------------------------------------------------
verify Video Tab of Student User
    page should contain element                         ${v_Search}
    page should contain element                         ${v_CreateVideo}
    page should contain element                         ${v_Filter}
    page should contain element                         ${v_sort_Latest}
    page should contain element                         ${v_sort_TitleA-Z}
    page should contain element                         ${v_sort-TitleZ-A}

#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${v_Filter}
    wait until Element is present in the page           ${v_hAdvancedFilters}
    page should contain element                         ${v_hAdvancedFilters}
    page should contain element                         ${btnpublished}
    page should contain element                         ${btnUnPublished}
    page should contain element                         ${btnPreclass}
    page should contain element                         ${btnLearn}
    page should contain element                         ${btnRevision}
    page should contain element                         ${btnReference}
    page should contain element                         ${btnApply}
    page should contain element                         ${btnClearAll}
    page should contain element                         ${v_close}
    click element                                       ${v_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
verify Filter option of Student user
    click element                                       ${v_Filter}
    wait until Element is present in the page           ${v_hAdvancedFilters_1}
    page should contain element                         ${v_hAdvancedFilters_1}
    page should contain element                         ${btnpublished_1}
    page should contain element                         ${btnPreclass}
    page should contain element                         ${btnLearn}
    page should contain element                         ${btnRevision}
    page should contain element                         ${btnReference}
    page should contain element                         ${btnApply_1}
    page should contain element                         ${btnClearAll_1}
    page should contain element                         ${v_close_1}
    click element                                       ${v_close_1}
    sleep                                               5

#-------------------------------------------------------------------------------------------
Search a Video
    [Arguments]                                         ${VideoN}
    page should contain element                         ${v_search}
    click on button                                     ${v_search}
    page should contain element                         ${searchvideoinp}
    input text                                          ${searchvideoinp}           ${VideoN}

#-------------------------------------------------------------------------------------------
Click on a Video
    [Arguments]                                          ${VideoN}
    wait until Element is present in the page            css:div[title='${VideoN}']
    page should contain element                          css:div[title='${VideoN}']
    click on button                                      css:div[title='${VideoN}']