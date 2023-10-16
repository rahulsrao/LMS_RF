*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${Achievements_h}                                                   xpath://div[contains(text(),'Achievements')]
${Achievements_add}                                                 xpath://i[normalize-space()='add']
${Achievements_Filterbycategory}                                    xpath://input[@aria-label='Filter by category']
${Achievements_Featured}                                            xpath:(//input[@aria-label='Featured'])[3]
${Achievements_Approval}                                            xpath://input[@aria-label='Approval']
${Achievements_SortBy}                                              xpath://input[@aria-label='Sort By']

${Achievements_Addanachievement}                                    xpath://label[normalize-space()='Add an achievement']
${Achievements_Addanachievement_Selectacategory}                    xpath:(//input[@placeholder='Select a category*'])[2]
${Achievements_Addanachievement_Title}                              xpath:(//input[@placeholder='Title*'])[2]
${Achievements_Addanachievement_Description}                        css:textarea[name='editor-1']
${Achievements_Addanachievement_Featured}                           xpath:(//input[@aria-label='Featured'])[2]
${Achievements_Addanachievement_Date}                               xpath:(//input[@aria-label='Date'])[2]
${Achievements_Addanachievement_AttachFile}                         xpath:(//i[normalize-space()='attach_file'])[2]//ancestor::button
${Achievements_Addanachievement_Add}                                xpath:(//div[normalize-space()='Add'])[1]//ancestor::button
${Achievements_Addanachievement_Cancel}                             xpath:(//div[contains(text(),'Cancel')])[2]//ancestor::button
${Achievements_share}                                               xpath://i[normalize-space()='share']//ancestor::button




#//div[contains(text(),'Test Achievement 01')]//ancestor::div[@class='flex xs12']//child::button

#Add an achievement
#//label[normalize-space()='Add an achievement']

#Achievements
#//div[contains(text(),'Test Achievement 01')]