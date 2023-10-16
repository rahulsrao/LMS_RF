*** Settings ***
Documentation   All the Keyword Definations of My Courses Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/ManageLessonPlans.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Manage Lesson Plan
    page should contain element         ${managelessonplans_h}
    page should contain element         ${managelessonplans_addlessonplan}
    page should contain element         ${managelessonplans_more}
#    page should contain element         ${managelessonplans_week1}
    Add Lesson Plan
#    ManageLessonPlans.verify week
    go back
    sleep                               5

Add Lesson Plan
    Click on Lesson Plan
    verify add content window
    ManageLessonPlans.Click on Add Content Close
    sleep                                                  5
    Click on Lesson Plan
    sleep                                                  5
#    ManageLessonPlans.select week                          ${week}
    select leeson plan                                     ${leesonplan}
    ManageLessonPlans.Click on Add Content Close
    sleep                                                  5

Verify Week
    ManageLessonPlans.click on a week                                             ${week}
    sleep                                                                         5
    verify Lesson Plan added                                                      ${leesonplan}
    ManageLessonPlans.click on forward                                            ${leesonplan}
    ManageLessonPlans.verify move content to another week
    ManageLessonPlans.select week of move content to another week                 ${week}
    ManageLessonPlans.click on close button of move content to another week
    click on delete lesson plan                                                   ${leesonplan}

Verify Add Content window
    wait until page contains element        ${managelessonplans_addcontent_h}
    page should contain element             ${managelessonplans_addcontent_h}
    page should contain element             ${addcontent_close}
    page should contain element             ${addcontent_save}

Click on Lesson Plan
    page should contain element             ${managelessonplans_addlessonplan}
    click on button                         ${managelessonplans_addlessonplan}
    sleep                                   5

Select Leeson Plan
    [Arguments]                            ${LeesonPlan}
    page should contain element            xpath://div[contains(text(),'${LeesonPlan}')]/parent::div/preceding::input[1]
    click on button                        xpath://div[contains(text(),'${LeesonPlan}')]/parent::div/preceding::input[1]

Select Week
    [Arguments]                            ${week}
    page should contain element            ${managelessonplans_selectweek}
    click on button                        ${managelessonplans_selectweek}
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

Verify Lesson Plan added
    [Arguments]                           ${LeesonPlan}
    page should contain element           xpath://h3[normalize-space()='${LeesonPlan}']

Click on forward
    [Arguments]                           ${LeesonPlan}
    page should contain element           xpath://h3[normalize-space()='${LeesonPlan}']//following::button[1]
    click on button                       xpath://h3[normalize-space()='${LeesonPlan}']//following::button[1]

Click on Delete Lesson Plan
    [Arguments]                           ${LeesonPlan}
    page should contain element           xpath://h3[normalize-space()='${LeesonPlan}']//following::button[2]
    click on button                       xpath://h3[normalize-space()='${LeesonPlan}']//following::button[2]

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
