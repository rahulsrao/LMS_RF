*** Settings ***
Documentation   All the keywords of Achievements Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Achievements.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Achievements page
    [Arguments]                             ${Achievement}
    page should contain element             ${achievements_h}
    page should contain element             ${achievements_filterbycategory}
    page should contain element             ${achievements_featured}
    page should contain element             ${achievements_approval}
    page should contain element             ${achievements_sortby}
    page should contain element             ${achievements_add}
    page should contain element             xpath://div[contains(text(),'${Achievement}')]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[4]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[3]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[2]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[1]
    page should contain element             ${achievements_share}
    close window

#-------------------------------------------------------------------------------------------
Click on Add Achievement
    page should contain element             ${achievements_add}
    click on button                         ${achievements_add}
    sleep                                   5
#-------------------------------------------------------------------------------------------
Click on Filter by category
    page should contain element             ${achievements_filterbycategory}
    click on button                         ${achievements_filterbycategory}
    sleep                                   2
#-------------------------------------------------------------------------------------------
Select a category
    [Arguments]                             ${Categories}
    page should contain element             xpath://div[contains(text(),'${Categories}')]
    click on button                         xpath://div[contains(text(),'${Categories}')]
    sleep                                   2
    press keys                              ${achievements_filterbycategory}                ESC
#-------------------------------------------------------------------------------------------
Click on Featurd
    page should contain element             ${achievements_featured}
    click on button                         ${achievements_featured}
    sleep                                   2
#-------------------------------------------------------------------------------------------
Select Featurd
    [Arguments]                             ${Featured}
    page should contain element             xpath://div[contains(text(),'${Featured}')]
    click on button                         xpath://div[contains(text(),'${Featured}')]
    sleep                                   2
    press keys                              ${achievements_featured}                         ESC
#-------------------------------------------------------------------------------------------
Click on approval
    page should contain element             ${achievements_approval}
    click on button                         ${achievements_approval}
    sleep                                   2
#-------------------------------------------------------------------------------------------
Select approval
    [Arguments]                             ${Approval}
    page should contain element             xpath://div[contains(text(),'${Approval}')]
    click on button                         xpath://div[contains(text(),'${Approval}')]
    sleep                                   2
    press keys                              ${achievements_approval}                         ESC
#-------------------------------------------------------------------------------------------
Click on sortby
    page should contain element             ${achievements_sortby}
    click on button                         ${achievements_sortby}
    sleep                                   2
#-------------------------------------------------------------------------------------------
Select sortby
    [Arguments]                             ${sortby}
    page should contain element             xpath://div[contains(text(),'${sortby}')]
    click on button                         xpath://div[contains(text(),'${sortby}')]
    sleep                                   2
    press keys                              ${achievements_sortby}                          ESC
#-------------------------------------------------------------------------------------------
Verify an Achievement of a Student
    [Arguments]                             ${Achievement}
    page should contain element             xpath://div[contains(text(),'${Achievement}')]

#-------------------------------------------------------------------------------------------
Click on Delete an Achievement
    [Arguments]                             ${Achievement}
    page should contain element             xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[4]
    click on button                         xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[4]
    sleep                                   4
#-------------------------------------------------------------------------------------------
Click on Edit button of Achievement
    [Arguments]                             ${Achievement}
    page should contain element             xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[3]
    click on button                         xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[3]
    sleep                                   4
#-------------------------------------------------------------------------------------------
Click on Create Wallpost of Achievement
    [Arguments]                             ${Achievement}
    page should contain element             xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[2]
    click on button                         xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[2]
    sleep                                   4
#-------------------------------------------------------------------------------------------
Click on Like button of Achievement
    [Arguments]                             ${Achievement}
    page should contain element             xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[1]
    click on button                         xpath:(//div[contains(text(),'${Achievement}')]]//ancestor::div[@class='flex xs12']//child::button)[1]
    sleep                                   4
#-------------------------------------------------------------------------------------------
click on Share button
    page should contain element             ${achievements_share}
#-------------------------------------------------------------------------------------------
Verify Achievements filter options
    page should contain element             ${achievements_filterbycategory}
    page should contain element             ${achievements_featured}
    page should contain element             ${achievements_approval}
    page should contain element             ${achievements_sortby}

#-------------------------------------------------------------------------------------------
Verify an Achievement
    [Arguments]                             ${Achievement}
    page should contain element             xpath://div[contains(text(),'${Achievement}')]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[4]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[3]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[2]
    page should contain element             xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[1]
    element should be disabled              xpath:(//div[@class='headline' and contains(text(),'${Achievement}')]//ancestor::div[@class='flex xs12']//child::button)[1]

#-------------------------------------------------------------------------------------------
Verify Add an achievement
    Achievements.Click on Add Achievement
    wait until Element is present in the page       ${achievements_addanachievement}
    page should contain element                     ${achievements_addanachievement}
    page should contain element                     ${achievements_addanachievement_selectacategory}
    page should contain element                     ${achievements_addanachievement_title}
    page should contain element                     ${achievements_addanachievement_description}
    page should contain element                     ${achievements_addanachievement_featured}
    page should contain element                     ${achievements_addanachievement_date}
    page should contain element                     ${achievements_addanachievement_attachfile}
    page should contain element                     ${achievements_addanachievement_add}
    page should contain element                     ${achievements_addanachievement_cancel}
    Achievements.Click on Cancel button of Add an achievement

#-------------------------------------------------------------------------------------------
Click on Cancel button of Add an achievement
    page should contain element                     ${achievements_addanachievement_cancel}
    click on button                                 ${achievements_addanachievement_cancel}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Verify Achievements page of Student user
    [Arguments]                                             ${Achievement}      ${student}
    wait until Element is present in the page               xpath://div[normalize-space()='Achievements - ${student}']
    page should contain element                             xpath://div[normalize-space()='Achievements - ${student}']
    Achievements.Verify Achievements filter options
    Achievements.Verify an Achievement                      ${Achievement}
    page should contain element                             ${achievements_share}
    Achievements.Verify Add an achievement

#-------------------------------------------------------------------------------------------