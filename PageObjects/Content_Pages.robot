*** Settings ***
Documentation   All the page objects and keywords of Page tab in Conetent Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${btnSearchPage}        xpath:(//input[@placeholder='Search by title'])[1]/preceding::button[@class='search-btn v-btn v-btn--icon theme--light']
${PageSearchInp}        xpath:(//input[@placeholder='Search by title'])[1]
${btnCreatePage}        xpath://div[contains(text(),'Create Pages')]//parent::button
${btnFilter}            xpath:(//i[contains(text(),'filter_list')])[1]//parent::div//parent::button
${hAdvancedFilters}     xpath:(//div[contains(text(),'Advanced Filters')])[7]
${hAdvancedFilters_1}   xpath:(//div[contains(text(),'Advanced Filters')])[6]
${btnPublished}         xpath:(//div[contains(text(),'Published')])[11]//parent::div//parent::button
${btnPublished_1}       xpath:(//div[contains(text(),'Published')])[6]//parent::div//parent::button
${btnUnPublished}       xpath:(//div[contains(text(),'UnPublished')])[6]//parent::div//parent::button
${btnLiked}             xpath:(//div[contains(text(),'Liked')])[6]//parent::div//parent::button
${btnLiked_1}           xpath:(//div[contains(text(),'Liked')])[5]//parent::div//parent::button
${btnBookmarked}        xpath:(//div[contains(text(),'Bookmarked')])[3]//parent::div//parent::button
${btnBookmarked_1}      xpath:(//div[contains(text(),'Bookmarked')])[2]//parent::div//parent::button
${btnPublic}            xpath:(//div[contains(text(),'Public')])[6]//parent::div//parent::button
${btnPublic_1}          xpath:(//div[contains(text(),'Public')])[5]//parent::div//parent::button
${btnMyContent}         xpath:(//div[contains(text(),'My Content')])[6]//parent::div//parent::button
${btnApply}             xpath:(//div[contains(text(),'Apply')])[9]//parent::button
${btnApply_1}           xpath:(//div[contains(text(),'Apply')])[8]//parent::button
${btnClearAll}          xpath:(//div[contains(text(),'Clear All')])[10]//parent::div//parent::button
${btnClearAll_1}        xpath:(//div[contains(text(),'Clear All')])[9]//parent::div//parent::button
${close}                xpath:(//i[contains(text(),'close')])[21]//parent::div//parent::button
${close_1}              xpath:((//div[contains(text(),'Advanced Filters')])[6])//following::i[contains(text(),'close')][1]
${sort_Latest}          xpath:(//span[contains(text(),'Latest')])[1]
${sort_MostViewed}      xpath:(//span[contains(text(),'Most Viewed')])[1]
${sort_Likes}           xpath:(//span[contains(text(),'Likes')])[1]
${sort_TitleA-Z}        xpath:(//span[contains(text(),'Title A-Z')])[1]
${sort-TitleZ-A}        xpath:(//span[contains(text(),'Title Z-A')])[1]


#Page
${Page_Title}           css:.article__title.noselect
${Page_description}     css:.article__description.noselect
${Page_Like}            css:button[title='Like']
${Page_Bookmark}        css:button[title='Bookmark']
${Page_TableofContent}  xpath://h3[contains(text(),'Table of Content')]
${Page_Related}         css:.related-title
${Page_School}          css:.logo-wrapper
${Page_Back}            xpath://i[contains(text(),'arrow_back')]/ancestor::button
${Page_Section_Title}   xpath:(//h2[@class='article__chapter-title'])[1]
