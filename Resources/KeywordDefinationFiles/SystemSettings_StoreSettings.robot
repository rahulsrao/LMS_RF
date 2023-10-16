*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SystemSettings_StoreSettings.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Store Settings
    sleep                                           5
    wait until element is visible                   ${StoreSettings_h}                                     20
    sleep                                           2
    page should contain element                     ${StoreSettings_SetDefaultPrices}
    click on button                                 ${StoreSettings_SetDefaultPrices}
    page should contain element                     ${StoreSettings_SetDefaultPrices_INR}
    page should contain element                     ${StoreSettings_SetDefaultPrices_GBP}
    page should contain element                     ${StoreSettings_SetDefaultPrices_USD}
    page should contain element                     ${StoreSettings_SetDefaultPrices_EUR}
    click on button                                 ${StoreSettings_SetDefaultPrices_INR}
    press keys                                      ${StoreSettings_Assignment_IndividualPrice}             ESC
    page should contain element                     ${StoreSettings_Info}
    page should contain element                     ${StoreSettings_Assignment_IndividualPrice}
    page should contain element                     ${StoreSettings_Assignment_SchoolPrice}
    page should contain element                     ${StoreSettings_Collection_IndividualPrice}
    page should contain element                     ${StoreSettings_Collection_SchoolPrice}
    page should contain element                     ${StoreSettings_Page_IndividualPrice}
    page should contain element                     ${StoreSettings_Page_SchoolPrice}
    page should contain element                     ${StoreSettings_Test_IndividualPrice}
    page should contain element                     ${StoreSettings_Test_SchoolPrice}
    page should contain element                     ${storesettings_save}
    page should contain element                     ${StoreSettings_Edit}
    click on button                                 ${StoreSettings_Edit}
    wait until element is visible                   ${StoreSettings_EditStoreInformation_h}                 20
    page should contain element                     ${StoreSettings_EditStoreInformation_h}
    page should contain element                     ${StoreSettings_EditStoreInformation_CompanyName}
    page should contain element                     ${StoreSettings_EditStoreInformation_Website}
    page should contain element                     ${StoreSettings_EditStoreInformation_Description}
    page should contain element                     ${StoreSettings_EditStoreInformation_Address}
    page should contain element                     ${StoreSettings_EditStoreInformation_AddressLine1}
    page should contain element                     ${StoreSettings_EditStoreInformation_AddressLine2}
    page should contain element                     ${StoreSettings_EditStoreInformation_City}
    page should contain element                     ${StoreSettings_EditStoreInformation_State}
    page should contain element                     ${StoreSettings_EditStoreInformation_Country}
    page should contain element                     ${StoreSettings_EditStoreInformation_Save}
    page should contain element                     ${StoreSettings_EditStoreInformation_Cancel}
    click on button                                 ${StoreSettings_EditStoreInformation_Cancel}
    wait until element is visible                   ${StoreSettings_h}                                      20
    page should contain element                     ${StoreSettings_h}

