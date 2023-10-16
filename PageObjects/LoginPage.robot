*** Settings ***
Documentation   All the page objects of Login page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hLoveMySkool}                 id:heading-loop
${btnContinueWithGoogle}        css:a[href='/google/login/']
${inpUsername}                  id:id_login
${inpPassword}                  id:id_password
${btnShowPassword}              id:showpass
${btnSignIn}                    css:button[type='submit']
${btnCreateAnAccount}           xpath://a[contains(text(),'Create an account')]
${btnForgotPassword}            xpath://a[contains(text(),'Forgot Password?')]
${btnRememberMe}                id:id_remember
${Error_Message}                css:.label-danger
${btn_Logoutfromalldevices}     xpath://button[contains(text(),'Logout from all devices')]