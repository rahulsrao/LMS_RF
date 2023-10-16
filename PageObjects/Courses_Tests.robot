*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Tests}                                xpath://a[normalize-space()='Tests']
${Tests_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[5]
${Tests_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[5]
${Tests_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[4]
${Tests_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[4]
${Tests_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[5]
${Tests_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[5]
${Tests_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[5]
${Tests_Search}                         xpath:(//i[text()='search']/ancestor::button)[5]
${Tests_CreateTests}                    xpath://div[contains(text(),'Create Test')]/parent::button
${Tests_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]


#//div[@title='Normal Test 8682']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Normal Test 8682']/following::i[contains(text(),'print')]/ancestor::button)[1]
#(//div[@title='Normal Test 8682']/following::div[contains(text(),'View')]/ancestor::button)[1]
