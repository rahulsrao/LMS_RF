*** Settings ***
Documentation   All the page objects and keywords of Create Test Page
Library         SeleniumLibrary
Library          ../Generic/CreateTest.py
Resource        Generic.robot

*** Variables ***
${txt_Title}          xpath://textarea[@placeholder='Title']
${btnEdit}            xpath://i[contains(text(),'edit')]
${hClassify}          xpath://div[text()='Classify']
${btnSelectCourse}    xpath://div[contains(text(),'Select Course *')]/following-sibling::div/select
${btnSelectModule}    xpath://div[contains(text(),'Select Module')]/following-sibling::div/select
${btnApply}           xpath://div[contains(text(),'Apply')]/parent::button
${ntpt}               css:input[aria-label='Practice Test'], input[aria-label='Normal Test']
${hrs}                css:input[aria-label='hrs']
${mins}               css:input[aria-label='mins']



