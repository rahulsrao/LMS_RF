*** Settings ***
Documentation   All the page objects and keywords of Tests Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${TestSubmissions_h}                                            xpath://div[@class='v-toolbar__title'][normalize-space()='Test Submissions']
${Test_Course}                                                  xpath:(//span[@class='headline' and normalize-space()='Course:'])[2]
${Test_Module}                                                  xpath:(//span[@class='headline' and normalize-space()='Module:'])[2]
${Test_TotalSections}                                           xpath:(//span[@class='headline' and normalize-space()='Total Sections:'])[2]
${Test_TestDuration}                                            xpath:(//span[@class='headline' and normalize-space()='Test Duration:'])[2]

#Table headers
${TestSubmissions_Attempt}                                      xpath://th[contains(@aria-label,'Attempt:')]
${TestSubmissions_CreatedAt}                                    xpath://th[contains(@aria-label,'Created At:')]
${TestSubmissions_StartedAt}                                    xpath://th[contains(@aria-label,'Started At:')]
${TestSubmissions_SubmittedAt}                                  xpath://th[contains(@aria-label,'Submitted At:')]
${TestSubmissions_PointsEarned}                                 xpath://th[contains(@aria-label,'Points Earned:')]
${TestSubmissions_TimeLeft}                                     xpath://th[contains(@aria-label,'Time Left:')]
${TestSubmissions_Status}                                       xpath://th[contains(@aria-label,'Status:')]

#Test Submissions
${TestSubmissions_Batches_drp}                                  css:input[aria-label='Batches']
${TestSubmissions_Status_drp}                                   css:input[aria-label='Status']
${TestSubmissions_Search}                                       css:input[aria-label='Search']
${TestSubmissions_Graph}                                        xpath:(//div[normalize-space()='Graph']/parent::button)[1]
${TestSubmissions_Submitted}                                    xpath:(//div[normalize-space()='Submitted']/parent::button)[1]

#(//h2[@title='ART - Module 3 - Section Normal Test 1'])[2]

#-------------------------------------------------------------------------------------------
#Test Submission Graph

${TestSubmissions_Graph_Close}                                  xpath:(//i[@class='v-icon material-icons theme--light'][normalize-space()='close'])[3]/ancestor::button
${TestSubmissions_Graph_DifficultyGraph}                        css:#testChart
${TestSubmissions_Graph_ConceptsGraph}                          css:#conceptsChart
