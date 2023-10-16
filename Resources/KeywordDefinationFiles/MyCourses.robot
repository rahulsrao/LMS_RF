*** Settings ***
Documentation   All the Keyword Definations of My Courses Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/MyCourses.robot
Resource        ../../PageObjects/TopMenu.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify My Courses page of Teacher User
    [Arguments]                                      ${Course}           ${Batch1}       ${Batch2}
    click on button                                  ${TopMenu_MyCourses}
    sleep                                            5
    wait until element is visible                    ${mycourses_h}          20
    page should contain element                      ${mycourses_h}
    page should contain element                      ${MyCourses_SelectCourses}
    click on button                                  ${MyCourses_SelectCourses}
    wait until element is visible                    xpath://div[contains(text(),'All Courses')]/ancestor::a        20
    page should contain element                      xpath://div[contains(text(),'All Courses')]/ancestor::a
    page should contain element                      xpath://div[contains(text(),'${Course}')]/ancestor::a
    click on button                                  xpath://div[contains(text(),'${Course}')]/ancestor::a
    page should contain element                      xpath://small[contains(text(),'${Batch1}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    page should contain element                      xpath://small[contains(text(),'${Batch2}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    click on button                                  xpath://small[contains(text(),'${Batch1}')]
    sleep                                            10
    wait until Element is present in the page        ${MyCourses_CourseName}
    ${hCourse}=     Get Text                         ${MyCourses_CourseName}
    printvalue                                       ${hCourse}
    go back
    sleep                                            10

#-------------------------------------------------------------------------------------------
Verify My Courses page
    [Arguments]                                      ${Course}           ${Batch1}       ${Batch2}
    click on button                                  ${TopMenu_MyCourses}
    sleep                                            5
    wait until element is visible                    ${mycourses_h}          20
    page should contain element                      ${mycourses_h}
    page should contain element                      ${MyCourses_SelectCourses}
    click on button                                  ${MyCourses_SelectCourses}
    wait until element is visible                    xpath://div[contains(text(),'All Courses')]/ancestor::a        20
    page should contain element                      xpath://div[contains(text(),'All Courses')]/ancestor::a
    page should contain element                      xpath://div[contains(text(),'${Course}')]/ancestor::a
    click on button                                  xpath://div[contains(text(),'${Course}')]/ancestor::a
    page should contain element                      xpath://small[contains(text(),'${Batch1}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    page should contain element                      xpath://small[contains(text(),'${Batch2}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    page should contain element                      ${mycourses_addcourse}
    click on button                                  ${mycourses_addcourse}
    sleep                                            5
    page should contain element                      xpath:(//div[contains(text(),'Courses')])[3]
    go back
    sleep                                            5
    wait until element is visible                    ${mycourses_h}          20
    click on button                                  ${MyCourses_SelectCourses}
    wait until element is visible                    xpath://div[contains(text(),'All Courses')]/ancestor::a        20
    page should contain element                      xpath://div[contains(text(),'All Courses')]/ancestor::a
    page should contain element                      xpath://div[contains(text(),'${Course}')]/ancestor::a
    click on button                                  xpath://div[contains(text(),'${Course}')]/ancestor::a
    page should contain element                      xpath://small[contains(text(),'${Batch1}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    click on button                                  xpath://small[contains(text(),'${Batch1}')]
    sleep                                            10
    wait until Element is present in the page        ${MyCourses_CourseName}
    ${hCourse}=     Get Text                         ${MyCourses_CourseName}
    printvalue                                       ${hCourse}
    go back
    sleep                                            10

#-------------------------------------------------------------------------------------------
Click on Course
    [Arguments]                                      ${Course}           ${Batch}
    click on button                                  ${TopMenu_MyCourses}
    sleep                                            5
    wait until element is visible                    ${mycourses_h}          20
    click on button                                  ${MyCourses_SelectCourses}
    wait until element is visible                    xpath://div[contains(text(),'All Courses')]/ancestor::a        20
    page should contain element                      xpath://div[contains(text(),'All Courses')]/ancestor::a
    page should contain element                      xpath://div[contains(text(),'${Course}')]/ancestor::a
    click on button                                  xpath://div[contains(text(),'${Course}')]/ancestor::a
    page should contain element                      xpath://small[contains(text(),'${Batch}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    click on button                                  xpath://small[contains(text(),'${Batch}')]
    sleep                                            10

#-------------------------------------------------------------------------------------------
Click on MyCourses button
    page should contain element                      ${TopMenu_MyCourses}
    click on button                                  ${TopMenu_MyCourses}
    sleep                                            5
#-------------------------------------------------------------------------------------------
Verify My Courses page of Student User
    [Arguments]                                      ${Batch1}              ${Batch2}
    Click on MyCourses button
    wait until element is visible                    ${mycourses_h}          120
    page should contain element                      ${mycourses_h}
    MyCourses.Click on a Batch in My Courses         ${Batch1}
    MyCourses.Verify batch                           ${Batch1}
    wait until element is visible                    ${mycourses_h}          120
    MyCourses.Click on SelfEnrolment button
    MyCourses.Verify Self Enrolment window
    MyCourses.Verify a Batch in Suggested Courses              ${Batch2}

#-------------------------------------------------------------------------------------------
Click on a Batch in My Courses
    [Arguments]                                      ${Batch}
    click on button                                  ${TopMenu_MyCourses}
    sleep                                            5
    wait until Element is present in the page        xpath://small[contains(text(),'${Batch}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    page should contain element                      xpath://small[contains(text(),'${Batch}')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
    click on button                                  xpath://small[contains(text(),'${Batch}')]
    sleep                                            10

#-------------------------------------------------------------------------------------------
Verify batch
    [Arguments]                                      ${Batch}
    wait until Element is present in the page        ${MyCourses_CourseName}
    ${Batch_Name}=     Get Text                      ${MyCourses_CourseName}
    should be equal                                  ${Batch_Name}                  ${Batch}
    printvalue                                       ${Batch_Name}
    go back

#-------------------------------------------------------------------------------------------
Click on SelfEnrolment button
    page should contain element                      ${btnSelfEnrolment}
    click element                                    ${btnSelfEnrolment}
    sleep                                            5

#-------------------------------------------------------------------------------------------
Verify Self Enrolment window
    wait until Element is present in the page        ${hselfenrolment}
    page should contain element                      ${hselfenrolment}
    page should contain element                      ${close_selfenrolment}
    click element                                    ${close_selfenrolment}
    wait until Element is present in the page        ${btnSelfEnrolment}

#-------------------------------------------------------------------------------------------
Verify a Batch in Suggested Courses
    [Arguments]                                     ${Batch}
    Click on a Batch in Suggested Courses           ${Batch}
    Verify join the course window                   ${Batch}

#-------------------------------------------------------------------------------------------
Click on a Batch in Suggested Courses
    [Arguments]                                     ${Batch}
    wait until Element is present in the page       xpath://span[normalize-space()='${Batch}']
    page should contain element                     xpath://span[normalize-space()='${Batch}']
    click on button                                 xpath://span[normalize-space()='${Batch}']
    sleep                                           5

#-------------------------------------------------------------------------------------------
Verify join the course window
    [Arguments]                                     ${Batch}
    wait until element is visible                   xpath://div[contains(text(),'${Batch}')]
    page should contain element                     xpath://div[contains(text(),'${Batch}')]
    page should contain element                     ${SuggestedCourses_msg}
    page should contain element                     ${Jointhecourse_Yes}
    page should contain element                     ${Jointhecourse_No}
    click on button                                 ${Jointhecourse_No}