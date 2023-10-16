*** Settings ***
Documentation   All the keywords of CourseMap
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/CourseMap.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify a Batch in Course map
    [Arguments]                             ${BatchN}       ${Description}      ${Duration}     ${CpBatchN}     ${Date1}        ${Date2}        ${Module}
    Verify a Batch in Course map page       ${BatchN}
    Click on progress button of a course    ${BatchN}
    Verify Course Task Info window
    CourseMap.Click on a Batch              ${BatchN}
    CourseMap.Verify Course map of a Batch  ${BatchN}       ${Description}      ${Duration}     ${CpBatchN}     ${Date1}        ${Date2}        ${Module}
#-------------------------------------------------------------------------------------------
Verify a Batch in Course map of student user
    [Arguments]                             ${BatchN}      ${Module}
    Verify a Batch in Course map page       ${BatchN}
    CourseMap.Click on a Batch              ${BatchN}
    CourseMap.Verify Course map of a Batch of student user  ${BatchN}       ${Module}

#-------------------------------------------------------------------------------------------
Verify a Batch in Course map page
    [Arguments]                            ${BatchName}
    page should contain element            xpath://small[normalize-space()='${BatchName}']
#    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::div[contains(text(),'published')][1]/parent::button
    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::div[contains(text(),'Certificate')][1]/parent::button
    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::input[@aria-label='Start Date'][1]
    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::input[@aria-label='End Date'][1]
    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::button[2]

#-------------------------------------------------------------------------------------------
Click on progress button of a course
    [Arguments]                            ${BatchName}
    scroll element into view               xpath://small[normalize-space()='${BatchName}']/following::button[2]
    page should contain element            xpath://small[normalize-space()='${BatchName}']/following::button[2]
    click on button                        xpath://small[normalize-space()='${BatchName}']/following::button[2]
    sleep                                  5

#-------------------------------------------------------------------------------------------
Click on a Batch
    [Arguments]                            ${BatchName}
    page should contain element            xpath://small[normalize-space()='${BatchName}']
    click on button                        xpath://small[normalize-space()='${BatchName}']
    sleep                                  6

#-------------------------------------------------------------------------------------------
Verify Course map
    [Arguments]                                   ${BatchN}
    wait until element is visible                 ${CourseMap_h}            120
    page should contain element                   ${CourseMap_h}
    CourseMap.verify course name                  ${BatchN}
    CourseMap.Verify Course Info                  Test Course Descripton              2 Months 2 Weeks
#    CourseMap.Verify Copy from Batch              ${batch1}
    CourseMap.Select Start date of Course         ${Date3}
    CourseMap.select end date of course           ${Date4}
    CourseMap.click on course progress
    CourseMap.verify course task info window
    CourseMap.Verify module                       ${Module}
    go back
    sleep                                         10

#-------------------------------------------------------------------------------------------
Verify Course map of student user
    [Arguments]                                   ${BatchN}
    wait until element is visible                 ${CourseMap_h}            120
    page should contain element                   ${CourseMap_h}
    CourseMap.verify course name                  ${BatchN}
    element should be disabled                    ${coursemap_startdate}
    element should be disabled                    ${coursemap_enddate}
    CourseMap.Verify module of student            ${Module}
    go back
    sleep                                         10

#-------------------------------------------------------------------------------------------
Verify Course map of a Batch
    [Arguments]                                   ${BatchN}                       ${Description}      ${Duration}     ${CpBatchN}     ${Date1}        ${Date2}        ${Module}
    ${handles}=                                   Get Window Handles
    switch window                                 ${handles}[1]
    wait until element is visible                 ${CourseMap_h}                  120
    page should contain element                   ${CourseMap_h}
    CourseMap.verify course name                  ${BatchN}
    CourseMap.Verify Course Info                  ${Description}                  ${Duration}
    CourseMap.Verify Copy from Batch              ${batch1}
    CourseMap.Select Start date of Course         ${Date1}
    CourseMap.select end date of course           ${Date2}
    CourseMap.click on course progress
    CourseMap.verify course task info window
    CourseMap.Verify module                       ${Module}
    close window
    ${handles}=                                   Get Window Handles
    switch window                                 ${handles}[0]
#-------------------------------------------------------------------------------------------
Verify Course map of a Batch of student user
    [Arguments]                                   ${BatchN}       ${Module}
    ${handles}=                                   Get Window Handles
    switch window                                 ${handles}[1]
    wait until element is visible                 ${CourseMap_h}                  120
    page should contain element                   ${CourseMap_h}
    CourseMap.verify course name                  ${BatchN}
    CourseMap.Verify a module of course           ${Module}
    close window
    ${handles}=                                   Get Window Handles
    switch window                                 ${handles}[0]


#-------------------------------------------------------------------------------------------
Verify Course Name
    [Arguments]                        ${crs_name}
    page should contain element        ${coursemap_coursename}
    ${CourseName}=                     Get Text                            ${coursemap_coursename}
    should be equal                    ${CourseName}                       ${crs_name}

#-------------------------------------------------------------------------------------------
Verify Course Info
    [Arguments]                        ${Course_Description}               ${Course_Duration}
    CourseMap.click on course info
    CourseMap.change course description           ${Course_Description}
    CourseMap.change course duration              ${Course_Duration}
    CourseMap.Click on Cancel button of Course info

#-------------------------------------------------------------------------------------------
Verify Copy from Batch
    [Arguments]                        ${batch2}
    CourseMap.click on copy course map
    CourseMap.select batch of copy from          ${batch2}
    CourseMap.Close Copy from window

#-------------------------------------------------------------------------------------------
Verify Course Task Info window
    wait until page contains element    ${coursetaskinfo_h}                     120
    page should contain element         ${coursetaskinfo_h}
    page should contain element         ${coursetaskinfo_student_th}
    page should contain element         ${coursetaskinfo_completedmodules_th}
    page should contain element         ${coursetaskinfo_close}
    wait until element is visible       ${coursetaskinfo_close}                 120
    click element                       ${coursetaskinfo_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Verify module
    [Arguments]                         ${module}
    page should contain element         xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[1]
    click on add module note            ${module}
    CourseMap.Verify Add Module Note
    CourseMap.Select Start date of Module         ${module}                   ${date1}
    CourseMap.Select End date of Module           ${module}                   ${date2}
    CourseMap.Click on Module Progress            ${module}
    CourseMap.Verify Module Task Info
    CourseMap.Click on Module Edit                ${module}
    CourseMap.Verify Module Edit page
    CourseMap.Delete All Activities of Module     ${module}
#-------------------------------------------------------------------------------------------
Verify a module of course
    [Arguments]                         ${module}
    page should contain element         xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[1]
    click on button                     xpath://b[contains(text(),'${module}')]//following::i[contains(text(),'info')][1]//ancestor::button
    page should contain element         xpath://b[contains(text(),'${module}')]//following::b[contains(text(),'Total Time')][1]
    page should contain element         xpath://b[contains(text(),'${module}')]//following::b[contains(text(),'Total Spent')][1]
    page should contain element         xpath://b[contains(text(),'${module}')]//following::div[@title='Progress'][1]

#-------------------------------------------------------------------------------------------
Verify module of student
    [Arguments]                                   ${module}
    wait until Element is present in the page     xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[1]
    page should contain element                   xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[1]
    click on add module note                      ${module}
    wait until element is visible                 xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input[@aria-label='Start Date']           120
    element should be disabled                    xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input[@aria-label='Start Date']
    element should be disabled                    xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input[@aria-label='End Date']
    page should contain element                   xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::div[@role='progressbar']//button

#-------------------------------------------------------------------------------------------
Verify Add Module Note
    page should contain element         ${addmodulenote_h}
    page should contain element         ${addmodulenote_note}
    page should contain element         ${addmodulenote_forteacheronly}
    page should contain element         ${addmodulenote_save}
    page should contain element         ${addmodulenote_close}
    click on button                     ${addmodulenote_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Verify Module Task Info
    page should contain element         ${ModuleTaskInfo_h}
    page should contain element         ${moduletaskinfo_student_th}
    page should contain element         ${moduletaskinfo_completedtasks_th}
    CourseMap.close module task info

#-------------------------------------------------------------------------------------------
Verify Module Edit page
    page should contain element         ${moduleedit_h}
    page should contain element         ${moduleedit_name}
    page should contain element         ${moduleedit_description}
    page should contain element         ${moduleedit_save}
    CourseMap.close module edit window


#-------------------------------------------------------------------------------------------
#                                  Click Actions
#-------------------------------------------------------------------------------------------
Click on Course info
    page should contain element         ${coursemap_info}
    click element                       ${coursemap_info}
    sleep                               3

#-------------------------------------------------------------------------------------------
Click on Course progress
    page should contain element         ${coursemap_progress1}
    click element                       ${coursemap_progress1}
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Publish Course Map
    page should contain element         ${coursemap_publish}
    click element                       ${coursemap_publish}
    sleep                               3
#-------------------------------------------------------------------------------------------
Click on Save of Course info
    page should contain element         ${courseinfo_save}
    click element                       ${courseinfo_save}
    sleep                               3

#-------------------------------------------------------------------------------------------
Click on Cancel button of Course info
    page should contain element         ${courseinfo_close}
    click element                       ${courseinfo_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Click on Copy Course Map
    page should contain element         ${coursemap_copy}
    click element                       ${coursemap_copy}
    sleep                               3

#-------------------------------------------------------------------------------------------
Click on Add Module Note
    [Arguments]                         ${module}
    page should contain element         xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[2]
    click element                       xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::button)[2]
    sleep                               5
#-------------------------------------------------------------------------------------------
Click on Copy button of Copy from window
    page should contain element         ${copyfrom_copy}
    click element                       ${copyfrom_copy}
    sleep                               3

#-------------------------------------------------------------------------------------------
Close Copy from window
    page should contain element         ${copyfrom_close}
    click element                       ${copyfrom_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Click on Module Progress
    [Arguments]                         ${module}
    page should contain element         xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::div[@role='progressbar']//button
    click element                       xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::div[@role='progressbar']//button
    sleep                               5

#-------------------------------------------------------------------------------------------
Click on Module Edit
    [Arguments]                         ${module}
    page should contain element         xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::i[contains(text(),'edit')]//ancestor::button
    click element                       xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::i[contains(text(),'edit')]//ancestor::button
    sleep                               5


#-------------------------------------------------------------------------------------------
#                                  Handle Calender
#-------------------------------------------------------------------------------------------
Select Start date of Course
    [Arguments]                         ${StartDate}
    page should contain element         ${coursemap_startdate}
    input date                          ${coursemap_startdate}                ${StartDate}
    sleep                               3
    press keys                          ${coursemap_startdate}                ESC

#-------------------------------------------------------------------------------------------
Select End date of Course
    [Arguments]                         ${EndDate}
    page should contain element         ${coursemap_enddate}
    input date                          ${coursemap_enddate}                ${EndDate}
    sleep                               3
    press keys                          ${coursemap_enddate}                ESC

#-------------------------------------------------------------------------------------------
Select Start date of Module
    [Arguments]                         ${module}               ${StartDate}
    page should contain element         xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[1]
    input date                          xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[1]                ${StartDate}
    press keys                          xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[1]                ESC
    sleep                               5

#-------------------------------------------------------------------------------------------
Select End date of Module
    [Arguments]                         ${module}               ${EndDate}
    page should contain element         xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[2]
    input date                          xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[2]              ${EndDate}
    press keys                          xpath:(//b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::input)[2]                ESC
    sleep                               5

#-------------------------------------------------------------------------------------------
#                                  Handle Buttons
#-------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------
Change Course Description
    [Arguments]                         ${description}
    page should contain element         ${courseinfo_description}
    Press Keys                          ${courseinfo_description}               CTRL+a   BACKSPACE
    input text                          ${courseinfo_description}               ${description}

#-------------------------------------------------------------------------------------------
Change Course Duration
    [Arguments]                         ${duration}
    page should contain element         ${courseinfo_duration}
    Press Keys                          ${courseinfo_duration}               CTRL+a   BACKSPACE
    input text                          ${courseinfo_duration}               ${duration}

#-------------------------------------------------------------------------------------------
Select Batch of Copy From
    [Arguments]                         ${batch}
    page should contain element         ${copyfrom_selectbatch}
    click on button                     ${copyfrom_selectbatch}
    page should contain element         xpath://div[text()='${batch}']
    click on button                     xpath://div[text()='${batch}']
    press keys                          ${copyfrom_selectbatch}                ESC

#-------------------------------------------------------------------------------------------
Close Module Edit window
    page should contain element         ${moduleedit_close}
    click on button                     ${moduleedit_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Close Module Task Info
    page should contain element         ${moduletaskinfo_close}
    click on button                     ${moduletaskinfo_close}
    sleep                               3

#-------------------------------------------------------------------------------------------
Delete All Activities of Module
    [Arguments]                         ${module}
    page should contain element         xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::i[contains(text(),'delete')]//ancestor::button
    click element                       xpath://b[contains(text(),'${module}')]/ancestor::div[contains(@class,'topcardround ')]//child::i[contains(text(),'delete')]//ancestor::button
    sleep                               3
    handle alert                        ACCEPT