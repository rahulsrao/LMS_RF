*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_BatchGroup.robot
Resource        ../../Resources/TestData/TestData.robot
Resource        ../../PageObjects/SystemSettings.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify BatchGroup page of Teacher User
    [Arguments]                                                     ${BatchGroupN}
    SystemSettings_BatchGroup.Click on BatchGroup button
    page should contain element                                     ${hbatchgroup}
    SystemSettings_BatchGroup.verify BatchGroup table
    SystemSettings_BatchGroup.Search a BatchGroup                   ${BatchGroupN}
    SystemSettings_BatchGroup.Enable Is Active
    SystemSettings_BatchGroup.Verify Term Name                      ${BatchGroupN}

#-------------------------------------------------------------------------------------------
Click on BatchGroup button
    page should contain element                                     ${ss_batchgroup}
    click on button                                                 ${ss_batchgroup}
    sleep                                                           5

#-------------------------------------------------------------------------------------------
verify BatchGroup table
    page should contain element                                     ${btchgp_th_name}
    page should contain element                                     ${btchgp_th_batch}
    page should contain element                                     ${btchgp_th_actions}

#-------------------------------------------------------------------------------------------
Verify Term Name
    [Arguments]                             ${BatchGroup}
    page should contain element             xpath://td[normalize-space()='${BatchGroup}']

#-------------------------------------------------------------------------------------------
Search a BatchGroup
    [Arguments]                                                     ${BatchGroup}
    page should contain element                                     ${btchgp_search}
    input text                                                      ${btchgp_search}                ${BatchGroup}

#-------------------------------------------------------------------------------------------
Enable Is Active
    page should contain element             ${btchgp_IsActive}
    ${btchgp_status}                 checkbox should be selected              ${btchgp_IsActive}
    IF         '${btchgp_status}' == 'False'
           click on button      ${trms_isactive}
           sleep                2
    END

#-------------------------------------------------------------------------------------------
Disable Is Active
    page should contain element             ${btchgp_IsActive}
    ${btchgp_status}                 checkbox should be selected              ${btchgp_IsActive}
    IF         '${btchgp_status}' == 'True'
           click on button      ${btchgp_IsActive}
           sleep                2
    END

#-------------------------------------------------------------------------------------------
verify BatchGroup page
    [Documentation]  This test case verifies System Settings Batches Group page
    [Tags]  Settings
    [Arguments]                         ${batchgrp}        ${Batch}
    wait until element is visible       ${hBatchGroup}              20
    page should contain element         ${hBatchGroup}
    page should contain element         ${btchgp_add}
    page should contain element         ${btchgp_search}
    page should contain element         ${btchgp_isactive}
    page should contain element         ${btchgp_th_name}
    page should contain element         ${btchgp_th_batch}
    page should contain element         ${btchgp_th_actions}
    page should contain element         xpath://td[normalize-space()='${batchgrp}']
    page should contain element         xpath://td/span[normalize-space()='${Batch}']
    page should contain element         xpath://td[normalize-space()='${batchgrp}']//following::td[2]//child::button[1]
    page should contain element         xpath://td[normalize-space()='${batchgrp}']//following::td[2]//child::button[2]
    page should contain element         xpath://td[normalize-space()='${batchgrp}']//following::td[2]//child::button[3]

#-------------------------------------------------------------------------------------------
Verify Add Batch Group
    click on button                     ${btchgp_add}
    sleep                               3
    page should contain element         ${haddbatchgroup}
    page should contain element         ${addbatchgroup_name}
    page should contain element         ${addbatchgroup_active}
    page should contain element         ${addbatchgroup_term}
    page should contain element         ${addbatchgroup_save}
    page should contain element         ${addbatchgroup_close}
    click on button                     ${addbatchgroup_close}

#-------------------------------------------------------------------------------------------
Add Batch Group
    [Arguments]                         ${btchgpname}          ${term}
    click on button                     ${btchgp_add}
    sleep                               3
    page should contain element         ${haddbatchgroup}
    input text                          ${addbatchgroup_name}               ${btchgpname}
    checkbox should be selected         ${addbatchgroup_active}
    click on button                     ${addbatchGroup_Term}
    sleep                               2
    input text                          ${addbatchGroup_Term}               ${term}
    page should contain element         xpath:(//span[text()='${term}'])[1]
    click on button                     xpath:(//span[text()='${term}'])[1]
    click on button                     ${addbatchgroup_save}
    sleep                               5
    page should contain element         xpath://td[normalize-space()='${btchgpname}']

#-------------------------------------------------------------------------------------------
verify Add Batches
    [Arguments]                         ${btchgpname}
    click on button                     xpath://td[normalize-space()='${btchgpname}']//following::td[2]//child::button[1]
    page should contain element         xpath://div[normalize-space()='Add Batches - ${btchgpname}']
    page should contain element         ${btch_selectbatch}
    page should contain element         ${btch_save}
    page should contain element         ${btch_close}
    click on button                     ${btch_close}

#-------------------------------------------------------------------------------------------
Add Batches
    [Arguments]                         ${btchgpname}          ${batch}
    click on button                     xpath://td[normalize-space()='${btchgpname}']//following::td[2]//child::button[1]
    page should contain element         xpath://div[normalize-space()='Add Batches - ${btchgpname}']
    click on button                     ${btch_selectbatch}
    sleep                               2
    page should contain element         xpath://div[normalize-space()='${batch}']//preceding::input[@role='checkbox'][1]
    click on button                     xpath://div[normalize-space()='${batch}']//preceding::input[@role='checkbox'][1]
    press keys                          ${btch_selectbatch}            CTRL+a   BACKSPACE
    click on button                     ${btch_save}
    sleep                               5

#-------------------------------------------------------------------------------------------
verify Roll Over
    [Arguments]                          ${batchgrp}
    wait until element is visible        xpath://td[normalize-space()='${batchgrp}']                20
    page should contain element          xpath://td[normalize-space()='${batchgrp}']
    click on button                      xpath://td[normalize-space()='${batchgrp}']//following::td[2]//child::button[2]
    sleep                                3
    page should contain element          xpath://div[normalize-space()='${batchgrp}']
    page should contain element          ${rollover_close}
    page should contain element          ${rollover_batchgroup}
    page should contain element          ${rollover_namechb}
    page should contain element          ${rollover_proceed}
    element should be disabled           ${rollover_proceed}
    click on button                      ${rollover_close}

#-------------------------------------------------------------------------------------------
Edit Batch Group
    [Arguments]                          ${btchgpname}              ${btchgpname1}
    click on button                      xpath://td[normalize-space()='${btchgpname}']//following::td[2]//child::button[3]
    sleep                                3
    page should contain element          xpath:(//div[normalize-space()='${btchgpname}'])[5]
    page should contain element          ${editbthgp_close}
    click on button                      ${editbthgp_close}
    click on button                      xpath://td[normalize-space()='${btchgpname}']//following::td[2]//child::button[3]
    sleep                                2
    page should contain element          ${addbatchgroup_name}
    press keys                           ${addbatchgroup_name}            CTRL+a   BACKSPACE
    input text                           ${addbatchgroup_name}            ${btchgpname1}
    click on button                      ${addbatchgroup_save}
    sleep                                5
    page should contain element          xpath://td[normalize-space()='${btchgpname1}']