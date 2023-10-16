*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py

*** Variables ***
${EnrolmentSettings_h}                      xpath://div[contains(text(),'Enrolment Settings')]
${EnrolmentSettings_MaxEnrolments}          css:input[aria-label='Max Enrolments']
${EnrolmentSettings_OpenEnrolment}          css:input[aria-label='Open Enrolment']
${EnrolmentSettings_PublicURL}              css:input[aria-label='Public URL']
${EnrolmentSettings_PublicURL_url}          css:textarea[readonly='readonly']
${EnrolmentSettings_Update}                 css:button[title='Update'] i[class='v-icon material-icons theme--light']
${EnrolmentSettings_Close}                  css:button[title='Close'] i[class='v-icon material-icons theme--light']