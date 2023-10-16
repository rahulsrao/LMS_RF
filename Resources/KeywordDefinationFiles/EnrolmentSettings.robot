*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/EnrolmentSettings.robot
#Resource        ../../PageObjects/Courses_Dashboard.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Enrolment Settings
    wait until page contains element            ${enrolmentsettings_h}
    page should contain element                 ${enrolmentsettings_h}
    enable max enrolments
    enable open enrolments
    disable public url
    enable public url
    click on close enrolment settings

Enable Open Enrolments
    page should contain element             ${enrolmentsettings_openenrolment}
    ${status}=  get open enrolments status
    IF      '${status}' == 'False'
        click on open enrolments
    END

Enable Max Enrolments
    page should contain element             ${enrolmentsettings_maxenrolments}
    ${status}=  Get Max Enrolments status
    IF      '${status}' == 'False'
        click on max enrolments
    END

Disable Open Enrolments
    page should contain element             ${enrolmentsettings_openenrolment}
    ${status}=  get open enrolments status
    IF      '${status}' == 'True'
        click on max enrolments
    END

Enable Public URL
    page should contain element             ${enrolmentsettings_publicurl}
    ${status}=  Get Public URL status
    IF      '${status}' == 'False'
        click on public url
    END

Disable Public URL
    page should contain element             ${enrolmentsettings_publicurl}
    ${status}=  Get Public URL status
    IF      '${status}' == 'True'
        click on public url
    END

Click on Max Enrolments
    page should contain element             ${enrolmentsettings_maxenrolments}
    click on button                         ${enrolmentsettings_maxenrolments}
    sleep                                   4

Click on Open Enrolments
    page should contain element             ${enrolmentsettings_openenrolment}
    click on button                         ${enrolmentsettings_openenrolment}
    sleep                                   4

Click on Public URL
    page should contain element             ${enrolmentsettings_publicurl}
    click on button                         ${enrolmentsettings_publicurl}
    sleep                                   4

Click on Update Enrolment Settings
    page should contain element             ${enrolmentsettings_update}
    click on button                         ${enrolmentsettings_update}
    sleep                                   3

Click on Close Enrolment Settings
    page should contain element             ${enrolmentsettings_close}
    click on button                         ${enrolmentsettings_close}
    sleep                                   3

Get Open Enrolments status
    ${Result}=      Run Keyword And Return Status       checkbox should be selected     ${enrolmentsettings_openenrolment}
    [Return]        ${Result}

Get Max Enrolments status
    ${Result}=      Run Keyword And Return Status       checkbox should be selected     ${enrolmentsettings_maxenrolments}
    [Return]        ${Result}

Get Public URL status
    ${Result}=      Run Keyword And Return Status       checkbox should be selected     ${enrolmentsettings_publicurl}
    [Return]        ${Result}
