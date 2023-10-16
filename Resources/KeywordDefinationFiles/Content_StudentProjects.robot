*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_StudentProjects.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Student projects tab in Content Page
    select tab       STUDENT PROJECTS
    Content_StudentProjects.verify Page
    Content_StudentProjects.verify Filter
#-------------------------------------------------------------------------------------------
Verify Student projects tab in Content Page of Student user
    [Arguments]                                              ${StudentProject}
    select tab       STUDENT PROJECTS
    Content_StudentProjects.verify Student projects Page of Student user
    Content_StudentProjects.verify Filter
    Content_StudentProjects.Search a Student Project           ${StudentProject}
    Content_StudentProjects.Click on a Student Project         ${StudentProject}

#-------------------------------------------------------------------------------------------
verify Page
    wait until Element is present in the page           ${sp_search}
    page should contain element                         ${sp_search}
    page should contain element                         ${sp_Filter}
    page should contain element                         ${sp_sort_Latest}
    page should contain element                         ${sp_sort_MostViewed}
    page should contain element                         ${sp_sort_Likes}
    page should contain element                         ${sp_sort_TitleA-Z}
    page should contain element                         ${sp_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Student projects Page of Student user
    wait until Element is present in the page           ${sp_search}
    page should contain element                         ${sp_search}
    page should contain element                         ${sp_CreateProject}
    page should contain element                         ${sp_Filter}
    page should contain element                         ${sp_sort_Latest}
    page should contain element                         ${sp_sort_MostViewed}
    page should contain element                         ${sp_sort_Likes}
    page should contain element                         ${sp_sort_TitleA-Z}
    page should contain element                         ${sp_sort-TitleZ-A}
#-------------------------------------------------------------------------------------------
verify Filter
    click element                                       ${sp_Filter}
    wait until Element is present in the page           ${sp_hadvancedfilters}
    page should contain element                         ${sp_hadvancedfilters}
    page should contain element                         ${sp_Published}
    page should contain element                         ${sp_unpublished}
    page should contain element                         ${sp_Liked}
    page should contain element                         ${sp_Bookmarked}
    page should contain element                         ${sp_Public}
    page should contain element                         ${sp_MyContent}
    page should contain element                         ${sp_Apply}
    page should contain element                         ${sp_ClearAll}
    page should contain element                         ${sp_close}
    click element                                       ${sp_close}
    sleep                                               5
#-------------------------------------------------------------------------------------------
Search a Student Project
    [Arguments]                                         ${StudentProject}
    page should contain element                         ${sp_Search}
    click on button                                     ${sp_Search}
    page should contain element                         ${searchStdProjinp}
    input text                                          ${searchStdProjinp}           ${StudentProject}

#-------------------------------------------------------------------------------------------
Click on a Student Project
    [Arguments]                                          ${StudentProject}
    wait until Element is present in the page            css:div[title='${StudentProject}']
    page should contain element                          css:div[title='${StudentProject}']
    click on button                                      css:div[title='${StudentProject}']