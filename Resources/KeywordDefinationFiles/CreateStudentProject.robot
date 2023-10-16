*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CreateStudentProject.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Create Project
    [Arguments]                                         ${ProjectName}        ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}       ${Sdetails}
    CreateStudentProject.Click on Save and Next button
    CreateStudentProject.Verify Validation
    CreateStudentProject.Enter Project Name             ${ProjectName}
    CreateStudentProject.Click on Save and Next button
    CreateStudentProject.Verify Validation
    CreateStudentProject.Enter Project description      ${Project_Description}
    CreateStudentProject.Click on Save and Next button
    CreateStudentProject.Verify Validation
    CreateStudentProject.Select School Course and Module         ${school}       ${course}       ${module}
    CreateStudentProject.Click on Save and Next button
    CreateStudentProject.Verify Validation
    CreateStudentProject.enter section title                    ${PTitle}
    CreateStudentProject.Enter Section details                  ${Sdetails}
    page should contain element                                 ${project_addsection}
    page should contain element                                 ${project_invitecollaboratorsn}
    go back
    handle alert                ACCEPT


#-------------------------------------------------------------------------------------------
select School Course and Module
    [Arguments]                      ${School}               ${Course}           ${Module}
    click on button                  ${btnedit}
    wait until element is visible    ${hclassify}            240
    page should contain element      ${hclassify}
    select from list by label        ${btnselectschool}      ${School}
    select from list by label        ${btnSelectCourse}      ${Course}
    select from list by label        ${btnSelectModule}      ${Module}
    click element                    ${btnApply}

#-------------------------------------------------------------------------------------------
Enter Project Name
    [Arguments]                     ${ProjectName}
    page should contain element     ${project_title}
    input text                      ${project_title}       ${ProjectName}

#-------------------------------------------------------------------------------------------
Enter Project description
    [Arguments]                     ${Description}
    page should contain element     ${Project_Description}
    input text                      ${Project_Description}       ${Description}

#-------------------------------------------------------------------------------------------
Enter Section Title
    [Arguments]                     ${SectionTitle}
    page should contain element     ${project_sectiontitle}
    input text                      ${project_sectiontitle}       ${SectionTitle}

#-------------------------------------------------------------------------------------------
Enter Section details
    [Arguments]                     ${SectionDescription}
    page should contain element     ${project_iframe}
    select frame                    ${project_iframe}
    page should contain element     ${project_details}
    input text                      ${project_details}            ${SectionDescription}
    Unselect Frame

#-------------------------------------------------------------------------------------------
Click on Save and Next button
    page should contain element     ${project_saveandnext}
    click on button                 ${project_saveandnext}
    sleep                           3

#-------------------------------------------------------------------------------------------
Verify Validation
    wait until element is visible   ${project_validation}       120
    page should contain element     ${project_validation}
