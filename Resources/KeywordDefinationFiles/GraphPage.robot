*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/GraphPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify Page
    [Arguments]                                         ${school}
    wait until Element is present in the page           ${hGraph}
    page should contain element                         xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button
    page should contain element                         xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[1]
    page should contain element                         xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[2]
    page should contain element                         xpath://div[@class='name-wrapper'][contains(text(),'${school}')]//ancestor::button/following::button[3]
    page should contain element                         ${btnSubmissionGraph}
    page should contain element                         ${btnDifficultyGraph}
    page should contain element                         ${btnConceptGraph}
    go back