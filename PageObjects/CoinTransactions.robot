*** Settings ***
Documentation   All the page objects Top Menu
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${ct_date_th}                                 xpath://th[contains(@aria-label,'Date:')]
${ct_TransactionId_th}                        xpath://th[contains(@aria-label,'Transaction Id:')]
${ct_Type_th}                                 xpath://th[contains(@aria-label,'Type:')]
${ct_Number_th}                               xpath://th[contains(@aria-label,'Number:')]
${ct_ReceivedFrom_th}                         xpath://th[contains(@aria-label,'Received From:')]
${ct_Redeemed_th}                             xpath://th[contains(@aria-label,'Redeemed:')]
${ct_Remarks_th}                              xpath://th[contains(@aria-label,'Remarks:')]
${ct_Balance_th}                              xpath://th[contains(@aria-label,'Balance:')]
${ct_DownloadReport}                          xpath://div[normalize-space()='Download Report']/parent::button
