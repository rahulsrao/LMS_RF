*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CollectionPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Collection page
    [Arguments]                                    ${CollectionT}
    ${handles}=                                    Get Window Handles
    switch window                                  ${handles}[1]
    CollectionPage.Verify Collection Title         ${CollectionT}
    CollectionPage.Verify Collection Summary
    CollectionPage.Verify Collection page details
    close window
    ${handles}=                                    Get Window Handles
    switch window                                  ${handles}[0]
#-------------------------------------------------------------------------------------------
Verify Collection details page
    [Arguments]                                    ${CollectionT}
    CollectionPage.Verify Collection Title         ${CollectionT}
    CollectionPage.Verify Collection Summary
    CollectionPage.Verify Collection page details
    go back
#-------------------------------------------------------------------------------------------
Verify Collection Title
    [Arguments]                                     ${CollectionT}
    wait until Element is present in the page       ${collection_title}
    page should contain element                     ${collection_title}
    ${CollectionN}=                       Get Text  ${collection_title}
    should be equal                                 ${CollectionN}                      ${CollectionT}
#-------------------------------------------------------------------------------------------
Verify Collection details button
    page should contain element                     ${collection_details}
    click on button                                 ${collection_details}

#-------------------------------------------------------------------------------------------
Verify Collection Summary
    CollectionPage.Verify Collection details button
    wait until Element is present in the page       ${collectionsummary_h}
    page should contain element                     ${collectionsummary_h}
    page should contain element                     ${collection_title}
    page should contain element                     ${collectionsummary_description}
    page should contain element                     ${collectionsummary_createdby}
    page should contain element                     ${CollectionSummary_EstimatedReadingTime}
    page should contain element                     ${collectionsummary_pages}
    page should contain element                     ${collectionsummary_assignment}
    page should contain element                     ${collectionsummary_tests}
    page should contain element                     ${collectionsummary_coursesselected}
    CollectionPage.Close Collection Summary
#-------------------------------------------------------------------------------------------
Close Collection Summary
    page should contain element                     ${collectionsummary_closebtn}
    click on button                                 ${collectionsummary_closebtn}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Verify Collection page details
    page should contain element                     ${collection_like}
    page should contain element                     ${collection_progress}
    page should contain element                     ${collection_tableofcontent}
    page should contain element                     ${collection_tableofcontent_arrow}
    scroll element into view                        ${collection_bookmark}
    page should contain element                     ${collection_next}
    page should contain element                     ${collection_previous}
    ${Result}=      Run Keyword And Return Status   page should contain element    ${collection_completed}
    IF         '${Result}' == 'False'
        page should contain element                 ${collection_markascompleted}
    END
    page should contain element                     ${collection_bookmark}
#-------------------------------------------------------------------------------------------
