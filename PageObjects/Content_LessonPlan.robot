*** Settings ***
Documentation   All the page objects and keywords of Page tab in Lesson Plan Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${lpSearch}                 xpath:(//i[contains(text(),'search')])[7]//parent::div//parent::button
${CreateLessonPlan}         xpath://div[normalize-space(text()) = 'Create Lesson Plan']//parent::button
${lpFilter}                 xpath:(//i[contains(text(),'filter_list')])[7]//parent::div//parent::button
${lphAdvancedFilters}       xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]
${lpPublished}              xpath:(//div[contains(text(),'Published')])[1]//parent::div//parent::button
${lpUnPublished}            xpath:(//div[contains(text(),'UnPublished')])[1]//parent::div//parent::button
${lpLiked}                  xpath:(//div[contains(text(),'Liked')])[1]//parent::div//parent::button
${lpBookmarked}             xpath:(//div[contains(text(),'Bookmarked')])[1]//parent::div//parent::button
${lpPublic}                 xpath:(//div[contains(text(),'Public')])[1]//parent::div//parent::button
${lpMyContent}              xpath:(//div[contains(text(),'My Content')])[1]//parent::div//parent::button
${lpApply}                  xpath:(//div[contains(text(),'Apply')])[1]//parent::button
${lpClearAll}               xpath:(//div[contains(text(),'Clear All')])[1]//parent::div//parent::button
${lpclose}                  xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]//i[contains(text(),'close')]//ancestor::button
${lpsort_Latest}            xpath:(//span[contains(text(),'Latest')])[7]
${lpsort_MostViewed}        xpath:(//span[contains(text(),'Most Viewed')])[6]
${lpsort_Likes}             xpath:(//span[contains(text(),'Likes')])[6]
${lpsort_TitleA-Z}          xpath:(//span[contains(text(),'Title A-Z')])[7]
${lpsort-TitleZ-A}          xpath:(//span[contains(text(),'Title Z-A')])[7]
