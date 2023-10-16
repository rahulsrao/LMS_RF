*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Video.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify video Title
    [Arguments]                                     ${title}
    wait until Element is present in the page       xpath://h1[@class='article__title' and normalize-space()='${title}']
    page should contain element                     xpath://h1[@class='article__title' and normalize-space()='${title}']

#-------------------------------------------------------------------------------------------
verify video details
    [Arguments]                                     ${videoT}
    Video.Verify video Title                        ${videoT}
    page should contain element                     ${video_favorite}
    page should contain element                     ${video_Description}
    page should contain element                     ${VideoPlayer}
    page should contain element                     ${video_previousvideo}
    page should contain element                     ${video_nextvideo}
    page should contain element                     ${video_share}
    go back