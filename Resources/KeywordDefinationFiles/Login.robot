*** Settings ***
Documentation   All the keywords of Login page
Library         SeleniumLibrary
Resource        ../../PageObjects/LoginPage.robot
Resource        ../TestData/TestData.robot

*** Keywords ***
Verify Login page
    page should contain element         ${hLoveMySkool}
    page should contain element         ${btnContinueWithGoogle}
    page should contain element         ${inpUsername}
    page should contain element         ${inpPassword}
    page should contain element         ${btnShowPassword}
    page should contain element         ${btnRememberMe}
    page should contain element         ${btnSignIn}
    page should contain element         ${btnCreateAnAccount}
    page should contain element         ${btnForgotPassword}

Login with the user credentails
    [Arguments]     ${user_name}         ${password}
    Input Text      ${inpUsername}      ${username}
    Input Password  ${inpPassword}      ${password}
    click button    ${btnShowPassword}
    Click Button    ${btnSignIn}
    ${Result}=      Run Keyword And Return Status    element should be visible    ${btn_Logoutfromalldevices}
    IF         '${Result}' == 'True'
               Click Button    ${btn_Logoutfromalldevices}
               Input Text      ${inpUsername}      ${username}
               Input Password  ${inpPassword}      ${password}
               click button    ${btnShowPassword}
               Click Button    ${btnSignIn}
    END


wait until Element is located in the page
    SeleniumLibrary.Wait Until Element Is Visible       ${Error_Message}

verify the error message is correct
    Element Text Should Be          ${Error_Message}        Your username and password didn't match. Please try again.

Click on Create Account
    click element                  ${btnCreateAnAccount}

Click on Forgot Password
    click element                  ${btnForgotPassword}

Login
    [Arguments]                         ${url}                  ${user_name}            ${password}
    Open the browser with the url       ${url}
    Login with the user credentails     ${user_name}            ${password}
    sleep                                10

Navigate to Url page
    [Arguments]                         ${url}
    Open the browser with the url       ${url}