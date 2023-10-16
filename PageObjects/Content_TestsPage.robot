*** Settings ***
Documentation   All the page objects and keywords of Tests List Page
Library         SeleniumLibrary
Resource        Generic.robot
Resource          ../PageObjects/CreateTest.robot
Library           ../Generic/BaseClass.py

*** Variables ***
${T_Search}                     xpath:(//i[contains(text(),'search')])[5]//parent::div//parent::button
${btn_CreateTest}               xpath://div[contains(text(),'Create Test')]//ancestor::button
${h_CreateTest}                 css:div[class='v-dialog v-dialog--active'] div[class='v-toolbar__title']
${Sections}                     //input[@aria-label='Sections']
${Manually}                     xpath://button[@title='Create test with new questions']
${FromQuestionBank}             xpath://button[@title='Create test with existing questions']
${Adaptive}                     xpath://button[contains(@title,'Personalised test based on student')]
${Offline}                      xpath://button[@title='Create offline test.']
${btnclose}                     xpath:(//div[contains(text(),'Create Test')])[1]/following::button[1]
${T_Filter}                     xpath:(//i[contains(text(),'filter_list')])[5]//parent::div//parent::button
${btnchart}                     xpath:(//i[contains(text(),'bar_chart')])//parent::div//parent::button
${T_hAdvancedFilters}           xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]
${T_Published}                  xpath:(//div[contains(text(),'Published')])[5]//parent::div//parent::button | (//div[contains(text(),'Published')])[3]//parent::div//parent::button
${T_UnPublished}                xpath:(//div[contains(text(),'UnPublished')])[3]//parent::div//parent::button
${NormalTests}                  xpath:(//div[contains(text(),'Normal Tests')])[1]//parent::div//parent::button
${PracticeTests}                xpath:(//div[contains(text(),'Practice Tests')])[1]//parent::div//parent::button
${EasyTests}                    xpath:(//div[contains(text(),'Easy Tests')])[1]//parent::div//parent::button
${MediumTests}                  xpath:(//div[contains(text(),'Medium Tests')])[1]//parent::div//parent::button
${HardTests}                    xpath:(//div[contains(text(),'Hard Tests')])[1]//parent::div//parent::button
${PracticeTests(Adaptive)}      xpath:(//div[contains(text(),' Practice Tests (Adaptive)')])[1]//parent::div//parent::button
${NormalTests(Adaptive)}        xpath:(//div[contains(text(),'Normal Tests (Adaptive)')])[1]//parent::div//parent::button
${OfflineTests}                 xpath:(//div[contains(text(),'Offline Tests')])[1]//parent::div//parent::button
${T_Liked}                      xpath:(//div[contains(text(),'Liked')])[3]//parent::div//parent::button | (//div[contains(text(),'Liked')])[2]//parent::div//parent::button
${T_Public}                     xpath:(//div[contains(text(),'Public')])[3]//parent::div//parent::button | (//div[contains(text(),'Public')])[2]//parent::div//parent::button
${T_MyContent}                  xpath:(//div[contains(text(),'My Content')])[3]//parent::div//parent::button
${T_Apply}                      xpath:(//div[contains(text(),'Apply')])[5]//parent::button | (//div[contains(text(),'Apply')])[4]//parent::button
${T_ClearAll}                   xpath:(//div[contains(text(),'Clear All')])[3]//parent::div//parent::button | (//div[contains(text(),'Clear All')])[2]//parent::div//parent::button
${T_close}                      xpath://div[contains(@class,'v-dialog v-dialog--active')]//div[contains(text(),'Advanced Filters')]//i[contains(text(),'close')]//ancestor::button
${T_sort_Latest}                xpath:(//span[contains(text(),'Latest')])[5]
${T_sort_TitleA-Z}              xpath:(//span[contains(text(),'Title A-Z')])[5]
${T_sort-TitleZ-A}              xpath:(//span[contains(text(),'Title Z-A')])[5]
${T_hQuestionBank}              xpath:(//div[contains(text(),'Question Bank')])[2]
${T_QBCount}                    xpath:(//div[@class='gamecircle'])[3]
${T_QBCount_1}                  xpath:(//div[@class='circle'])[3]
${T_QBMassUpload}               xpath:(//button[@title='Mass Upload'])[3]
${T_QBAdd}                      xpath:(//i[contains(text(),'add')])[3]
${T_hGameQuestions}             xpath:(//div[contains(text(),'Game Questions')])[2]
${T_GQCount}                    xpath:(//div[@class='gamecircle'])[4]
${T_GQMassUpload}               xpath:(//button[@title='Mass Upload'])[4]
${T_GQAdd}                      xpath:(//i[contains(text(),'add')])[4]
${T_hFlashCards}                xpath:(//div[contains(text(),'Flash Cards')])[2]
${T_FCCount}                    xpath:(//div[@class='circle'])[2]
${T_FCCount_1}                  xpath:(//div[@class='circle'])[4]

${searchTestinp}                xpath:(//input[@placeholder='Search by title'])[5]
${NotSubmitted}                 xpath:(//div[contains(text(),'Not Submitted')])[1]//parent::div//parent::button
${Submitted}                    xpath:(//div[contains(text(),'Submitted')])[2]//parent::div//parent::button
