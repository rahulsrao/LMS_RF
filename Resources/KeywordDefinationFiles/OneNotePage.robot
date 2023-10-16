*** Settings ***
Documentation   All the keywords of OneNote Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/OneNotePage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
verify OneNote page
    wait until element is visible               ${hOneNote}                         120
    page should contain element                 ${hOneNote}
    page should contain element                 ${hbatches}
    mouse over                                  ${SelectBatch}
    page should contain element                 ${SelectBatch}
    click element                               ${SelectBatch}
    page should contain element                 ${BatchARTBATCHONE}
    click element                               ${batchartbatchone}
    wait until element is visible               ${iframe}
    select frame                                ${iframe}
    wait until element is visible               ${welcomeonenote}               120
    page should contain element                 ${welcomeonenote}
    page should contain element                 ${btn_signintoOneNote}
    click on button                             ${btn_signintoonenote}
    unselect frame
    sleep                                       5
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[1]
    sleep                                       3
    close window
    ${handles}=                                 Get Window Handles
    switch window                               ${handles}[0]
    wait until element is visible               ${hOneNote}                    120
    page should contain element                 ${hOneNote}
    sleep                                       5