*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/AssignmentsPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Assignment page
    [Arguments]                                       ${AssignmentN}
    ${handles}=                                       Get Window Handles
    switch window                                     ${handles}[1]
    wait until Element is present in the page         css:h2[title='${AssignmentN}']
    page should contain element                       css:h2[title='${AssignmentN}']
    AssignmentsPage.Verify Assignment details
    page should contain element                       ${pagination}
    page should contain element                       ${pagination_left}
    page should contain element                       ${pagination_right}
    ${Result}=      Run Keyword And Return Status   page should contain element    ${btn_backtoassignments}
    IF         '${Result}' == 'False'
        page should contain element                 ${btn_Save&Review}
        close window
    END
    close window
    ${handles}=                                       Get Window Handles
    switch window                                     ${handles}[0]
#-------------------------------------------------------------------------------------------
Verify Assignment page of student user
    [Arguments]                                       ${AssignmentN}
    wait until Element is present in the page         css:h2[title='${AssignmentN}']
    page should contain element                       css:h2[title='${AssignmentN}']
    AssignmentsPage.Verify Assignment details
    page should contain element                       ${pagination}
    page should contain element                       ${pagination_left}
    page should contain element                       ${pagination_right}
    ${Result}=      Run Keyword And Return Status   page should contain element    ${btn_backtoassignments}
    IF         '${Result}' == 'False'
        page should contain element                 ${btn_Save&Review}
    END
    go back

#-------------------------------------------------------------------------------------------
Verify Assignment details
    page should contain element                      ${AssignmentDetails_Course}
    page should contain element                      ${AssignmentDetails_module}
    page should contain element                      ${AssignmentDetails_duration}
    page should contain element                      ${AssignmentDetails_duedate}
    page should contain element                      ${AssignmentDetails_datesubmitted}
    page should contain element                      ${AssignmentDetails_grade}
    page should contain element                      ${AssignmentDetails_feedback}