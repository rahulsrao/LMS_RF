*** Settings ***
Documentation   All the page objects and keywords of Create Test Page
Library         SeleniumLibrary
Library          ../Generic/CreateTest.py
Resource        Generic.robot

*** Variables ***
${Video_Input_Title}                    css:textarea[placeholder='Title']
${Video_Input_Description}              css:textarea[placeholder='Description']
${Video_Addtags}                        css:input[placeholder='Add tags']
${Video_Classify}                       xpath://i[normalize-space()='edit']

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
${Video_Classify_h}                  xpath://div[contains(text(),'Classify')]
${Video_Classify_SelectSchool}       xpath://div[contains(text(),'Select School')]//following::select[1]
${Video_Classify_SelectCourse}       xpath://div[contains(text(),'Select Course')]//following::select[1]
${Video_Classify_SelectModule}       xpath://div[contains(text(),'Select Module')]//following::select[1]
${Video_Classify_SelectConcepts}     css:input[aria-label='Select Concepts']
${Video_Classify_Apply}              xpath://div[contains(text(),'Apply')]/parent::button


${Video_SelectaVideoType}           css:input[aria-label='Select a Video Type *']
${Video_SequenceNo}                 css:input[aria-label='Sequence No.']
${Video_videoPlayer}                xpath://video
${Video_Remove}                     xpath:(//div[contains(text(),'Remove')])[1]/parent::button

${Video_Uploadavideo}               css:input[name='image']
${Video_BrowseLibrary}              xpath://div[normalize-space()='Browse Library']/parent::button


#-------------------------------------------------------------------------------------------
#                                  Questions
#-------------------------------------------------------------------------------------------
${Video_MCQ}                        css:input[aria-label='Multiple Choice Question']
${Video_TF}                         css:input[aria-label='True or False']
${Video_FB}                         css:input[aria-label='Fill in the blank']
${Video_Searchb}                    css:input[aria-label='Type question statement to search']
${Video_AddQuestion}                xpath://div[normalize-space()='Add Question']/parent::button

${Video_CoverImage}                 css:input[name='coverImageRef']
${Video_SavePublish}                xpath://div[contains(text(),'save & Publish')]/parent::button

