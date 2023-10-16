*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_Terms.robot
Resource        ../../PageObjects/SystemSettings.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Terms page of Teacher User
    [Arguments]                         ${term}
    SystemSettings_Terms.Click on Term button
    SystemSettings_Terms.Verify Terms page Elements
    SystemSettings_Terms.Enable Is Active
    SystemSettings_Terms.Search a Term                       ${term}
    SystemSettings_Terms.Verify Term Name                    ${term}

#-------------------------------------------------------------------------------------------
Click on Term button
    page should contain element         ${ss_Term}
    click on button                     ${ss_Term}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Terms page Elements
    wait until element is visible           ${hterms}                   20
    page should contain element             ${hterms}
    page should contain element             ${trms_search}
    page should contain element             ${trms_organization}
    page should contain element             ${trms_refresh}
    page should contain element             ${trms_isactive}

#-------------------------------------------------------------------------------------------
Verify Term Name
    [Arguments]                             ${term}
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${term}']

#-------------------------------------------------------------------------------------------
Search a Term
    [Arguments]                             ${term}
    page should contain element             ${trms_search}
    input text                              ${trms_search}              ${term}
    sleep                                   5

#-------------------------------------------------------------------------------------------
Enable Is Active
    page should contain element             ${trms_isactive}
    ${Terms_status}                 checkbox should be selected              ${trms_isactive}
    IF         '${Terms_status}' == 'False'
           click on button      ${trms_isactive}
           sleep                2
    END

#-------------------------------------------------------------------------------------------
Disable Is Active
    page should contain element             ${trms_isactive}
    ${Terms_status}                 checkbox should be selected              ${trms_isactive}
    IF         '${Terms_status}' == 'True'
           click on button      ${trms_isactive}
           sleep                2
    END


#-------------------------------------------------------------------------------------------
verify Terms page
    [Documentation]  This test case verifies System Settings Terms page
    [Tags]  Settings
    [Arguments]                             ${term}                     ${term1}            ${organization}
    wait until element is visible           ${hterms}                   20
    page should contain element             ${hterms}
    page should contain element             ${trms_search}
    page should contain element             ${trms_organization}
    page should contain element             ${trms_refresh}
    page should contain element             ${trms_isactive}
    page should contain button              ${trms_add}
    input text                              ${trms_search}              ${term}
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${term}']
    wait until element is visible           xpath://div[@class='v-list__tile__title' and text()='${term}']//following::button       120
    page should contain button              xpath://div[@class='v-list__tile__title' and text()='${term}']//following::button
    click on button                         ${trms_isactive}
    sleep                                   5
    ${Result}=      Run Keyword And Return Status       page should contain element             xpath://div[@class='v-list__tile__title' and text()='${term1}']
    IF      '${Result}' == 'False'
        click on button                         ${trms_refresh}
    END
    click on button                         ${trms_organization}
    page should contain element             xpath:(//div[text()='${organization}'])[2]
    click on button                         xpath:(//div[text()='${organization}'])[2]
    click on button                         ${trms_search}

#-------------------------------------------------------------------------------------------
verify Add Term Page
    page should contain element             ${trms_add}
    click on button                         ${trms_add}
    sleep                                   5
    wait until element is visible           ${trms_addterm_h}
    page should contain element             ${trms_addterm_h}
    page should contain element             ${trms_addterm_close}
    page should contain element             ${trms_addterm_name}
    page should contain element             ${trms_addterm_start}
    page should contain element             ${trms_addterm_end}
    page should contain element             ${trms_addterm_organization}
    page should contain element             ${trms_addterm_active}
    page should contain element             ${trms_addterm_save}
    click on button                         ${trms_addterm_close}

#-------------------------------------------------------------------------------------------
Add Term
    [Arguments]                             ${term}             ${start}            ${end}          ${org}
    page should contain element             ${trms_add}
    click on button                         ${trms_add}
    sleep                                   5
    wait until element is visible           ${trms_addterm_h}
    page should contain element             ${trms_addterm_h}
    input text                              ${trms_addterm_name}            ${term}
    add date                                ${trms_addterm_start}           ${start}
    add date                                ${trms_addterm_end}             ${end}
    click on button                         ${trms_addterm_organization}
    page should contain element             xpath:(//div[text()='${org}'])[1]
    click on button                         xpath:(//div[text()='${org}'])[1]
    click on button                         ${trms_addterm_name}
    checkbox should be selected             ${trms_addterm_active}
#    click on button                         ${trms_addterm_active}
    click on button                         ${trms_addterm_save}
    sleep                                   5

#-------------------------------------------------------------------------------------------
verify new term
    [Arguments]                             ${term}
    wait until element is visible           ${hterms}                   20
    page should contain element             ${hterms}
    press keys                              ${trms_Search}              CTRL+a   BACKSPACE
    page should contain element             ${trms_isactive}
    click on button                         ${trms_isactive}
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${term}']

#-------------------------------------------------------------------------------------------
verify Edit term page
    [Arguments]                             ${term}
    sleep                                   5
    click on button                         xpath://div[@class='v-list__tile__title' and contains(text(),'${term}')]//following::button[1]
    sleep                                   2
#    page should contain element             xpath://div[@class='v-toolbar__title'  and text()='${term}']
    page should contain element             ${trms_addterm_copy}
    page should contain element             ${trms_addterm_close}
    page should contain element             ${trms_addterm_name}
#    ${tname}=  get text                     ${trms_addterm_name}
    ${tname}=  get element attribute        ${trms_addterm_name}                  value
    should be equal                         ${tname}                    ${term}
    page should contain element             ${trms_addterm_start}
    page should contain element             ${trms_addterm_end}
    page should contain element             ${trms_addterm_organization}
    page should contain element             ${trms_addterm_active}
    page should contain element             ${trms_addterm_save}
    click on button                         ${trms_addterm_close}

#-------------------------------------------------------------------------------------------
Edit Term
    [Arguments]                             ${term}             ${nterm}         ${start}            ${end}          ${org}
    sleep                                   5
    click on button                         xpath://div[@class='v-list__tile__title' and contains(text(),'${term}')]//following::button[1]
    sleep                                   2
    page should contain element             ${trms_addterm_copy}
    press keys                              ${trms_addterm_name}            CTRL+a   BACKSPACE
    input text                              ${trms_addterm_name}            ${nterm}
    add date                                ${trms_addterm_start}           ${start}
#    add date                                ${trms_addterm_end}             ${end}
    press keys                              ${trms_addterm_name}            ESC
    click on button                         ${trms_addterm_organization}
    page should contain element             xpath:(//div[text()='${org}'])[1]
    click on button                         xpath:(//div[text()='${org}'])[1]
    press keys                              ${trms_addterm_name}            ESC
    click on button                         ${trms_addterm_save}
    sleep                                   3
    reload page
    sleep                                   10
    page should contain element             xpath://div[@class='v-list__tile__title' and text()='${nterm}']

#-------------------------------------------------------------------------------------------
Copy Term
     [Arguments]                             ${term}
     sleep                                   5
     click on button                         xpath://div[@class='v-list__tile__title' and contains(text(),'${term}')]//following::button[1]
     sleep                                   2
     page should contain element             ${trms_addterm_copy}
     click on button                         ${trms_addterm_copy}
     click on button                         ${trms_addterm_close}
     sleep                                   3
     page should contain element             xpath://div[@class='v-list__tile__title' and text()='${term} (copy)']

#-------------------------------------------------------------------------------------------
Make Term Inactive
    [Arguments]                             ${term}
    sleep                                   5
    click on button                         xpath://div[@class='v-list__tile__title' and contains(text(),'${term}')]//following::button[1]
    sleep                                   2
    page should contain element             ${trms_addterm_active}
    click on button                         ${trms_addterm_active}
    click on button                         ${trms_addterm_save}
    page should contain element             ${terms_Associatedbatchedwillbeinactive}
    click on button                         ${term_done}
    sleep                                   3
    page should not contain element         xpath://div[@class='v-list__tile__title' and text()='${term}']

#-------------------------------------------------------------------------------------------
