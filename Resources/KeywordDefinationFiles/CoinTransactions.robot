*** Settings ***
Documentation   All the keywords of Coin Transactions
Library         SeleniumLibrary
Resource        ../../PageObjects/CoinTransactions.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Coin Transactions of Student user
    [Arguments]                                                         ${StudentN}
    wait until Element is present in the page                           xpath://div[normalize-space()='Coin Transactions - ${StudentN}']
    page should contain element                                         xpath://div[normalize-space()='Coin Transactions - ${StudentN}']
    CoinTransactions.Verify Coin Transactions Table
    CoinTransactions.Verify Download Report of Coin Transactions
    go back

#-------------------------------------------------------------------------------------------
Verify Coin Transactions Table
    page should contain element                                         ${ct_date_th}
    page should contain element                                         ${ct_transactionid_th}
    page should contain element                                         ${ct_type_th}
    page should contain element                                         ${ct_number_th}
    page should contain element                                         ${ct_receivedfrom_th}
    page should contain element                                         ${ct_redeemed_th}
    page should contain element                                         ${ct_remarks_th}
    page should contain element                                         ${ct_balance_th}

#-------------------------------------------------------------------------------------------
Verify Download Report of Coin Transactions
    Empty Directory                     C:/Users/Rahul/Downloads/
    CoinTransactions.Click on Download Report
    Download should be done             C:/Users/Rahul/Downloads/
    Empty Directory                     C:/Users/Rahul/Downloads/

#-------------------------------------------------------------------------------------------
Click on Download Report
    page should contain element                                         ${ct_downloadreport}
    click on button                                                     ${ct_downloadreport}
    sleep                                                               10

