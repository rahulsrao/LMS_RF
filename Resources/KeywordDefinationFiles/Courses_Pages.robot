*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Courses_Pages.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
#Verify Pages
#

#-------------------------------------------------------------------------------------------
Click on Pages Tab
    page should contain element             ${pages}
    click on button                         ${pages}
    sleep                                   3

#-------------------------------------------------------------------------------------------
Verify Sort By options
    page should contain element             ${pages_sortby}
    page should contain element             ${pages_sortby_latest}
    page should contain element             ${pages_sortby_mostviewed}
    page should contain element             ${pages_sortby_likes}
    page should contain element             ${pages_sortby_titlea-z}
    page should contain element             ${pages_sortby_titlez-a}

#-------------------------------------------------------------------------------------------
Select Sort By
    [Arguments]                             ${SortBy}
    page should contain element             xpath:(//span[contains(text(),'${SortBy}')])[1]
    click on button                         xpath:(//span[contains(text(),'${SortBy}')])[1]
    sleep                                   3

#-------------------------------------------------------------------------------------------
input text to Search
    [Arguments]                             ${page_n}
    page should contain element             ${pages_searchbytitle}
    input text                              ${pages_searchbytitle}           ${page_n}
    sleep                                   5

#-------------------------------------------------------------------------------------------
Click on CreatePages
    page should contain element             ${pages_createpages}
    click on button                         ${pages_createpages}
    sleep                                   5

#-------------------------------------------------------------------------------------------
Verify Page Title,Course and Module
    [Arguments]                             ${pagetitle}        ${Course}    ${Module}
    page should contain element             xpath://div[@title='${pagetitle}']
    page should contain element             xpath:(//div[@title='${Course} , ${Module}'])[1]

#-------------------------------------------------------------------------------------------
Click on Edit Page
    [Arguments]                             ${pagetitle}
    page should contain element             xpath:(//div[@title='${pagetitle}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    click on button                         xpath:(//div[@title='${pagetitle}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    sleep                                   3

#-------------------------------------------------------------------------------------------
Click on like Page
    [Arguments]                             ${pagetitle}
    page should contain element             xpath:(//div[@title='${pagetitle}']/following::i[contains(text(),'favorite_border')])[1]
    click on button                         xpath:(//div[@title='${pagetitle}']/following::i[contains(text(),'favorite_border')])[1]
    sleep                                   3

#-------------------------------------------------------------------------------------------
verify page Title
    [Arguments]                                     ${page}
    wait until Element is present in the page       xpath://h1[@class='article__title noselect' and normalize-space()='${page}']
    page should contain element                     xpath://h1[@class='article__title noselect' and normalize-space()='${page}']

#-------------------------------------------------------------------------------------------
Verify Table of content details
    page should contain element                     ${tableofcontent}
    page should contain element                     ${tableofcontent_arrow}
    page should contain element                     ${related}

#-------------------------------------------------------------------------------------------
verify page details
    [Arguments]                                     ${page}
    Courses_Pages.verify page Title                 ${page}
    page should contain element                     ${like_page}
    page should contain element                     ${bookmark_page}
    Courses_Pages.Verify Table of content details
    go back

