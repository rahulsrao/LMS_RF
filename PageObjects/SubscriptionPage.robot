*** Settings ***
Documentation   All the page objects and keywords of Subscription Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hCurrentPlan}         xpath://div[contains(text(),'Current Plan Information')]
${hPlansAvailable}      xpath://div[contains(text(),'Plans Available')]
${PriceUnits}           css:div[class='v-select__selections'] input