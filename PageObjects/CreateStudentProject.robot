*** Settings ***
Documentation   All the page objects and keywords of Create Test Page
Library         SeleniumLibrary
Library          ../Generic/CreateTest.py
Resource        Generic.robot

*** Variables ***
#-------------------------------------------------------------------------------------------
#                                  Project
#-------------------------------------------------------------------------------------------
${Project_Title}                                  css:textarea[placeholder='Title']
${Project_Description}                            css:textarea[placeholder='Description']
${Project_SaveandNext}                            xpath://div[normalize-space()='Save and Next']/parent::button
${Project_InviteCollaboratorsn}                   css:input[placeholder='Invite Collaborators']

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
${btnEdit}                                        xpath://i[contains(text(),'edit')]
${hClassify}                                      xpath://div[text()='Classify']
${btnSelectSchool}                                xpath://div[contains(text(),'Select School*')]/following-sibling::div/select
${btnSelectCourse}                                xpath://div[contains(text(),'Select Course *')]/following-sibling::div/select
${btnSelectModule}                                xpath://div[contains(text(),'Select Module')]/following-sibling::div/select
${btnApply}                                       xpath://div[contains(text(),'Apply')]/parent::button

#-------------------------------------------------------------------------------------------
#                                  Section
#-------------------------------------------------------------------------------------------
${Project_AddSection}                             xpath://div[contains(text(),'Add Section')]/parent::button
${Project_SectionTitle}                           css:textarea[placeholder='Section title']
${Project_iframe}                                 css:iframe[class='cke_wysiwyg_frame cke_reset']
${Project_Details}                                css:body p
${Project_Done}                                   xpath://i[normalize-space()='check']/ancestor::button
${Project_Delete}                                 xpath://i[normalize-space()='delete']/ancestor::button

${Project_Validation}                             xpath://div[@class='toasted toasted-primary error']





