*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Discussions}                                xpath://a[normalize-space()='Discussions']
${Discussions_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[7]
${Discussions_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[7]
${Discussions_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[6]
${Discussions_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[6]
${Discussions_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[7]
${Discussions_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[7]
${Discussions_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]
${Discussionss_CreateDiscussion}              xpath://div[contains(text(),'Create Discussion')]/parent::button


#//div[@title='Normal Test 8682']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Normal Test 8682']/following::i[contains(text(),'print')]/ancestor::button)[1]
#(//div[@title='Normal Test 8682']/following::div[contains(text(),'View')]/ancestor::button)[1]
