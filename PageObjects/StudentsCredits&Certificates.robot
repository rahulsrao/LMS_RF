*** Settings ***
Documentation   All the page objects and keywords of Attendance Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         String

*** Variables ***
${StudentsCredits&Certificates_h}                               xpath://div[contains(text(),'Students Credits & Certificates')]
${StudentsCredits&Certificates_TotalCredits}                    xpath://div[contains(text(),'Total Credits:')]
${StudentsCredits&Certificates_SortBy}                          css:input[aria-label='Sort By']
${StudentsCredits&Certificates_FilterByCertificatesStatus}      css:input[aria-label='Filter By Certificates Status']
${StudentsCredits&Certificates_Save}                            xpath://div[contains(text(),'Save')]/parent::button[@class='v-btn theme--light success']
${StudentsCredits&Certificates_RegenerateCertificates}          xpath://div[contains(text(),'Regenerate Certificates')]/parent::button
${StudentsCredits&Certificates_Name_th}                         xpath://th[contains(@aria-label,'Name:')]
${StudentsCredits&Certificates_CreditsEarned_th}                xpath://th[contains(@aria-label,'Credits Earned:')]
${StudentsCredits&Certificates_CertificateStatus_th}            xpath://th[contains(@aria-label,'Certificate Status:')]
${StudentsCredits&Certificates_CertificationDate_th}            xpath://th[contains(@aria-label,'Certification Date:')]
${StudentsCredits&Certificates_DownloadCertificate_th}          xpath://th[contains(@aria-label,'Download Certificate:')]
${StudentsCredits&Certificates_CertificationDate_h}             xpath:(//div[contains(text(),'Certification Date')])[2]
${StudentsCredits&Certificates_CertificationDate}               xpath:(//input[@aria-label='Certification Date*'])[2]
${StudentsCredits&Certificates_CertificationDate1}              xpath:(//input[@aria-label='Certification Date*'])[1]
${StudentsCredits&Certificates_CertificationDate_Cancel}        xpath:(//div[contains(text(),'Cancel')])[2]/parent::button
${StudentsCredits&Certificates_CertificationDate1_Cancel}       xpath:(//div[contains(text(),'Cancel')])[1]/parent::button
${StudentsCredits&Certificates_CertificationDate1_Save}         xpath:(//div[contains(text(),'Save')])[1]/parent::button
${StudentsCredits&Certificates_CertificationDate_Save}          xpath:(//div[contains(text(),'Save')])[2]/parent::button


#//div[contains(text(),'ART BATCH ONE')]
#//td[normalize-space()='Delta Student']/parent::tr//input
#((//div[contains(text(),'First Name A -> Z')])[1])//ancestor::a
