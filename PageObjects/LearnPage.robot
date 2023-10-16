*** Settings ***
Documentation   All the page objects of Login page
Library         SeleniumLibrary
Resource        Generic.robot
Resource          ../Resources/TestData/TestData.robot

*** Variables ***
${Learn_Courses}                         xpath:(//div[contains(text(),'Apply filters')])//ancestor::button/preceding::button[2]
${Learn_Modules}                         xpath:(//div[contains(text(),'Apply filters')])//ancestor::button/preceding::button[1]
${Learn_ApplyFilters}                   xpath:(//div[contains(text(),'Apply filters')])//ancestor::button
${Learn_Clickthecardtoseethequestion}   xpath:(//label[contains(text(),'Click the card to see the question')])[1]
${Learn_FlashCard_Question}             xpath:(//div[contains(text(),'Question')])[1]//ancestor::nav
${Learn_FlashCard_Answer}               xpath:(//div[contains(text(),'Answer')])[1]//ancestor::nav
${Learn_Clickthecardtoseetheanswer}     xpath:(//label[contains(text(),'Click the card to see the answer')])[1]
${Learn_NextQ}                          xpath:(//button[@aria-label='Next visual'])[1]
${Learn_PreviousQ}                      xpath:(//button[@aria-label='Previous visual'])[1]

