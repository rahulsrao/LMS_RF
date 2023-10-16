*** Settings ***
Documentation   All the page objects and keywords of Videos Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${v_Search}                   xpath:(//i[contains(text(),'search')])[2]//parent::div//parent::button
${v_CreateVideo}              xpath://div[contains(text(),'Create Video')]//parent::button
${v_Filter}                   xpath:(//i[contains(text(),'filter_list')])[2]//parent::div//parent::button
${v_hAdvancedFilters}         xpath:(//div[contains(text(),'Advanced Filters')])[6]
${btnPublished}               xpath:(//div[contains(text(),'Published')])[10]//parent::div//parent::button
${btnUnPublished}             xpath:(//div[contains(text(),'UnPublished')])[5]//parent::div//parent::button
${btnPreclass}                xpath:(//div[contains(text(),'Pre-class')])[1]//parent::div//parent::button
${btnLearn}                   xpath:(//div[contains(text(),'Learn')])[1]//parent::div//parent::button
${btnRevision}                xpath:(//div[contains(text(),'Revision')])[1]//parent::div//parent::button
${btnReference}               xpath:(//div[contains(text(),'Reference')])[1]//parent::div//parent::button
${btnApply}                   xpath:(//div[contains(text(),'Apply')])[8]//parent::button
${btnClearAll}                xpath:(//div[contains(text(),'Clear All')])[9]//parent::div//parent::button
${v_close}                    xpath:(//i[contains(text(),'close')])[19]//parent::div//parent::button
${v_sort_Latest}              xpath:(//span[contains(text(),'Latest')])[2]
${v_sort_TitleA-Z}            xpath:(//span[contains(text(),'Title A-Z')])[2]
${v_sort-TitleZ-A}            xpath:(//span[contains(text(),'Title Z-A')])[2]

#Student
${SearchVideoInp}             xpath:(//input[@placeholder='Search by title'])[2]
${v_hAdvancedFilters_1}       xpath:(//div[contains(text(),'Advanced Filters')])[5]
${btnPublished_1}             xpath:(//div[contains(text(),'Published')])[5]//parent::div//parent::button
${btnClearAll_1}              xpath:(//div[contains(text(),'Clear All')])[8]//parent::div//parent::button
${btnApply_1}                 xpath:(//div[contains(text(),'Apply')])[7]//parent::button
${v_close_1}                  xpath:((//div[contains(text(),'Advanced Filters')])[5])//following::i[contains(text(),'close')][1]
