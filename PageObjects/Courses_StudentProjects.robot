*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${StudentProjects}                                xpath://a[normalize-space()='StudentProjects']
${StudentProjects_SortBy}                         xpath:(//span[contains(text(),'Sort By')])[6]
${StudentProjects_SortBy_Latest}                  xpath:(//span[contains(text(),'Latest')])[6]
${StudentProjects_SortBy_MostViewed}              xpath:(//span[contains(text(),'Most Viewed')])[5]
${StudentProjects_SortBy_Likes}                   xpath:(//span[contains(text(),'Likes')])[5]
${StudentProjects_SortBy_TitleA-Z}                xpath:(//span[contains(text(),'Title A-Z')])[6]
${StudentProjects_SortBy_TitleZ-A}                xpath:(//span[contains(text(),'Title Z-A')])[6]
${StudentProjects_Searchbytitle}                  xpath:(//input[@placeholder='Search by title'])[6]
${StudentProjects_Search}                         xpath:(//i[text()='search']/ancestor::button)[6]
${StudentProjects_SelectModule}                   xpath:(//input[@aria-label='Select Module'])[3]
${StudentProjects_CreateProject}                  xpath://div[normalize-space()='Create Project']//parent::button

${StudentProject_Title}                           css:.article__title
${StudentProject_Collaborators}                   xpath://h2[normalize-space()='Collaborators']
${StudentProject_rating}                          css:.v-rating
${StudentProject_ChapterTitle}                    css:section[class='article__section content-container'] h2[class='article__chapter-title']
${StudentProject_TableOfContent}                  css:.padding-floater-heading.floater-heading
${StudentProject_Related}                         css:.related-title

${StudentProject_Like}                            css:button[title='Like']
${StudentProject_Bookmark}                        css:button[title='Bookmark']
${StudentProject_MoreOptions}                     css:button[title='More Options']
${StudentProject_Back}                            xpath://i[contains(text(),'arrow_back')]/parent::div
${StudentProject_School}                          css:div[class='logo-wrapper'] div


#//div[@title='Normal Test 8682']
#(//div[@title='ART, Module 1'])[1]
#(//div[@title='Normal Test 8682']/following::i[contains(text(),'print')]/ancestor::button)[1]
#(//div[@title='Normal Test 8682']/following::div[contains(text(),'View')]/ancestor::button)[1]
