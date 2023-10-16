*** Settings ***
Documentation   Objects in Create AccountPage
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${btnStudent}            xpath://button[contains(text(),'Student')]
${btnTeacherSchool}      xpath://button[contains(text(),'Teacher or School')]
${btnParent}             xpath://button[contains(text(),'Parent')]