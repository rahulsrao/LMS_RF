*** Settings ***
Documentation   All the page objects and keywords of One Note Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hOneNote}                                     xpath://div[@class='v-toolbar__title'][contains(text(),'One Note')]
${hBatches}                                     xpath://div[@class='v-toolbar__title'][contains(text(),'Batches')]
${SelectBatch}                                  css:input[aria-label='Select Batch']
${BatchARTBATCHONE}                             xpath://div[contains(text(),'ART BATCH ONE')]
${WelcomeOneNote}                               id:titleWelcomeOneNote
${btn_signintoOneNote}                          id:signinLink
${inp_Email}                                    xpath://input[@id='i0116']
${iframe}                                       id:ltiformiframe