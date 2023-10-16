*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Create_Collections.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Create a collection
    [Arguments]                                         ${collectionT}        ${collectionDescription}    ${course}       ${module}    ${coldata}
    CreateCollections.Enter collections Title                             ${collectionT}
    CreateCollections.Enter collections Description                       ${collectionDescription}
#    CreateCollections.select a course                                     ${course}
#    CreateCollections.select a module                                     ${module}
    CreateCollections.Search a collection data                            ${coldata}
    CreateCollections.Add a data to Collection                            ${coldata}
    go back
    handle alert                     ACCEPT
    sleep                            10

#-------------------------------------------------------------------------------------------
Enter collections Title
    [Arguments]                         ${Title}
    page should contain element         ${collections_Title}
    input text                          ${collections_Title}          ${Title}
#-------------------------------------------------------------------------------------------
Enter collections Description
    [Arguments]                         ${Description}
    page should contain element         ${collections_description}
    input text                          ${collections_description}         ${Description}

#-------------------------------------------------------------------------------------------
#                                  Select Course
#-------------------------------------------------------------------------------------------
Select a Course
    [Arguments]                         ${coursename}
    CreateCollections.Click on Select Course
    page should contain element         xpath:(//div[contains(text(),'${coursename}')])[1]/parent::a
    page should contain element         xpath:(//div[contains(text(),'${coursename}')])[1]/parent::a
    press keys                          ${collections_course}                           ESC

#-------------------------------------------------------------------------------------------
Click on Select Course
    page should contain element         ${collections_course}
    click on button                     ${collections_course}
    sleep                               2

#-------------------------------------------------------------------------------------------
#                                  Select Module
#-------------------------------------------------------------------------------------------
Select a Module
    [Arguments]                         ${Modulename}
    CreateCollections.Click on Select Module
    page should contain element         xpath:(//div[contains(text(),'${Modulename}')])[1]/parent::a
    page should contain element         xpath:(//div[contains(text(),'${Modulename}')])[1]/parent::a
    press keys                          ${collections_module}                         ESC

#-------------------------------------------------------------------------------------------
Click on Select Module
    page should contain element         ${collections_module}
    click on button                     ${collections_module}
    sleep                               2
#-------------------------------------------------------------------------------------------
Click on Save and Next
    page should contain element         ${collections_SaveNext}
    click on button                     ${collections_SaveNext}
    sleep                               2


#-------------------------------------------------------------------------------------------
Add a data to Collection
    [Arguments]                         ${data}
    page should contain element         css:div[title='${data}']
    click on button                     css:div[title='${data}']
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify collection Title
    [Arguments]                         ${title}
    ${Result}=      Run Keyword And Return Status    textarea should contain             ${collections_Title}               ${title}
    IF         '${Result}' == 'False'
              sleep           10
              textarea should contain             ${collections_Title}               ${title}
    END



#-------------------------------------------------------------------------------------------
Search a collection data
    [Arguments]                         ${cdata}
    CreateCollections.click on search collection
    Enter a data to search              ${cdata}

#-------------------------------------------------------------------------------------------
Click on search collection
    page should contain element         ${collections_search}
    click on button                     ${collections_search}
    sleep                               2

#-------------------------------------------------------------------------------------------
Enter a data to search
    [Arguments]                         ${data}
    page should contain element         ${collections_searchbytitle}
    input text                          ${collections_searchbytitle}            ${data}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify collection page
    [Arguments]                         ${collectionname}
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    wait until element is visible       ${collections_Title}            120
    page should contain element         ${collections_Title}
    sleep                               10
    verify collection title             ${collectionname}
    page should contain element         ${collections_Description}
    page should contain element         ${collections_message}
    page should contain element         xpath://div[contains(text(),'All Classes')]/ancestor::button
    page should contain element         ${collections_module}
    page should contain element         ${collections_pages}
    page should contain element         ${collections_Assignments}
    page should contain element         ${collections_Tests}
    page should contain element         ${collections_search}
    page should contain element         ${collections_SaveNext}
    close window
    sleep                               5
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]