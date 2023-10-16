*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${ProficiencyAnalysis_h}                                                   xpath://i[normalize-space()='bar_chart']/following-sibling::div
${SelfAnanlysis_Graph}                                                     id:testChart
${TestWiseAnalysis_Graph}                                                  id:barChart
${SelfAssessment}                                                          xpath:(//div[contains(text(),'Self Assessment')])[1]
