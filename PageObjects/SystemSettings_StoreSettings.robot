*** Settings ***
Documentation   All the page objects and keywords of Other Settings Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
#Store Settings
${StoreSettings_h}                                          xpath://div[contains(text(),'Store Settings')]
${StoreSettings_Edit}                                       xpath://div[contains(text(),'Edit')]/parent::button
${StoreSettings_EditStoreInformation_h}                     xpath://div[normalize-space()='Edit Store Information']
${StoreSettings_EditStoreInformation_CompanyName}           css:input[aria-label='Company Name']
${StoreSettings_EditStoreInformation_Website}               css:input[aria-label='Website']
${StoreSettings_EditStoreInformation_Description}           css:input[aria-label='Description']
${StoreSettings_EditStoreInformation_Address}               css:input[aria-label='Address']
${StoreSettings_EditStoreInformation_AddressLine1}          css:input[aria-label='Address Line 1']
${StoreSettings_EditStoreInformation_AddressLine2}          css:input[aria-label='Address Line 2']
${StoreSettings_EditStoreInformation_City}                  css:input[aria-label='City']
${StoreSettings_EditStoreInformation_State}                 css:input[aria-label='State']
${StoreSettings_EditStoreInformation_Country}               css:input[aria-label='Country']
${StoreSettings_EditStoreInformation_Save}                  xpath:(//div[contains(text(),'Save')]//parent::button)[1]
${StoreSettings_EditStoreInformation_Cancel}                xpath:(//div[contains(text(),'Cancel')]//parent::button)[1]
${StoreSettings_SetDefaultPrices}                           css:input[type='text'][readonly='readonly']
${StoreSettings_SetDefaultPrices_INR}                       xpath:(//div[contains(text(),'INR')])[1]
${StoreSettings_SetDefaultPrices_GBP}                       xpath://div[contains(text(),'GBP')]
${StoreSettings_SetDefaultPrices_USD}                       xpath://div[contains(text(),'USD')]
${StoreSettings_SetDefaultPrices_EUR}                       xpath://div[contains(text(),'EUR')]
${StoreSettings_Info}                                       xpath://i[contains(text(),'info')]//ancestor::button
${StoreSettings_Assignment_IndividualPrice}                 xpath:(//input[@aria-label='Individual Price'])[1]
${StoreSettings_Assignment_SchoolPrice}                     xpath:(//input[@aria-label='School Price'])[1]
${StoreSettings_Collection_IndividualPrice}                 xpath:(//input[@aria-label='Individual Price'])[2]
${StoreSettings_Collection_SchoolPrice}                     xpath:(//input[@aria-label='School Price'])[2]
${StoreSettings_Page_IndividualPrice}                       xpath:(//input[@aria-label='Individual Price'])[3]
${StoreSettings_Page_SchoolPrice}                           xpath:(//input[@aria-label='School Price'])[3]
${StoreSettings_Test_IndividualPrice}                       xpath:(//input[@aria-label='Individual Price'])[4]
${StoreSettings_Test_SchoolPrice}                           xpath:(//input[@aria-label='School Price'])[4]
${StoreSettings_Save}                                       xpath://div[normalize-space()='Save']/parent::button