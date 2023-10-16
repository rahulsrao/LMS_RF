*** Settings ***
Documentation   All the page objects and keywords of Assignments Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${A_Search}                     xpath:(//i[contains(text(),'search')])[4]//parent::div//parent::button
${btnCreateAssignment}          xpath://div[contains(text(),'Create Assignment')]//parent::button
${A_Filter}                     xpath:(//i[contains(text(),'filter_list')])[4]//parent::div//parent::button
${A_hAdvancedFilters}           xpath:(//div[contains(text(),'Advanced Filters')])[4]
${A_Published}                  xpath:(//div[contains(text(),'Published')])[7]//parent::div//parent::button
${A_UnPublished}                xpath:(//div[contains(text(),'UnPublished')])[4]//parent::div//parent::button
${A_Liked}                      xpath:(//div[contains(text(),'Liked')])[4]//parent::div//parent::button
${A_Public}                     xpath:(//div[contains(text(),'Public')])[4]//parent::div//parent::button
${A_MyContent}                  xpath:(//div[contains(text(),'My Content')])[4]//parent::div//parent::button
${A_Apply}                      xpath:(//div[contains(text(),'Apply')])[6]//parent::button
${A_ClearAll}                   xpath:(//div[contains(text(),'Clear All')])[5]//parent::div//parent::button
${A_close}                      xpath:(//i[contains(text(),'close')])[13]//parent::div//parent::button
${A_sort_Latest}                xpath:(//span[contains(text(),'Latest')])[4]
${A_sort_MostViewed}            xpath:(//span[contains(text(),'Most Viewed')])[3]
${A_sort_Likes}                 xpath:(//span[contains(text(),'Likes')])[3]
${A_sort_TitleA-Z}              xpath:(//span[contains(text(),'Title A-Z')])[4]
${A_sort-TitleZ-A}              xpath:(//span[contains(text(),'Title Z-A')])[4]
${A_hQuestionBank}              xpath:(//div[contains(text(),'Question Bank')])[1]
${A_QBCount}                    xpath:(//div[@class='gamecircle'])[1]
${A_QBCount_1}                  xpath:(//div[@class='circle'])[1]
${A_QBMassUpload}               xpath:(//button[@title='Mass Upload'])[1]
${A_QBAdd}                      xpath:(//i[contains(text(),'add')])[1]
${A_hGameQuestions}             xpath:(//div[contains(text(),'Game Questions')])[1]
${A_GQCount}                    xpath:(//div[@class='gamecircle'])[2]
${A_GQMassUpload}               xpath:(//button[@title='Mass Upload'])[2]
${A_GQAdd}                      xpath:(//i[contains(text(),'add')])[2]
${A_hFlashCards}                xpath:(//div[contains(text(),'Flash Cards')])[1]
${A_FCCount}                    xpath:(//div[@class='circle'])[1]
${A_FCCount_1}                    xpath:(//div[@class='circle'])[2]

${searchAssgninp}               xpath:(//input[@placeholder='Search by title'])[4]
${A_hAdvancedFilters_1}         xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]
${A_Published_1}                xpath:(//div[contains(text(),'Published')])[4]//parent::div//parent::button
${A_Submitted}                  xpath:(//div[contains(text(),'Submitted')])[3]//parent::div//parent::button
${A_Graded}                     xpath:(//div[contains(text(),'Graded')])[1]//parent::div//parent::button
${A_Liked_1}                      xpath:(//div[contains(text(),'Liked')])[3]//parent::div//parent::button
${A_Public_1}                     xpath:(//div[contains(text(),'Public')])[3]//parent::div//parent::button
${A_Apply_1}                    xpath:(//div[contains(text(),'Apply')])[5]//parent::button
${A_ClearAll_1}                   xpath:(//div[contains(text(),'Clear All')])[4]//parent::div//parent::button
${A_close_1}                      xpath:((//div[contains(text(),'Advanced Filters')])[3])//following::i[contains(text(),'close')][1]