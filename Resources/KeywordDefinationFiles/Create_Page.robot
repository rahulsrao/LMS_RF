*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Create_Page.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Create Page
    [Arguments]                      ${PageT}        ${PageDescription}      ${school}       ${course}       ${module}          ${STitle}       ${Sdetails}
    Create_Page.Enter Page Title                  ${PageT}
    Create_Page.Enter Page Description            ${PageDescription}
    Create_Page.Select School Course and Module   ${school}       ${course}       ${module}
    Create_Page.enter section title               ${STitle}
    Create_Page.enter page details                ${Sdetails}
    Create_Page.Click on Add Section
    Create_Page.Verify Select section elements
    go back
    handle alert                ACCEPT
    sleep                                          5
#-------------------------------------------------------------------------------------------
Enter Page Title
    [Arguments]                         ${Title}
    page should contain element         ${Page_Title_Input}
    input text                          ${Page_Title_Input}          ${Title}
#-------------------------------------------------------------------------------------------
Enter Page Description
    [Arguments]                         ${Description}
    page should contain element         ${Page_Input_Description}
    input text                          ${Page_Input_Description}    ${Description}

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
Click on Classify
    page should contain element         ${page_classify}
    click on button                     ${page_classify}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Apply
    page should contain element         ${page_classify_apply}
    click on button                     ${page_classify_apply}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select School Course and Module
    [Arguments]                     ${school}       ${course}       ${module}
    Create_Page.click on classify
    Create_Page.select school                   ${school}
    Create_Page.select course                   ${course}
    Create_Page.select module                   ${module}
    Create_Page.Click on Apply
    sleep                           5

#-------------------------------------------------------------------------------------------
#                                  Select School
#-------------------------------------------------------------------------------------------
Select School
    [Arguments]                         ${school}
    page should contain element         ${page_classify_selectschool}
    Create_Page.click on select school
#    page should contain element         xpath://option[normalize-space()='${school}']
#    click on button                     xpath://option[normalize-space()='${school}']
    select from list by label           ${page_classify_selectschool}                          ${school}
    press keys                          ${page_classify_selectschool}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select School
    page should contain element         ${page_classify_selectschool}
    click on button                     ${page_classify_selectschool}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Course
#-------------------------------------------------------------------------------------------
Select Course
    [Arguments]                         ${Course}
    page should contain element         ${page_classify_selectcourse}
    Create_Page.click on select school
    select from list by label           ${page_classify_selectcourse}                          ${Course}
    press keys                          ${page_classify_selectcourse}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select Course
    page should contain element         ${page_classify_selectcourse}
    click on button                     ${page_classify_selectcourse}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Select Module
    [Arguments]                         ${Module}
    page should contain element         ${page_classify_selectmodule}
    Create_Page.click on select school
    select from list by label           ${page_classify_selectmodule}                           ${Module}
    press keys                          ${page_classify_selectmodule}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select Module
    page should contain element         ${page_classify_selectmodule}
    click on button                     ${page_classify_selectmodule}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Enter Section Title
    [Arguments]                         ${Title}
    scroll element into view            ${Page_Input_Sectiontitle}
    page should contain element         ${Page_Input_Sectiontitle}
    input text                          ${Page_Input_Sectiontitle}            ${Title}
#-------------------------------------------------------------------------------------------
Enter Page Details
    [Arguments]                         ${Details}
    scroll element into view            ${page_iframe}
    Select Frame                        ${page_iframe}
    page should contain element         ${Page_Input_Details}
    input text                          ${Page_Input_Details}            ${Details}
    Unselect Frame

#-------------------------------------------------------------------------------------------
Click on delete page Section
    page should contain element         ${page_delete}
    click on button                     ${page_delete}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on complete page changes
    page should contain element         ${page_done}
    click on button                     ${page_done}
    sleep                               5


#-------------------------------------------------------------------------------------------
#                                  Add Section
#-------------------------------------------------------------------------------------------
Verify Select section
    Click on Add Section
    Verify Select section elements

#-------------------------------------------------------------------------------------------
Click on Add Section
    page should contain element         ${Page_AddSection}
    click on button                     ${page_addsection}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Select section elements
    page should contain element         ${selectsection_h}
    page should contain element         ${section_addtext}
    page should contain element         ${section_addvideo}
    click on close select section

#-------------------------------------------------------------------------------------------
Click on AddText
    page should contain element         ${section_addtext}
    click on button                     ${section_addtext}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Add Video
    page should contain element         ${section_addvideo}
    click on button                     ${section_addvideo}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Close Select section
    page should contain element         ${section_close}
    click on button                     ${section_close}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify page Title
    [Arguments]                         ${title}
    textarea should contain             ${Page_Title_Input}               ${title}

