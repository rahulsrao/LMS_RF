*** Settings ***
Documentation   All the page objects and keywords of Reports Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${Question_h}                xpath://div[normalize-space()='Question']
${btn_Submit&next}           xpath://div[normalize-space()='Submit & next']/parent::button
${btn_AbortTest}             xpath://div[normalize-space()='Abort Test']/parent::button
${Timer}                     xpath://div[normalize-space()='Question']/following-sibling::span
${AbortTest}                 xpath://h3[normalize-space()='Abort Test']
${AbortTest_Yes}             xpath:(//div[contains(text(),' Yes')]/parent::button)[1]
${AbortTest_No}              xpath://div[contains(text(),' No')]/parent::button

${TestSubmission_h}         xpath://h1[normalize-space()='Test Submission']
${Backtotests_button}       xpath://div[normalize-space()='Back to tests']//parent::button
${Answered}                 xpath://div[normalize-space()='Answered']
${Unanswered}               xpath://div[normalize-space()='Unanswered']
${HintUsed}                 xpath://div[normalize-space()='Hint Used']
${MarksScored}              xpath://div[normalize-space()='Marks Scored']
${TotalMarks}               xpath://div[normalize-space()='Total Marks']
${GradedBy}                 xpath://div[normalize-space()='Graded By']
${GradedAt}                 xpath://div[contains(text(),'Graded At')]
${Summary_h}                xpath://h1[normalize-space()='Summary']