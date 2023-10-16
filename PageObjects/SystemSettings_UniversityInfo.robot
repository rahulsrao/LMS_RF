*** Settings ***
Documentation   All the page objects and keywords of System Settings University Info Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py
*** Variables ***
${hUniversityInfo}              xpath://div[@class='v-toolbar__title' and text()='University Info']
${ui_Name}                      css:input[aria-label='Name']
${ui_ContactE-mail}             css:input[aria-label='Contact E-mail']
${ui_ContactNumber}             css:input[aria-label='Contact Number']
${ui_ContactAddress}            css:input[aria-label='Contact Address']
${ui_URL}                       css:input[aria-label='URL']
${ui_Board}                     css:input[aria-label='Board']
${ui_opt_all}                   xpath:(//div[contains(text(),'All')]//ancestor::a)[1]
${ui_opt_CBSE}                  xpath:(//div[contains(text(),'CBSE')]//ancestor::a)[1]
${ui_opt_CBSE-i}                xpath://div[contains(text(),'CBSE-i')]//ancestor::a
${ui_opt_CIE}                   xpath://div[contains(text(),'CIE')]//ancestor::a
${ui_opt_IB}                    xpath://div[contains(text(),'IB')]//ancestor::a
${ui_opt_ICSE}                  xpath://div[contains(text(),'ICSE')]//ancestor::a
${ui_opt_Other}                 xpath:(//div[contains(text(),'Other')]//ancestor::a)[1]
${ui_Selectanimage}             css:input[name='image']
${ui_submit}                    xpath://div[contains(text(),'submit')]//ancestor::button

