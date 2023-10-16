*** Settings ***
Documentation   File with reusable keywords and variables
Library         SeleniumLibrary
Library         OperatingSystem
Library          ../Generic/CreateTest.py
Library          ../Generic/BaseClass.py

*** Variables ***
#${url}                https://staging-app.lovemyskool.com
#${purl}               https://staging-app.lovemyskool.com
${browser}            Chrome
${Webdriver}          chromedriver

*** Keywords ***
#-------------------------------------------------------------------------------------------
Open the browser with the url
    [Arguments]                   ${url}
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary    profile.default_content_setting_values.automatic_downloads=${1}
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    IF       "${browser}" == "Chrome"
              ${Webdriver}=     Set Variable    chromedriver
    ELSE IF  "${browser}" == "Firefox"
              ${Webdriver}=     Set Variable    Firefox
    END
    SeleniumLibrary.Create Webdriver    ${browser}  executable_path=../../Resources/Drivers/${Webdriver}.exe    chrome_options=${chrome options}
    SeleniumLibrary.Go To               ${url}
#   SeleniumLibrary.open browser     ${URL}
    SeleniumLibrary.maximize browser window
    ZoomOut
#-------------------------------------------------------------------------------------------
wait until Element is present in the page
    [Arguments]                     ${element}
    Wait Until Element Is Visible   ${element}          240
#-------------------------------------------------------------------------------------------
Verify button
    [Arguments]                                     ${element}
    mouse over                                      ${element}
    wait until element is visible                   ${element}          120
    page should contain element                     ${element}
    sleep                                           2
#-------------------------------------------------------------------------------------------
click on button
    [Arguments]                                     ${element}
    ${ele}    Get WebElement                        ${element}
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    sleep                                           3
#-------------------------------------------------------------------------------------------
add date
    [Arguments]                                     ${element}          ${date}
    ${dp}     Get WebElement                        ${element}
    Execute Javascript   arguments[0].removeAttribute(\"readonly\")      ARGUMENTS    ${dp}
    Press Keys                                      ${dp}                CTRL+a   BACKSPACE
    Input Text                                      ${dp}                ${date}
    click on button                                 xpath://div[text()='OK']//parent::button
    sleep                                           2
#-------------------------------------------------------------------------------------------
input date
    [Arguments]                                     ${element}          ${date}
    ${dp}     Get WebElement                        ${element}
    Execute Javascript   arguments[0].removeAttribute(\"readonly\")      ARGUMENTS    ${dp}
    Press Keys                                      ${dp}                CTRL+a   BACKSPACE
    Input Text                                      ${dp}                ${date}
#-------------------------------------------------------------------------------------------
click on menu button
    [Arguments]                                     ${element}
    mouse over                                      ${element}
    page should contain element                     ${element}
    click on button                                 ${element}
    mouse over                                      xpath://div[contains(text(),'My Courses')]//parent::button
    sleep                                           5
#-------------------------------------------------------------------------------------------
Close Browser session
     SeleniumLibrary.Close Browser
#-------------------------------------------------------------------------------------------
scroll to the element
    [Arguments]                                              ${element}
    ${ele}    Get WebElement                                 ${element}
    Execute Javascript    arguments[0].scrollIntoView();     ARGUMENTS    ${ele}
#-------------------------------------------------------------------------------------------
Download should be done
    [Arguments]    ${directory}
    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...    Returns path to the file
    ${files}    List Files In Directory    ${directory}
    Length Should Be    ${files}    1    Should be only one file in the download folder
    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp   Chrome is still downloading a file
    ${file}    Join Path    ${directory}    ${files[0]}
    Log    File was successfully downloaded to ${file}
    [Return]    ${file}
#-------------------------------------------------------------------------------------------
#Syntax to send variable in Jenkins
#robot --variable  browser:%browsername% --include SMOKEORREGRESSION testdemo7.robot
#-------------------------------------------------------------------------------------------