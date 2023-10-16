*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_Pages.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Content Pages Tab of Student User
    select tab       PAGES
    Content_Pages.verify Page of Student User
    Content_Pages.verify Filter of student user

#-------------------------------------------------------------------------------------------
Verify Content Pages Tab
    select tab       PAGES
    Content_Pages.verify Page
    Content_Pages.verify Filter
#-------------------------------------------------------------------------------------------
Click on a page
    [Arguments]                                         ${PageN}
    wait until element is visible                       css:div[title='${PageN}']       120
    page should contain element                         css:div[title='${PageN}']
    click on button                                     css:div[title='${PageN}']
    sleep                                               5

#-------------------------------------------------------------------------------------------
Search a Page
    [Arguments]                                       ${PageN}
     page should contain element                      ${btnSearchPage}
     click on button                                  ${btnSearchPage}
     input text                                       ${PageSearchInp}          ${PageN}

#-------------------------------------------------------------------------------------------
verify a Page
    [Arguments]                                         ${Page}
    Content_Pages.Click on a page                       ${Page}
    wait until element is visible                       ${page_title}
    page should contain element                         ${page_title}
    ${Title_Page}=     Get Text                         ${page_title}
    should be equal                                     ${Title_Page}                        ${Page}
    page should contain element                         ${page_description}
    page should contain element                         ${page_like}
    page should contain element                         ${Page_Bookmark}
    page should contain element                         ${page_tableofcontent}
    page should contain element                         ${page_related}
    page should contain element                         ${page_section_title}
    go back

#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${btnCreatePage}
    page should contain element                         ${btnSearchPage}
    page should contain element                         ${btnCreatePage}
    page should contain element                         ${btnFilter}
    page should contain element                         ${sort_Latest}
    page should contain element                         ${sort_MostViewed}
    page should contain element                         ${sort_Likes}
    page should contain element                         ${sort_TitleA-Z}
    page should contain element                         ${sort-TitleZ-A}

#-------------------------------------------------------------------------------------------
verify Page of Student User
    page should contain element                         ${btnSearchPage}
    page should contain element                         ${btnFilter}
    page should contain element                         ${sort_Latest}
    page should contain element                         ${sort_MostViewed}
    page should contain element                         ${sort_Likes}
    page should contain element                         ${sort_TitleA-Z}
    page should contain element                         ${sort-TitleZ-A}

#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${btnFilter}
    wait until Element is present in the page           ${hAdvancedFilters}
    page should contain element                         ${hAdvancedFilters}
    page should contain element                         ${btnpublished}
    page should contain element                         ${btnUnPublished}
    page should contain element                         ${btnLiked}
    page should contain element                         ${btnBookmarked}
    page should contain element                         ${btnPublic}
    page should contain element                         ${btnMyContent}
    page should contain element                         ${btnApply}
    page should contain element                         ${btnClearAll}
    page should contain element                         ${close}
    click element                                       ${close}
    sleep                                               5

#-------------------------------------------------------------------------------------------
verify Filter of student user
    click element                                       ${btnFilter}
    wait until Element is present in the page           ${hAdvancedFilters_1}
    page should contain element                         ${hAdvancedFilters_1}
    page should contain element                         ${btnPublished_1}
    page should contain element                         ${btnLiked_1}
    page should contain element                         ${btnBookmarked_1}
    page should contain element                         ${btnPublic_1}
    page should contain element                         ${btnApply_1}
    page should contain element                         ${btnClearAll_1}
    page should contain element                         ${close_1}
    click element                                       ${close_1}
    sleep                                               5


