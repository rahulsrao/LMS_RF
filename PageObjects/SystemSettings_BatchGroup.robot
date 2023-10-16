*** Settings ***
Documentation   All the page objects and keywords of System Settings Batch Group Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hBatchGroup}                         xpath://div[@class='v-toolbar__title' and contains(text(),'BatchGroup')]
${btchgp_add}                          xpath://div[text()='ADD']/parent::button
${btchgp_IsActive}                     css:input[aria-label="Is Active?"]
${btchgp_Search}                       css:input[aria-label="Search"]
${btchgp_th_Name}                      css:th[aria-label="Name: Not sorted."]
${btchgp_th_Batch}                     css:th[aria-label="Batches: Not sorted."]
${btchgp_th_Actions}                   css:th[aria-label="Actions: Not sorted."]

#Add Batch Group
${hAddBatchGroup}                      xpath://div[text()='Add Batch Group']
${addbatchGroup_Close}                 xpath:(//i[text()='close']//ancestor::button)[4]
${addbatchGroup_Name}                  css:input[aria-label='Name']
${addbatchGroup_Active}                css:input[aria-label="Active"]
${addbatchGroup_Save}                  xpath://div[text()='Save']/parent::button
${addbatchGroup_Term}                  css:input[aria-label="Term"]

#Add Batch
${btch_selectbatch}                    css:input[aria-label='Select Batch']
${btch_close}                          xpath:(//div[normalize-space()='close'])[3]//parent::button
${btch_save}                           xpath:(//div[normalize-space()='Save'])[1]//parent::button

#Roll Over
${rollover_close}                      xpath:(//div[normalize-space()='close'])[1]//parent::button
${rollover_batchgroup}                 css:input[aria-label='BatchGroup']
${rollover_proceed}                    xpath:(//div[normalize-space()='proceed'])[1]//parent::button
${rollover_namechb}                    xpath:(//input[@role='checkbox' and @aria-checked='false'])[1]

#Edit Batch Group
${editbthgp_close}                      xpath:(//div[normalize-space()='close'])[5]//parent::button