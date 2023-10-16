*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Create_LessonPlan.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Create LessonPlan
    [Arguments]                          ${LessonPlanT}        ${LessonPlanSummary}      ${school}       ${course}       ${module}          ${STitle}       ${Sdetails}
    Enter LessonPlan Title               ${LessonPlanT}
    Enter LessonPlan Summary             ${LessonPlanSummary}
    Create_LessonPlan.Select School Course and Module      ${school}       ${course}       ${module}
    Enter LessonPlan Section Title       ${STitle}
    Enter LessonPlan Details             ${Sdetails}
    go back
    handle alert                         ACCEPT
    sleep                                5
#-------------------------------------------------------------------------------------------
Enter LessonPlan Title
    [Arguments]                         ${Title}
    page should contain element         ${LessonPlan_Title}
    input text                          ${LessonPlan_Title}          ${Title}
#-------------------------------------------------------------------------------------------
Enter LessonPlan Summary
    [Arguments]                         ${Summary}
    page should contain element         ${LessonPlan_Summary}
    input text                          ${LessonPlan_Summary}          ${Summary}

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
Click on Classify
    page should contain element         ${LessonPlan_Classify}
    click on button                     ${LessonPlan_Classify}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Apply
    page should contain element         ${LessonPlan_Classify_apply}
    click on button                     ${LessonPlan_Classify_apply}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select School Course and Module
    [Arguments]                                       ${school}       ${course}       ${module}
    Create_LessonPlan.click on classify
    Create_LessonPlan.select school                   ${school}
    Create_LessonPlan.select course                   ${course}
    Create_LessonPlan.select module                   ${module}
    Create_LessonPlan.Click on Apply
    sleep                                             5

#-------------------------------------------------------------------------------------------
#                                  Select School
#-------------------------------------------------------------------------------------------
Select School
    [Arguments]                         ${school}
    page should contain element         ${LessonPlan_Classify_SelectSchool}
    Create_LessonPlan.click on select school
#    page should contain element         xpath://option[normalize-space()='${school}']
#    click on button                     xpath://option[normalize-space()='${school}']
    select from list by label           ${LessonPlan_Classify_SelectSchool}                          ${school}
    press keys                          ${LessonPlan_Classify_SelectSchool}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select School
    page should contain element         ${LessonPlan_Classify_SelectSchool}
    click on button                     ${LessonPlan_Classify_SelectSchool}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Course
#-------------------------------------------------------------------------------------------
Select Course
    [Arguments]                         ${Course}
    page should contain element         ${LessonPlan_Classify_SelectCourse}
    Create_LessonPlan.Click on Select Course
    select from list by label           ${LessonPlan_Classify_SelectCourse}                          ${Course}
    press keys                          ${LessonPlan_Classify_SelectCourse}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select Course
    page should contain element         ${LessonPlan_Classify_SelectCourse}
    click on button                     ${LessonPlan_Classify_SelectCourse}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Select Module
    [Arguments]                         ${Module}
    page should contain element         ${LessonPlan_Classify_SelectModule}
    Create_LessonPlan.Click on Select Module
    select from list by label           ${LessonPlan_Classify_SelectModule}          ${Module}
    press keys                          ${LessonPlan_Classify_SelectModule}           ESC
#-------------------------------------------------------------------------------------------
Click on Select Module
    page should contain element         ${LessonPlan_Classify_SelectModule}
    click on button                     ${LessonPlan_Classify_SelectModule}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Enter LessonPlan Section Title
    [Arguments]                         ${Title}
    page should contain element         ${LessonPlan_Sectiontitle}
    input text                          ${LessonPlan_Sectiontitle}            ${Title}
#-------------------------------------------------------------------------------------------
Enter LessonPlan Details
    [Arguments]                         ${Details}
    scroll element into view            ${LessonPlan_iframe}
    Select Frame                        ${LessonPlan_iframe}
    page should contain element         ${LessonPlan_Details}
    input text                          ${LessonPlan_Details}            ${Details}
    Unselect Frame

#-------------------------------------------------------------------------------------------
Click on delete LessonPlan Section
    page should contain element         ${LessonPlan_Delete}
    click on button                     ${LessonPlan_Delete}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on complete LessonPlan changes
    page should contain element         ${LessonPlan_Done}
    click on button                     ${LessonPlan_Done}
    sleep                               5

#-------------------------------------------------------------------------------------------
#                                  Add Section
#-------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------
Click on Add Section
    page should contain element         ${LessonPlan_AddSection}
    click on button                     ${LessonPlan_AddSection}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify LessonPlan Title
    [Arguments]                         ${LTitle}
    wait until element is visible       ${LessonPlan_Title}               120
    textarea should contain             ${LessonPlan_Title}               ${LTitle}
    go back
    sleep                               5
    handle alert                        ACCEPT
    sleep                               10