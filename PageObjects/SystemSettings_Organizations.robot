*** Settings ***
Documentation   All the page objects and keywords of System Settings University Info Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hOrganizations}               xpath://div[@class='v-toolbar__title' and contains(text(),'Organizations')]
${RefreshOrganization}          css:button[title='Refresh Organization']
${AddOrganization}              css:button[title='Add Organization']
${DeleteOrganization}           xpath:(//i[@title='Delete Organization']//ancestor::button)[1]
${EditOrganization}             xpath:(//i[@title='Edit Organization']//ancestor::button)[1]
${or_Add}                       xpath://div[contains(text(),'Add')]
${or_OrganizationName}          css:input[aria-label='Organization Name']
${or_Save}                      xpath://div[text()='Save']/parent::button
${or_Close}                     xpath://div[text()='Close']/parent::button
${or_Edit}                      xpath://div[contains(text(),'Edit')]
${or_clear}                     xpath://i[text()='clear']
${or_NewOrganization}           xpath://div[contains(text(),'Test Organization')]
${or_NewOrganization1}          xpath://div[contains(text(),'Test')]
${or_h_DeleteOrganization}      xpath://div[contains(text(),'Delete Organization')]
${or_done}                      xpath://i[text()='done']/ancestor::button
${or_delete_close}              xpath://i[text()='close']/ancestor::button
${conf_delete_toast}            xpath://div[@class='toasted toasted-primary success']
