*** Settings ***
Documentation   All the keywords of Calendar Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CalendarPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Calendar Page details
    CalendarPage.verify Calendar Page
    CalendarPage.verify filter options
    sleep                                               5

#-------------------------------------------------------------------------------------------
verify Calendar Page
    wait until element is visible                       ${hcalendar}             120
    page should contain element                         ${hcalendar}
    page should contain element                         ${btntoday}
    page should contain element                         ${btnnext}
    page should contain element                         ${btnprevious}
    page should contain element                         ${btnfilters}
    page should contain element                         ${btnmonth}
    set screenshot directory                            ../TestCases/Screenshots/Calender
    capture page screenshot
    page should contain element                         ${btnweek}
    click on button                                     ${btnmonth}
    capture page screenshot
    page should contain element                         ${btnday}
    click on button                                     ${btnday}
    capture page screenshot

#-------------------------------------------------------------------------------------------
verify filter options
    page should contain element                         ${btnfilters}
    click element                                       ${btnfilters}
    wait until element is visible                       ${hfilters}                 120
    page should contain element                         ${hfilters}
    page should contain element                         ${btnfilterback}
    sleep                                               15
    ${filters} =     Get Element Count                  xpath://*[@role='checkbox' and @aria-checked='false']
#    ${filters} =      get no of elements                xpath://input[@aria-checked='false']
    Printvalue                                          There are ${filters} Calendar Filter options
    click element                                       ${btnfilterback}

#-------------------------------------------------------------------------------------------
Verify Book Mentoring Slot page
    [Arguments]                                         ${courseN}      ${teacherN}
    wait until Element is present in the page           xpath://div[normalize-space()='Book Mentoring Slot - ${courseN}']
    page should contain element                         xpath://div[normalize-space()='Book Mentoring Slot - ${courseN}']
    Select Teacher                                      ${teacherN}
    page should contain element                         ${btntoday}
    page should contain element                         ${btnnext}
    page should contain element                         ${btnprevious}
    page should contain element                         ${btnmonth}
    set screenshot directory                            ../TestCases/Screenshots/Calender
    capture page screenshot
    page should contain element                         ${btnweek}
    click on button                                     ${btnmonth}
    capture page screenshot
    page should contain element                         ${btnday}
    click on button                                     ${btnday}
    capture page screenshot
    page should contain element                         xpath://div[normalize-space()='Book Mentoring Slot - ${courseN}']//preceding::button
    click on button                                     xpath://div[normalize-space()='Book Mentoring Slot - ${courseN}']//preceding::button
    sleep                                               5

#-------------------------------------------------------------------------------------------
Select Teacher
    [Arguments]                                         ${teacherN}
    wait until page contains element                    xpath:(//div[contains(text(),'${teacherN}')])[1]//ancestor::div[@role='listitem']//child::input         120
    page should contain element                         xpath:(//div[contains(text(),'${teacherN}')])[1]//ancestor::div[@role='listitem']//child::input
    click on button                                     xpath:(//div[contains(text(),'${teacherN}')])[1]//ancestor::div[@role='listitem']//child::input
    sleep                                               5