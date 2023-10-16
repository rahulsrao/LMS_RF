*** Settings ***
Documentation   All the page objects and keywords of External Tools Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${ExternalTools_h}                                          xpath:(//div[contains(text(),'External Tools')])[3]
${ExternalTools_OneNoteSettings}                            xpath://div[contains(text(),'One Note Settings')]/parent::a
${ExternalTools_CopyLeaksSettings}                          xpath://div[contains(text(),'CopyLeaks Settings')]/parent::a

#OneNoteSettings
${OneNoteSettings_h}                                        xpath://div[contains(text(),'One Note Settings')]
${OneNoteSettings_ConsumerKey}                              css:input[aria-label='Consumer Key']
${OneNoteSettings_ConsumerSecret}                           css:input[aria-label='Consumer Secret / Shared Secret']
${OneNoteSettings_Delete}                                   xpath://div[normalize-space()='Delete']/parent::button
${OneNoteSettings_Update}                                   xpath://div[normalize-space()='Update']/parent::button

#CopyLeaks Settings
${CopyLeaksSettings_h}                                      xpath://div[contains(text(),'CopyLeaks Settings')]
${CopyLeaksSettings_Email}                                  css:input[aria-label='Email']
${CopyLeaksSettings_Key}                                    css:input[aria-label='Key']
${CopyLeaksSettings_Isactive?}                              css:input[aria-label='Is active?']
${CopyLeaksSettings_Submit}                                 xpath://div[contains(text(),'Submit')]/parent::button
