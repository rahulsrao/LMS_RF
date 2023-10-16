*** Settings ***
Documentation   All the page objects and keywords of System Settings Page
Library         SeleniumLibrary
Resource        Generic.robot
Resource        SystemSettings_UniversityInfo.robot
Resource        SystemSettings_Organizations.robot
Resource        SystemSettings_Courses.robot
Resource        SystemSettings_Program.robot
Resource        SystemSettings_Terms.robot
Resource        SystemSettings_Batches.robot
Resource        SystemSettings_BatchGroup.robot
Resource        SystemSettings_Users.robot
Resource        SystemSettings_OtherSettings.robot
Resource        SystemSettings_StoreSettings.robot
Resource        SystemSettings_ExternalTools.robot

*** Variables ***
${ss_UniversityInfo}                   xpath://div[contains(text(),'University Info')]//ancestor::a
${ss_Organizations}                    xpath://div[contains(text(),'Organizations')]//ancestor::a
${ss_Courses}                          xpath://div[contains(text(),'Courses')]//ancestor::a
${ss_Program}                          xpath://div[contains(text(),'Program')]//ancestor::a
${ss_Term}                             xpath://div[contains(text(),'Term')]//ancestor::a
${ss_Batch}                            xpath://div[contains(text(),'Batch')]//ancestor::a
${ss_BatchGroup}                       xpath://div[contains(text(),'BatchGroup')]//ancestor::a
${ss_Users}                            xpath://div[contains(text(),'Users')]//ancestor::a
${ss_OtherSettings}                    xpath://div[contains(text(),'Other Settings')]//ancestor::a
${ss_StoreSettings}                    xpath://div[contains(text(),'Store Settings')]//ancestor::a
${ss_ExternalTools}                    xpath://div[contains(text(),'External Tools')]//ancestor::a

${JWT_Token}                           eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6ImRhdndUaEdkU0VDeFZ6bldxRXpnQlEiLCJleHAiOjE3NjcxMTU4MDAsImlhdCI6MTYyMDE5NTM3MX0.aLEAw70Jg7cxGh8N5Qya427QxSPKBtLB36nNI7gPO00
