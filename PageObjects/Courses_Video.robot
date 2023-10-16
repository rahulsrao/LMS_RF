*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${Videos}                                xpath://a[normalize-space()='Videos']
${Videos_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[2]
${Videos_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[2]
${Videos_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[2]
${Videos_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[2]
${Videos_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[2]
${Videos_Search}                         xpath:(//i[text()='search']/ancestor::button)[2]
${Videos_CreateVideos}                   xpath://div[contains(text(),'Create Video')]/parent::button



#//div[@title='Test V3']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Test V3']/following::i[contains(text(),'edit')]/ancestor::button)[1]
