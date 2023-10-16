*** Settings ***
Documentation   All the page objects and keywords of Page tab in Conetent Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
#-------------------------------------------------------------------------------------------
#                                  Page
#-------------------------------------------------------------------------------------------
${Page_Title_Input}             css:textarea[placeholder='Title']
${Page_Input_Description}       css:textarea[placeholder='Description']
${Page_tags}                    css:input[placeholder='Add tags']
${Page_Classify}                xpath://i[normalize-space()='edit']
${Page_Input_Sectiontitle}      css:textarea[placeholder='Section title']
${Page_iframe}                  css:iframe[class='cke_wysiwyg_frame cke_reset']
${Page_Input_Details}           css:body p
${Page_AddSection}              xpath://div[normalize-space()='Add Section']/parent::button
${Page_SaveandNext}             xpath://div[normalize-space()='Save and Next']/parent::button
${Page_Done}                    xpath://i[normalize-space()='check']/ancestor::button
${Page_Delete}                  xpath://i[normalize-space()='delete']/ancestor::button


#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
${Page_Classify_h}                  xpath://div[contains(text(),'Classify')]
${Page_Classify_SelectSchool}       xpath://div[contains(text(),'Select School')]//following::select[1]
${Page_Classify_SelectCourse}       xpath://div[contains(text(),'Select Course')]//following::select[1]
${Page_Classify_SelectModule}       xpath://div[contains(text(),'Select Module')]//following::select[1]
${Page_Classify_SelectConcepts}     css:input[aria-label='Select Concepts']
${Page_Classify_Apply}              xpath://div[contains(text(),'Apply')]/parent::button

#-------------------------------------------------------------------------------------------
#                                  Section
#-------------------------------------------------------------------------------------------
${SelectSection_h}                  xpath://div[normalize-space()='Select section']
${Section_AddText}                  xpath://i[normalize-space()='subject']/ancestor::button
${Section_AddVideo}                 xpath://i[normalize-space()='video_library']/ancestor::button
${Section_Close}                    xpath://div[normalize-space()='Select section']/following::i[text()='close']
