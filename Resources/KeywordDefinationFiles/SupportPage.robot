*** Settings ***
Documentation   All the keywords of Support Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SupportPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Page
    wait until Element is present in the page       ${hSubmitaticket}
    Element Text Should Be                          ${hSubmitaticket}      Submit a ticket
    go back
#-------------------------------------------------------------------------------------------