*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SubscriptionPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Page
    wait until Element is present in the page       ${hCurrentPlan}
    Element Text Should Be                          ${hCurrentPlan}         Current Plan Information
    Element Text Should Be                          ${hPlansAvailable}      Plans Available
    page should contain element                     ${PriceUnits}
