*** Settings ***
Documentation   All the page objects and keywords of Discussion Forums Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hStudentPreview}              xpath://div[@class='v-toolbar__title ml-0' and text()='Student Preview']
${SelectBatch}                  css:input[aria-label='Select Batch']
${SearchName}                   css:input[aria-label='Search Name']
${ARTBATCHONE}                  xpath://div[contains(text(),'ART BATCH ONE')]//ancestor::a
${BadgesUni1}                   css:button[title='Badges Uni 1']
${hBadgesUni1}                  xpath://div[text()='Badges Uni 1' and @class='v-subheader title white--text theme--light']