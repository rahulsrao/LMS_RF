*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Collections}                               xpath://a[normalize-space()='Collections']
${Collection_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[3]
${Collection_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[3]
${Collection_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[2]
${Collection_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[2]
${Collection_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[3]
${Collection_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[3]
${Collection_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[3]
${Collection_Search}                         xpath:(//i[text()='search']/ancestor::button)[3]
${Collection_CreateCollection}               xpath://div[contains(text(),'Create Collection')]/parent::button
${Collection_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]




#//div[@title='Test V3']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Test V3']/following::i[contains(text(),'edit')]/ancestor::button)[1]
