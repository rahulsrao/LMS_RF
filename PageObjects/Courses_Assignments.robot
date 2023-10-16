*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Assignments}                                xpath://a[normalize-space()='Assignments']
${Assignments_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[4]
${Assignments_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[4]
${Assignments_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[3]
${Assignments_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[3]
${Assignments_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[4]
${Assignments_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[4]
${Assignments_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[4]
${Assignments_Search}                         xpath:(//i[text()='search']/ancestor::button)[4]
${Assignments_CreateAssignments}              xpath://div[contains(text(),'Create Assignment')]/parent::button
${Assignments_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]




#//div[@title='Test V3']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Test V3']/following::i[contains(text(),'edit')]/ancestor::button)[1]
