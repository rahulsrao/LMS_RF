*** Settings ***
Documentation   All the page objects and keywords of Video Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${VideoPlayer}                                  xpath://video[@id='videoPlayer']
${video_Description}                            css:.article__description
${Video_PreviousVideo}                          xpath://div[normalize-space()='Previous Video']/parent::button
${Video_NextVideo}                              xpath://div[normalize-space()='Next Video']/parent::button
${Video_Share}                                  xpath://div[normalize-space()='share']/parent::button
${Video_MoreOptions}                            xpath://div[normalize-space()='more_vert']/parent::button
${Video_Favorite}                               css:button[title='Like']

#//h1[normalize-space()='Test V3']






