*** Settings ***
Documentation   All the Keyword Definations of My Courses Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/StudentsCredits&Certificates.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Students Credits & Certificates page
    [Arguments]                                 ${StudentName}
    page should contain element                 ${studentscredits&certificates_h}
    page should contain element                 ${studentscredits&certificates_sortby}
    page should contain element                 ${studentscredits&certificates_filterbycertificatesstatus}
    page should contain element                 ${studentscredits&certificates_totalcredits}
    StudentsCredits&Certificates.select sort by                              First Name A -> Z
    StudentsCredits&Certificates.select cetificate status                    Awarded
    StudentsCredits&Certificates.select cetificate status                    All
    StudentsCredits&Certificates.verify students credits & certificates table
    StudentsCredits&Certificates.select student                              ${StudentName}
    StudentsCredits&Certificates.click on save
    page should contain element                 ${studentscredits&certificates_certificationdate_h}
    StudentsCredits&Certificates.select certificate date                     ${date1}
    StudentsCredits&Certificates.click on save button of certification date
    StudentsCredits&Certificates.verify students credits & certificates table
    StudentsCredits&Certificates.click on regenerate certificate
    page should contain element                 ${studentscredits&certificates_certificationdate_h}
    StudentsCredits&Certificates.select regenerate certificate date          ${date2}
    StudentsCredits&Certificates.click on regenerate certificate cancel
    go back
    sleep                                       5

Select Sort By
    [Arguments]                         ${Sortop}
    page should contain element         ${studentscredits&certificates_sortby}
    click on button                     ${studentscredits&certificates_sortby}
    page should contain element         xpath:((//div[contains(text(),'${Sortop}')])[1])//ancestor::a
    click on button                     xpath:((//div[contains(text(),'${Sortop}')])[1])//ancestor::a

Select Cetificate Status
    [Arguments]                         ${CetificateStatus}
    page should contain element         ${studentscredits&certificates_filterbycertificatesstatus}
    click on button                     ${studentscredits&certificates_filterbycertificatesstatus}
    page should contain element         xpath:((//div[text()='${CetificateStatus}'])[1])//ancestor::a
    click on button                     xpath:((//div[text()='${CetificateStatus}'])[1])//ancestor::a
    sleep                               5

Select Student
    [Arguments]                         ${student}
    page should contain element         xpath://td[normalize-space()='${student}']/parent::tr//input
    click on button                     xpath://td[normalize-space()='${student}']/parent::tr//input
    sleep                               5
Click on Save
    page should contain element         ${studentscredits&certificates_save}
    click on button                     ${studentscredits&certificates_save}
    sleep                               5

Click on Regenerate Certificate
    page should contain element         ${studentscredits&certificates_regeneratecertificates}
    click on button                     ${studentscredits&certificates_regeneratecertificates}
    sleep                               3

Select Certificate Date
    [Arguments]                         ${date}
    page should contain element         ${studentscredits&certificates_certificationdate}
    input date                          ${studentscredits&certificates_certificationdate}           ${date}

Select Regenerate Certificate Date
    [Arguments]                         ${date}
    page should contain element         ${studentscredits&certificates_certificationdate}
    input date                          ${studentscredits&certificates_certificationdate1}           ${date}

Click on Cancel
    page should contain element         ${studentscredits&certificates_certificationdate_cancel}
    click on button                     ${studentscredits&certificates_certificationdate_cancel}

Click on Regenerate Certificate Cancel
    page should contain element         ${studentscredits&certificates_certificationdate1_cancel}
    click on button                     ${studentscredits&certificates_certificationdate1_cancel}


Click on Save button of Certification Date
    page should contain element         ${studentscredits&certificates_certificationdate_save}
    click on button                     ${studentscredits&certificates_certificationdate_save}
    sleep                               3

Verify Students Credits & Certificates Table
    page should contain element         ${studentscredits&certificates_name_th}
    page should contain element         ${studentscredits&certificates_creditsearned_th}
    page should contain element         ${studentscredits&certificates_certificatestatus_th}
    page should contain element         ${studentscredits&certificates_certificationdate_th}
    page should contain element         ${studentscredits&certificates_downloadcertificate_th}