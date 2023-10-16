*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CreateAccount.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Create Account Options
    page should contain element     ${btnstudent}
    page should contain element     ${btnTeacherSchool}
    page should contain element     ${btnParent}