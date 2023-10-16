*** Settings ***
Documentation   All the page objects and keywords of Page tab in Conetent Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
#-------------------------------------------------------------------------------------------
#                                  Lesson Plan
#-------------------------------------------------------------------------------------------
${LessonPlan_Title}                   css:textarea[placeholder='Title']
${LessonPlan_Summary}                 css:textarea[placeholder='Summary']
${LessonPlan_tags}                    css:input[placeholder='Add tags']
${LessonPlan_Classify}                xpath://i[normalize-space()='edit']
${LessonPlan_Sectiontitle}            css:textarea[placeholder='Section title']
${LessonPlan_iframe}                  css:iframe[class='cke_wysiwyg_frame cke_reset']
${LessonPlan_Details}                 css:body p
${LessonPlan_AddSection}              xpath://div[normalize-space()='Add Section']/parent::button
${LessonPlan_SaveandNext}             xpath://div[normalize-space()='Save and Next']/parent::button
${LessonPlan_Done}                    xpath://i[normalize-space()='check']/ancestor::button
${LessonPlan_Delete}                  xpath://i[normalize-space()='delete']/ancestor::button

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
${LessonPlan_Classify_h}                  xpath://div[contains(text(),'Classify')]
${LessonPlan_Classify_SelectSchool}       xpath://div[contains(text(),'Select School')]//following::select[1]
${LessonPlan_Classify_SelectCourse}       xpath://div[contains(text(),'Select Course')]//following::select[1]
${LessonPlan_Classify_SelectModule}       xpath://div[contains(text(),'Select Module')]//following::select[1]
${LessonPlan_Classify_Apply}              xpath://div[contains(text(),'Apply')]/parent::button
