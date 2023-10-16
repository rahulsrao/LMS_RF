*** Settings ***
Documentation   All the page objects and keywords of Student Projects Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${sp_Search}                    xpath:(//i[contains(text(),'search')])[6]//parent::div//parent::button
${sp_CreateProject}             xpath://div[normalize-space()='Create Project']/parent::button
${sp_Filter}                    xpath:(//i[contains(text(),'filter_list')])[6]//parent::div//parent::button
${sp_hAdvancedFilters}          xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]
${sp_Published}                 xpath:(//div[contains(text(),'Published')])[3]//parent::div//parent::button | (//div[contains(text(),'Published')])[1]//parent::div//parent::button
${sp_UnPublished}               xpath:(//div[contains(text(),'UnPublished')])[2]//parent::div//parent::button | (//div[contains(text(),'UnPublished')])[1]//parent::div//parent::button
${sp_Liked}                     xpath:(//div[contains(text(),'Liked')])[2]//parent::div//parent::button | (//div[contains(text(),'Liked')])[1]//parent::div//parent::button
${sp_Bookmarked}                xpath:(//div[contains(text(),'Bookmarked')])[2]//parent::div//parent::button | (//div[contains(text(),'Bookmarked')])[1]//parent::div//parent::button
${sp_Public}                    xpath:(//div[contains(text(),'Public')])[2]//parent::div//parent::button | (//div[contains(text(),'Public')])[1]//parent::div//parent::button
${sp_MyContent}                 xpath:(//div[contains(text(),'My Content')])[2]//parent::div//parent::button | (//div[contains(text(),'My Content')])[1]//parent::div//parent::button
${sp_Apply}                     xpath:(//div[contains(text(),'Apply')])[2]//parent::button | (//div[contains(text(),'Apply')])[1]//parent::button
${sp_ClearAll}                  xpath:(//div[contains(text(),'Clear All')])[2]//parent::div//parent::button | (//div[contains(text(),'Clear All')])[1]//parent::div//parent::button
${sp_close}                     xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]//i[contains(text(),'close')]//ancestor::button
${sp_sort_Latest}               xpath:(//span[contains(text(),'Latest')])[6]
${sp_sort_MostViewed}           xpath:(//span[contains(text(),'Most Viewed')])[5]
${sp_sort_Likes}                xpath:(//span[contains(text(),'Most Viewed')])[5]
${sp_sort_TitleA-Z}             xpath:(//span[contains(text(),'Title A-Z')])[6]
${sp_sort-TitleZ-A}             xpath:(//span[contains(text(),'Title Z-A')])[6]

${searchStdProjinp}             xpath:(//input[@placeholder='Search by title'])[6]