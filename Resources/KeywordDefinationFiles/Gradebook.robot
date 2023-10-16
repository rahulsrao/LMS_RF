*** Settings ***
Documentation   All the keywords of GradeBook
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Gradebook.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Gradebook Page
    [Arguments]                                 ${studentname}
    Gradebook.verify Library Book
    Gradebook.verify student gradebook          ${studentname}

verify Library Book
    wait until element is visible       ${btnselectbatch}
    page should contain element         ${btnselectbatch}
    page should contain element         ${hgradebook}
    mouse over                          ${hgradebook}
    page should contain element         ${btnSelectTerm}
    page should contain element         ${selectcourse}
    click on button                     ${btnselectterm}
    wait until element is visible       ${term_spring2020}                      120
    page should contain element         ${term_spring2020}
    click on button                     ${term_spring2020}
    page should contain element         ${selectcourse}
    click on button                     ${selectcourse}
    page should contain element         ${Course_ART}
    click on button                     ${Course_ART}
    page should contain element         ${btnselectbatch}
    click on button                     ${btnselectbatch}
    page should contain element         ${Batch_ARTBATCHONE}
    click on button                     ${Batch_ARTBATCHONE}
    sleep                               5
    page should contain element         ${btnactivate}
    page should contain element         ${btnrefresh}
    page should contain element         ${btnactivate}
    page should contain element         ${btnpublish}
    page should contain element         ${btnbystudents}
    capture page screenshot


verify student Gradebook
    [Arguments]                         ${Studentname}
    click on button                     ${btnbystudents}
    wait until element is visible       ${btnSelectTerm}                       120
    page should contain element         ${btnselectterm}
    click on button                     ${btnSelectTerm}
    wait until element is visible       ${term_spring2020}                       120
    page should contain element         ${term_spring2020}
    click on button                     ${term_spring2020}
    Gradebook.Select a Student          ${Studentname}
    page should contain element         ${btnrefresh1}
    page should contain element         ${btnlibrarybooks}
    capture page screenshot


Select a Student
    [Arguments]                         ${studentname}
    Gradebook.Click on Select Student
    scroll element into view            xpath:(//div[contains(text(),'${studentname}')]//ancestor::a)[1]
    page should contain element         xpath:(//div[contains(text(),'${studentname}')]//ancestor::a)[1]
    click on button                     xpath:(//div[contains(text(),'${studentname}')]//ancestor::a)[1]
    press keys                          ${btnSelectStudent}                 ESC
    sleep                               3

Click on Select Student
    page should contain element         ${btnSelectStudent}
    click on button                     ${btnSelectStudent}