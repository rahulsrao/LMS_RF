*** Settings ***
Documentation   All the page objects and keywords of System Settings Terms Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hTerms}                                   xpath://div[text()='Terms']
${trms_Add}                                 xpath://div[text()='ADD']//parent::button
${trms_Search}                              css:input[aria-label="Search"]
${trms_Organization}                        xpath:(//input[@aria-label="Organizations"])[2]
${trms_IsActive}                            css:input[aria-label="Is Active?"]
${trms_refresh}                             xpath:(//i[text()='refresh'])[2]

#Add term
${trms_addterm_h}                               xpath://div[text()='Add Term']
${trms_addterm_name}                            css:input[aria-label="Name"]
${trms_addterm_copy}                            xpath://div[contains(text(),'Copy')]//parent::button
${trms_addterm_close}                           xpath:(//i[contains(text(),'close')]//parent::div)[2]//parent::button
${trms_addterm_start}                           css:input[aria-label="Start"]
${trms_addterm_End}                             css:input[aria-label="End"]
${trms_addterm_organization}                    xpath:(//input[@aria-label="Organizations"])[1]
${trms_addterm_Active}                          css:input[aria-label="Active"]
${trms_addterm_save}                            xpath://div[text()='Save']//parent::button

#Edit Term
${terms_Associatedbatchedwillbeinactive}        xpath://div[normalize-space()='Associated batched will be inactive.']
${term_done}                                    xpath://i[text()='done']//ancestor::button
${term_Close}                                   xpath:(//i[text()='close']//ancestor::button)[1]
