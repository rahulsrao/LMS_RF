*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../PageObjects/TopMenu.robot

*** Variables ***
${StudentsScoreAnalysis_h}                              xpath://i[normalize-space()='bar_chart']/parent::div
${StudentsScoreAnalysis_Score}                          xpath:(//i[normalize-space()='bar_chart']/parent::div/following::button)[1]
${StudentsScoreAnalysis_Avatar_th}                      xpath://th[contains(@aria-label,'Avatar:')]
${StudentsScoreAnalysis_Name_th}                        xpath://th[contains(@aria-label,'Name:')]
${StudentsScoreAnalysis_RollNumber_th}                  xpath://th[contains(@aria-label,'Roll Number:')]
${StudentsScoreAnalysis_Score_th}                       xpath://th[contains(@aria-label,'Score:')]


#//td[normalize-space()='Zeta Student']
#//td[normalize-space()='Zeta Student']/following::div[@role='progressbar']