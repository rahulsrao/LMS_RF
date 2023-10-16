*** Settings ***
Documentation   All the Keyword Definations of My Courses Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ManagePages.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Manage Pages
    wait until element is visible       ${managepages_h}            120
    page should contain element         ${managepages_h}
    page should contain element         ${managepages_addpage}
    page should contain element         ${managepages_more}
#    page should contain element         ${managepages_week1}
    ManagePages.add pages
#    ManagePages.verify week
    go back
    sleep                               5

Add Pages
    ManagePages.Click on Add Page
    ManagePages.verify add content
    ManagePages.click on add content close
    sleep                               5
    ManagePages.Click on Add Page
    sleep                               5
#    ManagePages.select week                         ${week}
    ManagePages.select page                         ${page}
    ManagePages.Click on Add Content Close
    sleep                               5

Verify Week
    ManagePages.click on a week                                             ${week}
    sleep                                                       5
    ManagePages.verify page added                                           ${page}
    ManagePages.click on forward                                            ${page}
    ManagePages.verify move content to another week
    ManagePages.select week of move content to another week                 ${week}
    ManagePages.click on close button of move content to another week

Verify Add Content
    wait until page contains element        ${managepages_addcontent_h}       120
    page should contain element             ${managepages_addcontent_h}
    scroll element into view                ${addcontent_close}
    page should contain element             ${addcontent_close}
    page should contain element             ${addcontent_save}

Click on Add Page
    page should contain element             ${managepages_addpage}
    click on button                         ${managepages_addpage}
    sleep                                   5

Select Page
    [Arguments]                            ${Page}
    page should contain element            xpath://div[contains(text(),'${Page}')]/parent::div/preceding::input[1]
    click on button                        xpath://div[contains(text(),'${Page}')]/parent::div/preceding::input[1]

Select Week
    [Arguments]                            ${week}
    page should contain element            ${managepages_selectweek}
    click on button                        ${managepages_selectweek}
    page should contain element            xpath://div[text()='${week}']/ancestor::a
    click on button                        xpath://div[text()='${week}']/ancestor::a

Click on Add Content Close
    scroll element into view               ${addcontent_close}
    page should contain element            ${addcontent_close}
    click on button                        ${addcontent_close}

Click on Add Content Save
    scroll element into view               ${addcontent_save}
    page should contain element            ${addcontent_save}
    click on button                        ${addcontent_save}

Click on a week
    [Arguments]                            ${week}
    page should contain element            xpath://span[normalize-space()='${week}']
    click on button                        xpath://span[normalize-space()='${week}']
    sleep                                  5
#    //span[normalize-space()='${week}']//ancestor::li

Verify Page added
    [Arguments]                           ${page}
    page should contain element           xpath://h3[normalize-space()='${page}']

Click on forward
    [Arguments]                           ${page}
    page should contain element           xpath://h3[normalize-space()='${page}']//following::button[1]
    click on button                       xpath://h3[normalize-space()='${page}']//following::button[1]

Verify move content to another week
    page should contain element           ${movecontenttoanotherweek_h}

Select week of move content to another week
    [Arguments]                           ${week}
    page should contain element           ${movecontenttoanotherweek_selectweek}
    click on button                       ${movecontenttoanotherweek_selectweek}
    page should contain element           xpath://span[normalize-space()='${week}']//ancestor::li
    click on button                       xpath://span[normalize-space()='${week}']//ancestor::li

Click on Close button of move content to another week
    page should contain element           ${movecontenttoanotherweek_close}
    click on button                       ${movecontenttoanotherweek_close}

Click on Save button of move content to another week
    page should contain element           ${movecontenttoanotherweek_close}
    click on button                       ${movecontenttoanotherweek_close}