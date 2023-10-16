*** Settings ***
Documentation   All the page objects and keywords of Tests List Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${cl_Search}                    xpath:(//i[contains(text(),'search')])[3]//parent::div//parent::button

${btnCreateCollection}          xpath://div[contains(text(),'Create Collection')]//parent::button
${cl_Filter}                    xpath:(//i[contains(text(),'filter_list')])[3]//parent::div//parent::button
${cl_hAdvancedFilters}          xpath:(//div[contains(text(),'Advanced Filters')])[5]
${cl_Liked}                     xpath:(//div[contains(text(),'Liked')])[5]//parent::div//parent::button
${cl_Public}                    xpath:(//div[contains(text(),'Public')])[5]//parent::div//parent::button
${cl_MyContent}                 xpath:(//div[contains(text(),'My Content')])[5]//parent::div//parent::button
${cl_Apply}                     xpath:(//div[contains(text(),'Apply')])[7]//parent::button
${cl_ClearAll}                  xpath:(//div[contains(text(),'Clear All')])[7]//parent::div//parent::button
${cl_close}                     xpath:(//i[contains(text(),'close')])[16]//parent::div//parent::button
${cl_sort_Latest}               xpath:(//span[contains(text(),'Latest')])[3]
${cl_sort_MostViewed}           xpath:(//span[contains(text(),'Most Viewed')])[2]
${cl_sort_Likes}                xpath:(//span[contains(text(),'Likes')])[2]
${cl_sort_TitleA-Z}             xpath:(//span[contains(text(),'Title A-Z')])[3]
${cl_sort-TitleZ-A}             xpath:(//span[contains(text(),'Title Z-A')])[3]

#Student
${searchcollinp}                xpath:(//input[@placeholder='Search by title'])[3]
${cl_hAdvancedFilters_1}        xpath:(//div[contains(text(),'Advanced Filters')])[4]
${cl_Liked_1}                   xpath:(//div[contains(text(),'Liked')])[4]//parent::div//parent::button
${cl_Public_1}                  xpath:(//div[contains(text(),'Public')])[4]//parent::div//parent::button
${cl_Apply_1}                   xpath:(//div[contains(text(),'Apply')])[6]//parent::button
${cl_ClearAll_1}                xpath:(//div[contains(text(),'Clear All')])[6]//parent::div//parent::button
${cl_close_1}                   xpath:((//div[contains(text(),'Advanced Filters')])[4])//following::i[contains(text(),'close')][1]