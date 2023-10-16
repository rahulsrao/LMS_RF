*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CreateVideo.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Create a Video
    [Arguments]                       ${VideoT}        ${VideoDescription}      ${school}       ${course}       ${module}    ${vtype}
    CreateVideo.Enter Video Title     ${VideoT}
    CreateVideo.Enter Video Description                 ${VideoDescription}
    CreateVideo.Select School Course and Module         ${school}       ${course}       ${module}
    CreateVideo.Select a Video Type                     ${vtype}
    CreateVideo.upload a video                          C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/Our Planet Earth.mp4
    CreateVideo.Add Video Cover Image                   C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/Earth.jpg
    go back
    handle alert                     ACCEPT
    sleep                            10

#-------------------------------------------------------------------------------------------
Enter Video Title
    [Arguments]                         ${Title}
    page should contain element         ${Video_Input_Title}
    input text                          ${Video_Input_Title}          ${Title}
#-------------------------------------------------------------------------------------------
Enter Video Description
    [Arguments]                         ${Description}
    page should contain element         ${Video_Input_Description}
    input text                          ${Video_Input_Description}    ${Description}

#-------------------------------------------------------------------------------------------
#                                  Classify
#-------------------------------------------------------------------------------------------
Click on Classify
    page should contain element         ${video_classify}
    click on button                     ${video_classify}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Apply
    page should contain element         ${video_classify_apply}
    click on button                     ${video_classify_apply}
    sleep                               5

#-------------------------------------------------------------------------------------------
Select School Course and Module
    [Arguments]                                 ${school}       ${course}       ${module}
    CreateVideo.click on classify
    CreateVideo.select school                   ${school}
    CreateVideo.select course                   ${course}
    CreateVideo.select module                   ${module}
    CreateVideo.Click on Apply
    sleep                                       5

#-------------------------------------------------------------------------------------------
#                                  Select School
#-------------------------------------------------------------------------------------------
Select School
    [Arguments]                         ${school}
    page should contain element         ${video_classify_selectschool}
    CreateVideo.click on select school
#    page should contain element         xpath://option[normalize-space()='${school}']
#    click on button                     xpath://option[normalize-space()='${school}']
    select from list by label           ${video_classify_selectschool}                          ${school}
    press keys                          ${video_classify_selectschool}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select School
    page should contain element         ${video_classify_selectschool}
    click on button                     ${video_classify_selectschool}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Course
#-------------------------------------------------------------------------------------------
Select Course
    [Arguments]                         ${Course}
    page should contain element         ${video_classify_selectcourse}
    CreateVideo.click on select Course
    select from list by label           ${video_classify_selectcourse}                          ${Course}
    press keys                          ${video_classify_selectcourse}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select Course
    page should contain element         ${video_classify_selectcourse}
    click on button                     ${video_classify_selectcourse}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Select Module
    [Arguments]                         ${Module}
    page should contain element         ${video_classify_selectmodule}
    CreateVideo.click on select Module
    select from list by label           ${video_classify_selectmodule}                           ${Module}
    press keys                          ${video_classify_selectmodule}                           ESC
#-------------------------------------------------------------------------------------------
Click on Select Module
    page should contain element         ${video_classify_selectmodule}
    click on button                     ${video_classify_selectmodule}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Select a Video Type
#-------------------------------------------------------------------------------------------
Select a Video Type
    [Arguments]                         ${vtype}
    page should contain element         ${video_selectavideotype}
    click on button                     ${video_selectavideotype}
    page should contain element         xpath:(//div[contains(text(),'${vtype}')])[1]/ancestor::a
    page should contain element         xpath:(//div[contains(text(),'${vtype}')])[1]/ancestor::a
    press keys                          ${video_selectavideotype}                           ESC

#-------------------------------------------------------------------------------------------
Click on Remove video Section
    page should contain element         ${video_remove}
    click on button                     ${video_remove}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Add Question
    page should contain element         ${Video_AddQuestion}
    click on button                     ${Video_AddQuestion}
    sleep                               5

#-------------------------------------------------------------------------------------------
Add Video Cover Image
    [Arguments]                         ${cimage}
    page should contain element         ${video_coverimage}
    choose file                         ${video_coverimage}         ${cimage}

#-------------------------------------------------------------------------------------------
Verify video Title
    [Arguments]                         ${title}
    textarea should contain             ${video_input_title}               ${title}

#-------------------------------------------------------------------------------------------
Upload a video
    [Arguments]                         ${videol}
    page should contain element         ${video_uploadavideo}
    choose file                         ${video_uploadavideo}         ${videol}

#-------------------------------------------------------------------------------------------
Verify video page
    [Arguments]                         ${VideoName}
    page should contain element         ${video_input_title}
    verify video title                  ${VideoName}
    page should contain element         ${video_input_description}
    page should contain element         ${video_classify}
    page should contain element         ${video_selectavideotype}
    page should contain element         ${video_sequenceno}
    page should contain element         ${video_videoplayer}
    page should contain element         ${video_remove}
    page should contain element         ${video_mcq}
    page should contain element         ${Video_TF}
    page should contain element         ${Video_FB}
    page should contain element         ${video_searchb}
    page should contain element         ${video_addquestion}
    page should contain element         ${video_coverimage}
    page should contain element         ${video_savepublish}
    go back
    handle alert                        ACCEPT