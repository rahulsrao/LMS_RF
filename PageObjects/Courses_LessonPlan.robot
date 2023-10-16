*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${LessonPlan}                                xpath://a[normalize-space()='Lesson Plan']
${LessonPlan_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[8]
${LessonPlan_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[8]
${LessonPlan_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[7]
${LessonPlan_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[7]
${LessonPlan_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[8]
${LessonPlan_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[8]
${LessonPlan_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[7]
${LessonPlan_Search}                         xpath:(//i[text()='search']/ancestor::button)[7]
${LessonPlan_CreateLessonPlan}               xpath://div[normalize-space()='Create Lesson Plan']/parent::button
${LessonPlan_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]

#(//div[@title='Lesson Plan 1']/following::i[contains(text(),'edit')]/ancestor::button)[1]