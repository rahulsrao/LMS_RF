*** Settings ***
Documentation   All the page objects and keywords of Collection Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
#-------------------------------------------------------------------------------------------
${Collection_Title}                                     css:div[class='layout'] div[class='v-toolbar__title']
${Collection_Progress}                                  css:div[class='flex hidden-xs-only offset-md1 md2'] div[role='progressbar']
${Collection_TableOfContent}                            css:div[class='flex hidden-sm-and-down md2'] h3[class='padding-floater-heading floater-heading']
${Collection_TableOfContent_Arrow}                      css:div[class='flex hidden-sm-and-down md2'] i[class='v-icon v-icon--link material-icons theme--light']
${Collection_ContentSection}                            css:.card.white
${Collection_Previous}                                  css:button[title='Previous item']
${Collection_Next}                                      css:button[title='Next item']
${Collection_Completed}                                 xpath:(//h3[contains(text(),'Completed')])[2]
${Collection_Bookmark}                                  xpath://i[normalize-space()='bookmark_outline']//ancestor::button
${Collection_MarkasCompleted}                           xpath:(//div[contains(text(),'Mark as Completed')])[2]/parent::button
${Collection_Like}                                      xpath:(//button[@title='Like'])[1]
${Collection_Details}                                   css:button[title='Details']
#-------------------------------------------------------------------------------------------
#Collection Summary
${CollectionSummary_h}                                  xpath://div[normalize-space()='Collection Summary']
${CollectionSummary_closebtn}                           xpath://i[normalize-space()='close']/ancestor::button
#-------------------------------------------------------------------------------------------
${CollectionSummary_Title}                              xpath://b[normalize-space()='Title']
${CollectionSummary_Description}                        xpath://b[normalize-space()='Description']
${CollectionSummary_Createdby}                          xpath://b[normalize-space()='Created by']
${CollectionSummary_EstimatedReadingTime}               xpath://b[normalize-space()='Estimated Reading Time']
${CollectionSummary_Pages}                              xpath://b[normalize-space()='Pages']
${CollectionSummary_Assignment}                         xpath://b[normalize-space()='Assignment']
${CollectionSummary_Tests}                              xpath://b[normalize-space()='Tests']
${CollectionSummary_Coursesselected}                    xpath://b[normalize-space()='Courses selected']

