*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ForgotPasswordPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Create Account Options
    page should contain element     ${inpEMail}
    page should contain element     ${btnResetMyPassword}

