*** Settings ***
Documentation   Objects in Create AccountPage
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${inpEMail}                 id:id_email
${btnResetMyPassword}       xpath://input[@value='Reset My Password']