    *** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Pages}                                xpath://a[normalize-space()='Pages']
${Pages_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[1]
${Pages_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[1]
${Pages_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[1]
${Pages_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[1]
${Pages_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[1]
${Pages_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[1]
${Pages_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[1]
${Pages_Search}                         xpath:(//i[text()='search']/ancestor::button)[1]
${Pages_CreatePages}                    xpath://div[contains(text(),'Create Pages')]/parent::button

#//div[@title='Page 3']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Page 3']/following::i[contains(text(),'edit')]/ancestor::button)[1]
#(//div[@title='Page 3']/following::i[contains(text(),'favorite_border')])[1]

${TableofContent}                       css:.padding-floater-heading.floater-heading
${TableofContent_Arrow}                 xpath://i[contains(text(),'arrow_upward')]
${Related}                              css:.related-title
${Bookmark_Page}                        css:button[title='Bookmark']
${Like_Page}                            css:button[title='Like']
${Page_Duration}                        xpath://div[@class='flex']/small/b
${Page_Description}                     xpath://h2[@class='article__description noselect']
${Page_Description}                     xpath://h2[@class='article__description noselect']