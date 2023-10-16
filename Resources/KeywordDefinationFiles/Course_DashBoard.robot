*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Course_ProgressGraph.robot
Resource        ../../PageObjects/Courses_Video.robot
Resource        ../../PageObjects/Courses_Collection.robot
Resource        ../../PageObjects/Courses_Dashboard.robot
Resource        ../../Resources/TestData/TestData.robot
Resource         ../../Resources/KeywordDefinationFiles/Courses_Pages.robot
Resource         ../../PageObjects/Courses_Assignments.robot
Resource         ../../PageObjects/Courses_Tests.robot
Resource         ../../PageObjects/Courses_StudentProjects.robot
Resource         ../../PageObjects/Courses_Discussions.robot
Resource         ../../PageObjects/Courses_LessonPlan.robot
Resource        ../../PageObjects/Courses_Zoom.robot
Resource         ../../Resources/KeywordDefinationFiles/SATPage.robot
Resource         ../../Resources/KeywordDefinationFiles/ProficiencyAnalysis.robot
Resource         ../../Resources/KeywordDefinationFiles/Video.robot
Resource         ../../Resources/KeywordDefinationFiles/CollectionPage.robot
Resource         ../../Resources/KeywordDefinationFiles/AssignmentsPage.robot
Resource         ../../Resources/KeywordDefinationFiles/TestPage.robot
Resource         ../../Resources/KeywordDefinationFiles/CreateStudentProject.robot
Resource         ../../Resources/KeywordDefinationFiles/DiscussionForumsPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Batch Name
    [Arguments]                                     ${Batch}
    page should contain element                     ${course_batch_h}
    ${BatchName}=     Get Text                      ${course_batch_h}
    should be equal                                 ${BatchName}            ${Batch}

#-------------------------------------------------------------------------------------------
#                                  Click Actions
#-------------------------------------------------------------------------------------------

Click on Course Progress bar
    scroll element into view                        ${course_progressbar_highest}
    page should contain element                     ${course_progressbar_highest}
    page should contain element                     ${course_progressbar_classaverage}
    click on button                                 ${course_progressbar_highest}
    sleep                                           10

#-------------------------------------------------------------------------------------------
Click on Course Learn
    wait until element is visible                   ${course_learn}                120
    scroll element into view                        ${course_learn}
    page should contain element                     ${course_learn}
    click on button                                 ${course_learn}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Reports
    wait until element is visible                   ${course_reports}               120
    scroll element into view                        ${course_reports}
    page should contain element                     ${course_reports}
    click on button                                 ${course_reports}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Take Attendence
    scroll element into view                        ${course_takeattendance}
    page should contain element                     ${course_takeattendance}
    click on button                                 ${course_takeattendance}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on More
    wait until element is visible                   ${course_more}              120
    scroll element into view                        ${course_more}
    page should contain element                     ${course_more}
    click on button                                 ${course_more}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Manage Pages
    page should contain element                     ${managepages}
    click on button                                 ${managepages}
    sleep                                           10

#-------------------------------------------------------------------------------------------
Click on Manage Lesson Plan
    page should contain element                     ${managelessonplan}
    click on button                                 ${managelessonplan}
    sleep                                           10

#-------------------------------------------------------------------------------------------
Click on Students Credits & Certificates
    wait until element is visible                   ${studentscredits&certificates}     120
    page should contain element                     ${studentscredits&certificates}
    click on button                                 ${studentscredits&certificates}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Activate Gradebook
    wait until element is visible                   ${activategradebook}            120
    page should contain element                     ${activategradebook}
    click on button                                 ${activategradebook}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Enrolment Settings
    page should contain element                     ${enrolmentsettings}
    click on button                                 ${enrolmentsettings}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Fees Details
    page should contain element                     ${CourseData_FeeDetails}
    click on button                                 ${CourseData_FeeDetails}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on 1:1 Mentoring Settings
    page should contain element                     ${mentoringsettings}
    click on button                                 ${mentoringsettings}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on View latest awarded badges
    page should contain element                     ${course_viewlatestawardedbadges}
    click on button                                 ${course_viewlatestawardedbadges}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Badges Information
    page should contain element                     ${course_badgeinformation}
    click on button                                 ${course_badgeinformation}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Enrolment List
    page should contain element                     ${coursedata_enrollmentlist}
    click on button                                 ${coursedata_enrollmentlist}
    sleep                                           3

#-------------------------------------------------------------------------------------------
Click on Course Map
    page should contain element                     ${coursemap}
    page should contain element                     ${coursemap_progress}
    click element                                   ${coursemap_progress}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on mentoring settings
    page should contain element             ${mentoringsettings_enabled}
    click on button                         ${mentoringsettings_enabled}
    sleep                                   3

#-------------------------------------------------------------------------------------------
Click on Mentoring
    page should contain element             ${course_mentoring}
    click on button                         ${course_mentoring}
    sleep                                   3


#-------------------------------------------------------------------------------------------
#                                  Handle Buttons
#-------------------------------------------------------------------------------------------
Accept Activate Gradebook
    handle alert                                    accept

#-------------------------------------------------------------------------------------------
Cancel Activate Gradebook
    handle alert                                    dismiss

#-------------------------------------------------------------------------------------------
#Verify Enrolment Settings
#    wait until page contains element            ${mentoringsettings_h}
#    page should contain element                 ${mentoringsettings_h}
#    disable mentoring settings
#    enable mentoring settings
#    press keys                                  ${mentoringsettings_h}          ESC

#-------------------------------------------------------------------------------------------
Enable Mentoring Settings
    page should contain element             ${mentoringsettings_enabled}
    ${status}=  get mentoring settings status
    IF      '${status}' == 'False'
        click on mentoring settings
    END

#-------------------------------------------------------------------------------------------
Disable Mentoring Settings
    page should contain element             ${mentoringsettings_enabled}
    ${status}=  get mentoring settings status
    IF      '${status}' == 'True'
        Click on mentoring settings
    END


#-------------------------------------------------------------------------------------------
Get Mentoring Settings status
    ${Result}=      Run Keyword And Return Status       checkbox should be selected     ${mentoringsettings_enabled}
    [Return]        ${Result}


#-------------------------------------------------------------------------------------------
Verify Course Dashboard page
    [Arguments]                                     ${batchN}
    wait until page contains element                ${course_batch_h}
    Course_DashBoard.Verify Batch Name              ${batchN}
    page should contain element                     ${course_info}
    page should contain element                     ${course_progressbar_highest}
    page should contain element                     ${course_progressbar_classaverage}
    page should contain element                     ${course_learn}
    page should contain element                     ${course_averageofmodules}
    page should contain element                     ${course_reports}
    page should contain element                     ${course_takeattendance}
    page should contain element                     ${course_more}
    page should contain element                     ${course_leaderboard}
    page should contain element                     ${course_viewlatestawardedbadges}
    page should contain element                     ${course_badgeinformation}
    page should contain element                     ${course_moduleleader}
    page should contain element                     ${course_conceptleader}
    page should contain element                     ${course_testtopper}
    page should contain element                     ${course_assignmenttopper}
    page should contain element                     ${course_starperformer}
    page should contain element                     ${course_moststudious}
    page should contain element                     ${course_bingewatcher}
    page should contain element                     ${course_discussionstopper}
    page should contain element                     ${course_mostpunctual}
    page should contain element                     ${course_dashboard}
    page should contain element                     ${moduleslist_h}
    page should contain element                     ${moduleslist_add}
    page should contain element                     ${moduleslist_module1}
    page should contain element                     ${moduleslist_module1_description}
    page should contain element                     ${moduleslist_module1_modulerestrictions}
    page should contain element                     ${ModulesList_Module_Active}
#    page should contain element                     ${moduleslist_module1_leadteacher}
    page should contain element                     ${moduleslist_module1_leader}
#    page should contain element                     ${moduleslist_module1_moduleprogresstracking}
    page should contain element                     ${moduleslist_module1_learn}
    page should contain element                     ${moduleslist_module1_score}
    page should contain element                     ${moduleslist_module1_edit}
    page should contain element                     ${moduleslist_module1_delete}
    page should contain element                     ${conceptslist_h}
    page should contain element                     ${conceptslist_add}
    page should contain element                     ${conceptslist_concept1_h}
    page should contain element                     ${conceptslist_concept1_leaders}
    page should contain element                     ${conceptslist_concept1_learn}
    page should contain element                     ${conceptslist_concept1_score}
    page should contain element                     ${conceptslist_concept1_edit}
    page should contain element                     ${conceptslist_concept1_delete}
    page should contain element                     ${recentpages_h}
    scroll element into view                        ${coursedata_h}
    page should contain element                     ${coursedata_h}
    page should contain element                     ${coursedata_leadteacher}
    page should contain element                     ${coursedata_leadteacher_edit}
    page should contain element                     ${coursedata_enrollmentlist}
    page should contain element                     ${recentassignments_h}
    page should contain element                     ${coursemap}
    page should contain element                     ${coursemap_progress}
    page should contain element                     ${fees_h}
    page should contain element                     ${fees_setupfees}
    page should contain element                     ${fees_managefees}
    page should contain element                     ${fees_studentdetails}
    page should contain element                     ${upcomingevents_h}
    scroll element into view                        ${upcomingconferences_h}
    page should contain element                     ${recentdiscussions_h}
    page should contain element                     ${recentwallposts_h}
    page should contain element                     ${upcomingconferences_h}

#-------------------------------------------------------------------------------------------
Verify Course Dashboard page of Student User
    [Arguments]                                     ${batchN}
    wait until page contains element                ${course_batch_h}                   120
    Course_DashBoard.Verify Batch Name              ${batchN}
    page should contain element                     ${batch_info}
    page should contain element                     ${Course_AverageOfChapters}
    page should contain element                     ${course_reports}
    page should contain element                     ${Course_Mentoring}
    page should contain element                     ${course_badgeinformation}
#   ::: verify View latest awarded badges :::
    page should contain element                     ${course_moduleleader}
    page should contain element                     ${course_conceptleader}
    page should contain element                     ${course_testtopper}
    page should contain element                     ${course_assignmenttopper}
    page should contain element                     ${course_starperformer}
    page should contain element                     ${course_moststudious}
    page should contain element                     ${course_bingewatcher}
    page should contain element                     ${course_discussionstopper}
    page should contain element                     ${course_mostpunctual}
#   ::: Dashborad :::
    page should contain element                     ${course_dashboard}
#   ::: Module List :::
    page should contain element                     ${moduleslist_h}
    page should contain element                     ${moduleslist_module1}
    page should contain element                     ${moduleslist_module1_description}
    page should contain element                     ${moduleslist_module1_modulerestrictions}
    page should contain element                     ${moduleslist_module1_leader}
    page should contain element                     ${moduleslist_module1_learn}
    page should contain element                     ${moduleslist_module1_measure}
    page should contain element                     ${moduleslist_module1_score}
#   ::: Comcept List :::
    page should contain element                     ${conceptslist_h}
    page should contain element                     ${conceptslist_concept1_h}
    page should contain element                     ${conceptslist_concept1_leaders}
    page should contain element                     ${conceptslist_concept1_learn}
    page should contain element                     ${conceptslist_concept1_measure}
    page should contain element                     ${conceptslist_concept1_score}
#   ::: Course Data :::
    scroll element into view                        ${coursedata_h}
    page should contain element                     ${coursedata_h}
    page should contain element                     ${coursedata_leadteacher}
    page should contain element                     ${coursedata_enrollmentlist}
    page should contain element                     ${CourseData_FeeDetails}

    page should contain element                     ${AssignmentsDue_h}
    page should contain element                     ${coursemap}
    page should contain element                     ${coursemap_progress}
    page should contain element                     ${upcomingevents_h}
    scroll element into view                        ${upcomingconferences_h}
    page should contain element                     ${recentdiscussions_h}
    page should contain element                     ${recentwallposts_h}
    page should contain element                     ${upcomingconferences_h}

#-------------------------------------------------------------------------------------------
Verify Course Dashboard page with Course Map
    [Arguments]                                     ${batchN}
    wait until page contains element                ${course_batch_h}           120
    Course_DashBoard.Verify Batch Name              ${batchN}
    page should contain element                     ${course_info}
    page should contain element                     ${course_learn}
    page should contain element                     ${course_averageofmodules}
    page should contain element                     ${course_reports}
    page should contain element                     ${course_takeattendance}
    page should contain element                     ${course_more}
    page should contain element                     ${course_leaderboard}
    page should contain element                     ${course_viewlatestawardedbadges}
    page should contain element                     ${course_badgeinformation}
    page should contain element                     ${course_moduleleader}
    page should contain element                     ${course_conceptleader}
    page should contain element                     ${course_testtopper}
    page should contain element                     ${course_assignmenttopper}
    page should contain element                     ${course_starperformer}
    page should contain element                     ${course_moststudious}
    page should contain element                     ${course_bingewatcher}
    page should contain element                     ${course_discussionstopper}
    page should contain element                     ${course_mostpunctual}
    page should contain element                     ${course_dashboard}
    page should contain element                     ${moduleslist_h}
    page should contain element                     ${moduleslist_add}
    page should contain element                     ${moduleslist_module1}
    page should contain element                     ${moduleslist_module1_description}
    page should contain element                     ${moduleslist_module1_modulerestrictions}
    page should contain element                     ${ModulesList_Module_Active}
    page should contain element                     ${moduleslist_module1_leadteacher}
    page should contain element                     ${moduleslist_module1_leader}
    page should contain element                     ${moduleslist_module1_learn}
    page should contain element                     ${moduleslist_module1_score}
    page should contain element                     ${moduleslist_module1_edit}
    page should contain element                     ${moduleslist_module1_delete}
    page should contain element                     ${conceptslist_h}
    page should contain element                     ${conceptslist_add}
    page should contain element                     ${conceptslist_concept1_h}
    page should contain element                     ${conceptslist_concept1_leaders}
    page should contain element                     ${conceptslist_concept1_learn}
    page should contain element                     ${conceptslist_concept1_score}
    page should contain element                     ${conceptslist_concept1_edit}
    page should contain element                     ${conceptslist_concept1_delete}
#    page should contain element                     ${recentpages_h}
    scroll element into view                        ${coursedata_h}
    page should contain element                     ${coursedata_h}
    page should contain element                     ${coursedata_leadteacher}
    page should contain element                     ${coursedata_leadteacher_edit}
    page should contain element                     ${coursedata_enrollmentlist}
    page should contain element                     ${recentassignments_h}
    page should contain element                     ${coursemap}
    page should contain element                     ${coursemap_progress}
    page should contain element                     ${fees_h}
    page should contain element                     ${fees_setupfees}
    page should contain element                     ${fees_managefees}
    page should contain element                     ${fees_studentdetails}
    page should contain element                     ${upcomingevents_h}
    scroll element into view                        ${upcomingconferences_h}
    page should contain element                     ${recentdiscussions_h}
    page should contain element                     ${recentwallposts_h}
    page should contain element                     ${upcomingconferences_h}

#-------------------------------------------------------------------------------------------
#                            Fees
#-------------------------------------------------------------------------------------------
Verify Manage Fees
    wait until element is visible                  ${fees_h}                120
    page should contain element                    ${fees_h}
    Click on Setup Fees
    page should contain element                    ${managefees_h}
    enable fee module
    page should contain element                    ${managefees_feetypes}
    wait until element is visible                  ${managefees_update}         120
    page should contain element                    ${managefees_update}
    page should contain element                    ${managefees_currency}
    select currency                                EUR
    page should contain element                    ${managefees_currency_update}
    close on manage fees window
    sleep                                          5

#-------------------------------------------------------------------------------------------
Click on Setup Fees
    page should contain element                     ${fees_setupfees}
    click on button                                 ${fees_setupfees}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Enable Fee Module
    ${status}=  get fee module status
    IF      '${status}' == 'False'
        click on enable fee module
    END

#-------------------------------------------------------------------------------------------
Get Fee module status
    ${Result}=      Run Keyword And Return Status       checkbox should be selected     ${managefees_enablefeemodule}
    [Return]        ${Result}

#-------------------------------------------------------------------------------------------
Click on enable Fee Module
    page should contain element             ${managefees_enablefeemodule}
    click on button                         ${managefees_enablefeemodule}
    sleep                                   4

#-------------------------------------------------------------------------------------------
Click on Update Fees Module
    page should contain element             ${managefees_update}
    click on button                         ${managefees_update}
    sleep                                   3

#-------------------------------------------------------------------------------------------
Select Currency
    [Arguments]                             ${Currency}
    page should contain element             ${managefees_currency_type}
    click on button                         ${managefees_currency_type}
    page should contain element             xpath://div[contains(text(),'${Currency}')]
    click on button                         xpath://div[contains(text(),'${Currency}')]
    sleep                                   5

#-------------------------------------------------------------------------------------------
Click on Update Currency
    page should contain element             ${managefees_currency_update}
    click on button                         ${managefees_currency_update}
    sleep                                   3

#-------------------------------------------------------------------------------------------
Close on Manage Fees window
    page should contain element             ${managefees_close}
    click on button                         ${managefees_close}
    sleep                                   3

#-------------------------------------------------------------------------------------------
#                            Module Restrictions
#-------------------------------------------------------------------------------------------
Verify Module Restrictions
    click on module restrictions       ${module}
    page should contain element        ${modulerestrictions_h}
    unlock module content              Pages & Videos               ${modulerestrictions_pages&videos_lock}
    unlock module content              Practice Test                ${modulerestrictions_practicetest_lock}
    unlock module content              Adaptive Test                ${modulerestrictions_adaptivetest_lock}
    unlock module content              Self Adaptive Test           ${modulerestrictions_selfadaptivetest_lock}
    unlock module content              Question Bank                ${modulerestrictions_questionbank_lock}
    unlock module content              Flash Cards                  ${modulerestrictions_flashcards_lock}
    page should contain element        ${modulerestrictions_update}
    close module restrictions
#-------------------------------------------------------------------------------------------
Verify Module Restrictions of student user
    click on module restrictions       ${module}
    page should contain element        ${modulerestrictions_h}
    page should contain element        ${modulerestrictions_pages&videos_lock}
    page should contain element        ${modulerestrictions_practicetest_lock}
    page should contain element        ${modulerestrictions_adaptivetest_lock}
    page should contain element        ${modulerestrictions_selfadaptivetest_lock}
    page should contain element        ${modulerestrictions_questionbank_lock}
    page should contain element        ${modulerestrictions_flashcards_lock}
    page should contain element        ${ModuleRestrictions_Close}
    click on button                    ${ModuleRestrictions_Close}

#-------------------------------------------------------------------------------------------
click on Module Restrictions
    [Arguments]                         ${module}
    page should contain element         xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')])/following::button[@title='Module Restrictions'][1]
    click on button                     xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')])/following::button[@title='Module Restrictions'][1]
    sleep                               3

#-------------------------------------------------------------------------------------------
Lock module content
    [Arguments]                ${content}       ${content_lock}
    ${status}=  get fee module status           ${content}
    IF      '${status}' == 'lock_open'
        click on lock button                    ${content_lock}
    END

#-------------------------------------------------------------------------------------------
unlock module content
    [Arguments]                ${content}       ${content_lock}
    ${status}=  Get module content status       ${content}
    IF      '${status}' == 'lock'
        click on lock button                ${content_lock}
    END

#-------------------------------------------------------------------------------------------
Get module content status
     [Arguments]                            ${content}
     ${lockstatus}=     Get Text                      //button[@title='${content}']//i
     [Return]           ${lockstatus}

#-------------------------------------------------------------------------------------------
Click on lock button
    [Arguments]                             ${content_lock}
    page should contain element             ${content_lock}
    click on button                         ${content_lock}
    sleep                                   4

#-------------------------------------------------------------------------------------------
Close Module Restrictions
    page should contain element             ${modulerestrictions_cancel}
    click on button                         ${modulerestrictions_cancel}
    sleep                                   5

#-------------------------------------------------------------------------------------------
#                            Module Active / Inactive
#-------------------------------------------------------------------------------------------
Verify Module active
    click on module active                  ${module}
    page should contain element             ${moduleactive_conf_msg}
    page should contain element             ${moduleactive_msg_yes}
    reject the change


#-------------------------------------------------------------------------------------------
Click on module active
    [Arguments]                             ${module}
    page should contain element             xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')])//preceding::i[contains(text(),'circle')]
    click on button                         xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')])//preceding::i[contains(text(),'circle')]
    sleep                                   3
#-------------------------------------------------------------------------------------------
Accept the change
    page should contain element            ${moduleactive_msg_yes}
    click on button                        ${moduleactive_msg_yes}
    sleep                                  3

#-------------------------------------------------------------------------------------------
Reject the change
    page should contain element            ${moduleactive_msg_no}
    click on button                        ${moduleactive_msg_no}
    sleep                                  3

#-------------------------------------------------------------------------------------------
#                            Edit Lead Teacher For Module
#-------------------------------------------------------------------------------------------
Verify Edit Lead Teacher For Module
    [Arguments]                                              ${moduleno}          ${teachern}
    Course_DashBoard.Click on Lead Teacher                   ${moduleno}
    page should contain element                              ${editleadteacherformodule_h}
    Course_DashBoard.select teacher for module               ${teachern}
    Course_DashBoard.click on calcel edit lead teacher

#-------------------------------------------------------------------------------------------
Click on Lead Teacher
    [Arguments]                             ${module}
    page should contain element             xpath:((//div[@title='${module}']|//span[contains(text(),'${module}')])/following::button)[3]
    click element                           xpath:((//div[@title='${module}']|//span[contains(text(),'${module}')])/following::button)[3]
    sleep                                   3

#-------------------------------------------------------------------------------------------
Select Teacher for module
    [Arguments]                                             ${Teacher}
    Course_DashBoard.click on select teacher
    Course_DashBoard.select a teacher                       ${Teacher}

#-------------------------------------------------------------------------------------------
Click on Select Teacher
    page should contain element         ${editleadteacherformodule_selectteacher}
    click on button                     ${editleadteacherformodule_selectteacher}
    sleep                               4

#-------------------------------------------------------------------------------------------
Select a Teacher
    [Arguments]                         ${teacher}
    page should contain element         xpath:(//a//div[contains(text(),'${teacher}')])[2]
    click on button                     xpath:(//a//div[contains(text(),'${teacher}')])[2]
    press keys                          ${editleadteacherformodule_selectteacher}                 ESC
    sleep                               4

#-------------------------------------------------------------------------------------------
Click on Save Edit Lead Teacher
    page should contain element         ${editleadteacherformodule_save}
    click on button                     ${editleadteacherformodule_save}
    sleep                               4

#-------------------------------------------------------------------------------------------
Click on Calcel Edit Lead Teacher
    page should contain element         ${editleadteacherformodule_cancel}
    click on button                     ${editleadteacherformodule_cancel}
    sleep                               4

#-------------------------------------------------------------------------------------------
#                            Leader For Module
#-------------------------------------------------------------------------------------------
Verify Leader For Module
    Click on Module Leader              ${module}
    page should contain element         ${leaders_h}
    Close Module Leader window


#-------------------------------------------------------------------------------------------
Click on Module Leader
    [Arguments]                             ${module}
    page should contain element             xpath://div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')]//following::div[contains(text(),'Leaders')][1]/parent::button
    click element                           xpath://div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')]//following::div[contains(text(),'Leaders')][1]/parent::button
    sleep                                   3

#-------------------------------------------------------------------------------------------
Close Module Leader window
    page should contain element            ${leaders_close}
    click on button                        ${leaders_close}
    sleep                                  3

#-------------------------------------------------------------------------------------------
#                            Module Learn
#-------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------
Click on Learn button of module
    [Arguments]                             ${module}
    wait until page contains element        xpath:(//div[@title='${module}']| //span[@title='${module}']|//span[contains(text(),'${module}')])//following::button[@title='Learn'][1]
    page should contain element             xpath:(//div[@title='${module}']| //span[@title='${module}']|//span[contains(text(),'${module}')])//following::button[@title='Learn'][1]
    click on button                         xpath:(//div[@title='${module}']| //span[@title='${module}']|//span[contains(text(),'${module}')])//following::button[@title='Learn'][1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Verify Learn options of module
    [Arguments]                                     ${module}
    wait until Element is present in the page       xpath://div[contains(text(),'Pages')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Pages')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Videos')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Flash Cards')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Games')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Assignments')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Tests')]/preceding-sibling::button
    page should contain element                     xpath://div[contains(text(),'Live Lectures')]/preceding-sibling::button

#-------------------------------------------------------------------------------------------
#                            Module Score
#-------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------
Click on Score button of module
    [Arguments]                             ${module}
    wait until element is visible           xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score']//button)[1]     120
    page should contain element             xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score']//button)[1]
    click on button                         xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score']//button)[1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Click on Proficiency Score button of module
    [Arguments]                             ${module}
    wait until element is visible           xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score'])[2]//child::button   120
    page should contain element             xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score'])[2]//child::button
    click on button                         xpath:((//div[@title='${module}']|//span[@title='${module}']|//span[contains(text(),'${module}')])/following::div[@title='Score'])[2]//child::button
    sleep                                   10

#-------------------------------------------------------------------------------------------
#                           Edit Module
#-------------------------------------------------------------------------------------------
Verify Edit module
    Course_DashBoard.Click on edit Module                   ${module}
    Course_DashBoard.change name of module                  Module A
    Course_DashBoard.change description of module           Test Description of Module A
    Course_DashBoard.Add image for Module                   C:/Users/Rahul/PycharmProjects/LMS/Resources/Images/module1.png
    Course_DashBoard.click on close module details

#-------------------------------------------------------------------------------------------
Click on edit Module
    [Arguments]                          ${module}
    page should contain element          xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')]//following::i[contains(text(),'edit')][1])//ancestor::button
    click on button                      xpath:(//div[@title='${module}']|//span[contains(text(),'${module}')]//following::i[contains(text(),'edit')][1])//ancestor::button
    sleep                                5

#-------------------------------------------------------------------------------------------
Change Name of Module
    [Arguments]                         ${mname}
    page should contain element         ${editmodule_name}
    Press Keys                          ${editmodule_name}               CTRL+a   BACKSPACE
    input text                          ${editmodule_name}               ${mname}

#-------------------------------------------------------------------------------------------
Change Description of Module
    [Arguments]                         ${description}
    page should contain element         ${editmodule_description}
    Press Keys                          ${editmodule_description}               CTRL+a   BACKSPACE
    input text                          ${editmodule_description}               ${description}

#-------------------------------------------------------------------------------------------
Add image for Module
    [Arguments]                         ${image}
    page should contain element         ${editmodule_selectanimage}
    choose file                         ${editmodule_selectanimage}             ${image}

#-------------------------------------------------------------------------------------------
click on save module details
    page should contain element        ${editmodule_save}
    click on button                    ${editmodule_save}
    sleep                              5

#-------------------------------------------------------------------------------------------
click on close module details
    page should contain element        ${editmodule_close}
    click on button                    ${editmodule_close}
    sleep                              5

#-------------------------------------------------------------------------------------------
click on remove module details
    page should contain element        ${editmodule_remove}
    click on button                    ${editmodule_remove}
    sleep                              5

#-------------------------------------------------------------------------------------------
#                           Pages
#-------------------------------------------------------------------------------------------
Verify Course Pages
    [Arguments]                 ${page}         ${course}       ${module}
    Course_DashBoard.click on pages tab
    verify pages filter
    serach a page               ${page}
    Verify a Page               ${page}         ${course}       ${module}

#-------------------------------------------------------------------------------------------
Click on Pages Tab
    wait until page contains element  ${course_pages}       120
    page should contain element       ${course_pages}
    click on button                   ${Course_Pages}
    sleep                             5

#-------------------------------------------------------------------------------------------
Verify Pages Filter
    page should contain element        ${pages_sortby}
    page should contain element        ${pages_sortby_latest}
    page should contain element        ${pages_sortby_mostviewed}
    page should contain element        ${pages_sortby_likes}
    page should contain element        ${pages_sortby_titlea-z}
    page should contain element        ${pages_sortby_titlez-a}

#-------------------------------------------------------------------------------------------
Verify a Page
    [Arguments]                       ${page}       ${course}       ${module}
    wait until element is visible     xpath://div[@title='${page}']             120
    page should contain element       xpath://div[@title='${page}']
    page should contain element       xpath:(//div[@title='${course}, ${module}'])[1]
    page should contain element       xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    page should contain element       xpath:(//div[@title='${page}']/following::i[contains(text(),'favorite_border')])[1]

#-------------------------------------------------------------------------------------------
Serach a Page
    [Arguments]                      ${page}
    page should contain element      ${pages_searchbytitle}
    click on button                  ${pages_search}
    sleep                            2
    input text                       ${pages_searchbytitle}          ${page}

#-------------------------------------------------------------------------------------------
Click on CreatePages
    page should contain element     ${pages_createpages}
    click on button                 ${pages_createpages}
    sleep                           5

#-------------------------------------------------------------------------------------------
Click on EditPage
    [Arguments]                     ${page}
    page should contain element     xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    click on button                 xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    sleep                           10

#-------------------------------------------------------------------------------------------
Click on page title
    [Arguments]                     ${PageN}
    wait until Element is present in the page   css:div[title='${PageN}']
    page should contain element                 css:div[title='${PageN}']
    click on button                             css:div[title='${PageN}']
    sleep                                       5

#-------------------------------------------------------------------------------------------
Verify Course Pages of student
    [Arguments]                                 ${page}
    Course_DashBoard.click on pages tab
    Course_DashBoard.verify pages filter
    Course_DashBoard.serach a page              ${page}
    Course_DashBoard.Click on page title        ${page}
    Courses_Pages.verify page details           ${page}

#-------------------------------------------------------------------------------------------
#                            Videos
#-------------------------------------------------------------------------------------------
Verify Course Videos
    [Arguments]         ${video}         ${course}       ${module}
    Course_DashBoard.click on video tab
    verify Videos filter
    Course_DashBoard.Search A Video      ${video}
    Course_DashBoard.Verify a video      ${video}         ${course}       ${module}

#-------------------------------------------------------------------------------------------
Click on video Tab
    wait until element is visible     ${Course_Videos}              120
    page should contain element       ${Course_Videos}
    click on button                   ${Course_Videos}
    sleep                             5

#-------------------------------------------------------------------------------------------
Verify Videos Filter
    page should contain element        ${Videos_sortby}
    page should contain element        ${Videos_sortby_latest}
    page should contain element        ${Videos_sortby_titlea-z}
    page should contain element        ${Videos_sortby_titlez-a}

#-------------------------------------------------------------------------------------------
Verify a video
    [Arguments]                       ${video}       ${course}       ${module}
    page should contain element       xpath://div[@title='${video}']
    page should contain element       xpath:(//div[@title='${course}, ${module}'])[1]
    page should contain element       xpath:(//div[@title='${video}']/following::i[contains(text(),'edit')]/ancestor::button)[1]

#-------------------------------------------------------------------------------------------
Search a video
    [Arguments]                      ${page}
    page should contain element      ${Videos_Searchbytitle}
    click on button                  ${Videos_Search}
    sleep                            5
    input text                       ${Videos_Searchbytitle}          ${page}
    sleep                            5

#-------------------------------------------------------------------------------------------
Click on CreateVideos
    page should contain element     ${Videos_CreateVideos}
    click on button                 ${Videos_CreateVideos}
    sleep                           5

#-------------------------------------------------------------------------------------------
Click on EditVideo
    [Arguments]                             ${page}
    wait until page contains element        xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    page should contain element             xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    click on button                         xpath:(//div[@title='${page}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Click on video title
    [Arguments]                     ${VideoN}
    page should contain element     css:div[title='${VideoN}']
    click on button                 css:div[title='${VideoN}']
    sleep                           5

#-------------------------------------------------------------------------------------------
Verify Course video of student
    [Arguments]                                 ${video}
    Course_DashBoard.click on video tab
    Course_DashBoard.verify Videos filter
    Course_DashBoard.Search a video             ${video}
    Course_DashBoard.Click on video title       ${video}
    video.verify video details                  ${video}


#-------------------------------------------------------------------------------------------
#                            Collections
#-------------------------------------------------------------------------------------------
Verify Course Collections
    [Arguments]                 ${Collection_N}         ${course}       ${module}
    Course_DashBoard.click on Collections tab
    verify collections filter
    serach a collection                                 ${Collection_N}
    select a module of collection                       ${module}
    Verify a Collection                                 ${Collection_N}         ${course}       ${module}

#-------------------------------------------------------------------------------------------
Click on Collections Tab
    wait until element is visible                   ${Course_Collections}       120
    page should contain element                     ${Course_Collections}
    click on button                                 ${Course_Collections}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on collection Select Module
    page should contain element       ${Collection_SelectModule}
    click on button                   ${Collection_SelectModule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of collection
    [Arguments]                       ${moduleN}
    Click on collection Select Module
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${collection_selectmodule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Collections Filter
    page should contain element        ${Collection_SortBy}
    page should contain element        ${Collection_SortBy_Latest}
    page should contain element        ${Collection_SortBy_MostViewed}
    page should contain element        ${Collection_SortBy_Likes}
    page should contain element        ${Collection_SortBy_TitleA-Z}
    page should contain element        ${Collection_SortBy_TitleZ-A}

#-------------------------------------------------------------------------------------------
Verify a Collection
    [Arguments]                       ${Collection}       ${course}       ${module}
    page should contain element       xpath://div[@title='${Collection}']

#-------------------------------------------------------------------------------------------
Serach a Collection
    [Arguments]                      ${CollectionName}
    page should contain element      ${Collection_Search}
    click on button                  ${Collection_Search}
    sleep                            2
    input text                       ${Collection_searchbytitle}          ${CollectionName}
    sleep                            5

#-------------------------------------------------------------------------------------------
Click on EditCollection
    [Arguments]                             ${Collection}
    wait until page contains element        xpath:(//div[@title='${Collection}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    page should contain element             xpath:(//div[@title='${Collection}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    click on button                         xpath:(//div[@title='${Collection}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Click on CreateCollection
    page should contain element             ${Collection_CreateCollection}
    click on button                         ${Collection_CreateCollection}
    sleep                                   5

#-------------------------------------------------------------------------------------------
Click on a collection
    [Arguments]                                     ${Collection_N}
    wait until Element is present in the page       xpath://div[@title='${Collection_N}']
    page should contain element                     xpath://div[@title='${Collection_N}']
    click on button                                 xpath://div[@title='${Collection_N}']

#-------------------------------------------------------------------------------------------
Verify Course Collections of student
    [Arguments]                                         ${Collection_N}
    Course_DashBoard.click on Collections tab
    Course_DashBoard.verify collections filter
    Course_DashBoard.serach a collection                ${Collection_N}
    Course_DashBoard.Click on a collection              ${Collection_N}
    CollectionPage.Verify Collection page               ${Collection_N}

#-------------------------------------------------------------------------------------------
#                            Assignment
#-------------------------------------------------------------------------------------------
Verify Course Assignment
    [Arguments]                                         ${Assignment_N}         ${course}       ${module}
    Course_DashBoard.click on Assignment tab
    verify Assignment filter
    serach a Assignment                                 ${Assignment_N}
    select a module of Assignment                       ${module}
    Verify a Assignment                                 ${Assignment_N}         ${course}       ${module}
    verify print assignment page                        ${Assignment_N}

#-------------------------------------------------------------------------------------------
Click on Assignment Tab
    wait until element is visible                   ${Course_Assignments}       120
    page should contain element                     ${Course_Assignments}
    click on button                                 ${Course_Assignments}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on Assignment Select Module
    wait until element is visible     ${assignments_selectmodule}               120
    page should contain element       ${assignments_selectmodule}
    click on button                   ${assignments_selectmodule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of Assignment
    [Arguments]                       ${moduleN}
    Click on Assignment Select Module
    wait until element is visible      xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a          120
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${assignments_selectmodule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Assignment Filter
    page should contain element        ${Assignments_SortBy}
    page should contain element        ${Assignments_SortBy_Latest}
    page should contain element        ${Assignments_SortBy_MostViewed}
    page should contain element        ${Assignments_SortBy_Likes}
    page should contain element        ${Assignments_SortBy_TitleA-Z}
    page should contain element        ${Assignments_SortBy_TitleZ-A}

#-------------------------------------------------------------------------------------------
Verify a Assignment
    [Arguments]                       ${Assignment}       ${course}       ${module}
    page should contain element       xpath://div[@title='${Assignment}']

#-------------------------------------------------------------------------------------------
Serach a Assignment
    [Arguments]                      ${AssignmentName}
    page should contain element      ${assignments_search}
    click on button                  ${assignments_search}
    sleep                            2
    input text                       ${Assignments_Searchbytitle}          ${AssignmentName}
    sleep                            5

#-------------------------------------------------------------------------------------------
Click on printAssignment
    [Arguments]                             ${AssignmentName}
    wait until page contains element        xpath:(//div[@title='${AssignmentName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    page should contain element             xpath:(//div[@title='${AssignmentName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    click on button                         xpath:(//div[@title='${AssignmentName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Verify print Assignment page
    [Arguments]                             ${AssignmentName}
    Click on printAssignment                ${AssignmentName}
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    close window
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    page should contain element             css:.title
    ${AssignmentTitle}=     Get Text        css:.title
    should be equal                         ${AssignmentTitle}      ${AssignmentName}
    close window
    sleep                                   5
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
#-------------------------------------------------------------------------------------------
Click on a Assignment
    [Arguments]                                         ${AssignmentN}
    wait until Element is present in the page           css:div[title='${AssignmentN}']
    page should contain element                         css:div[title='${AssignmentN}']
    click on button                                     css:div[title='${AssignmentN}']
    sleep                                               5

#-------------------------------------------------------------------------------------------
Verify Course Assignment of student
    [Arguments]                                                          ${Assignment_N}
    Course_DashBoard.click on Assignment tab
    Course_DashBoard.verify Assignment filter
    Course_DashBoard.serach a Assignment                                 ${Assignment_N}
    Course_DashBoard.Click on a Assignment                               ${Assignment_N}
    AssignmentsPage.Verify Assignment page                               ${Assignment_N}
#    Course_DashBoard.verify print assignment page                        ${Assignment_N}

#-------------------------------------------------------------------------------------------
#                            Tests
#-------------------------------------------------------------------------------------------
Verify Course Tests
    [Arguments]                                         ${Test_N}         ${course}       ${module}
    Course_DashBoard.click on Test tab
#    verify Tests filter
    serach a Test                                       ${Test_N}
    select a module of Test                             ${module}
    Verify a Test                                       ${Test_N}         ${course}       ${module}
    verify print Test page                              ${Test_N}

#-------------------------------------------------------------------------------------------
Click on Test Tab
    wait until element is visible                   ${Course_Tests}       120
    page should contain element                     ${Course_Tests}
    click on button                                 ${Course_Tests}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on Test Select Module
    page should contain element       ${Tests_SelectModule}
    click on button                   ${Tests_SelectModule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of Test
    [Arguments]                       ${moduleN}
    Click on Assignment Select Module
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${Tests_SelectModule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Tests Filter
    page should contain element        ${Tests_SortBy}
    page should contain element        ${Tests_SortBy_Latest}
    page should contain element        ${Tests_SortBy_MostViewed}
    page should contain element        ${Tests_SortBy_Likes}
    page should contain element        ${Tests_SortBy_TitleA-Z}
    page should contain element        ${Tests_SortBy_TitleZ-A}

#-------------------------------------------------------------------------------------------
Verify a Test
    [Arguments]                       ${Test}       ${course}       ${module}
    page should contain element       xpath://div[@title='${Test}']

#-------------------------------------------------------------------------------------------
Serach a Test
    [Arguments]                      ${TestNamName}
    page should contain element      ${Tests_search}
    click on button                  ${Tests_search}
    sleep                            2
    input text                       ${Tests_Searchbytitle}          ${TestNamName}
    sleep                            5

#-------------------------------------------------------------------------------------------
Click on printTest
    [Arguments]                             ${TestName}
    wait until page contains element        xpath:(//div[@title='${TestName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    page should contain element             xpath:(//div[@title='${TestName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    click element                           xpath:(//div[@title='${TestName}']/following::i[contains(text(),'print')]/ancestor::button)[1]
    sleep                                   10

#-------------------------------------------------------------------------------------------
Verify print Test page
    [Arguments]                             ${TestName}
    Click on printTest                      ${TestName}
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    sleep                                   3
    page should contain element             css:.title
    ${TestTitle}=           Get Text        css:.title
    should be equal                         ${TestTitle}      ${TestName}
    close window
    sleep                                   2
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
    sleep                                   5


#-------------------------------------------------------------------------------------------
Click on View Submission button
    [Arguments]                                     ${TestN}
    page should contain element                     xpath://div[@title='${TestN}']/following::div[contains(text(),'View Submissions')]/parent::button
    click on button                                 xpath://div[@title='${TestN}']/following::div[contains(text(),'View Submissions')]/parent::button

#-------------------------------------------------------------------------------------------
Verify a Test in Tests List
    [Arguments]                                     ${TestN}
    wait until Element is present in the page       css:div[title='${TestN}']
    page should contain element                     xpath://div[@title='${TestN}']/following::small[contains(text(),'Attempts')]
    page should contain element                     xpath://div[@title='${TestN}']/following::small[contains(text(),'Avg Marks')]
    page should contain element                     xpath://div[@title='${TestN}']/following::small[contains(text(),'Total marks')]
    page should contain element                     xpath://div[@title='${TestN}']/following::div[contains(text(),'View Submissions')]/parent::button

#-------------------------------------------------------------------------------------------
Verify Course Test of student
    [Arguments]                                        ${BatchN}   ${status}     ${Test_N}
    Course_DashBoard.click on Test tab
    verify Tests filter
    serach a Test                                       ${Test_N}
    Course_DashBoard.Verify a Test in Tests List        ${Test_N}
    verify print Test page                              ${Test_N}
    Course_DashBoard.Click on View Submission button    ${Test_N}
    TestPage.Verify Test Submissions Page               ${BatchN}   ${status}   ${Test_N}
    go back

#-------------------------------------------------------------------------------------------
#                               Student Projects
#-------------------------------------------------------------------------------------------
Verify Course Student Projects
    [Arguments]                                         ${StudentProjects_N}         ${course}       ${module}
    Course_DashBoard.Click on Student Projects Tab
    reload page
    sleep                                               10
    Verify Student Projects Filter
    Serach a Student Projects                           ${StudentProjects_N}
    Select a Module of Student Projects                 ${module}

#-------------------------------------------------------------------------------------------
Click on Student Projects Tab
    wait until element is visible                   ${Course_StudentProjects}               120
    page should contain element                     ${Course_StudentProjects}
    click on button                                 ${Course_StudentProjects}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on Student Projects Select Module
    page should contain element       ${studentprojects_selectmodule}
    click on button                   ${studentprojects_selectmodule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of Student Projects
    [Arguments]                       ${moduleN}
    Click on Assignment Select Module
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${studentprojects_selectmodule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Student Projects Filter
    page should contain element        ${StudentProjects_SortBy}
    page should contain element        ${StudentProjects_SortBy_Latest}
    page should contain element        ${StudentProjects_SortBy_MostViewed}
    page should contain element        ${StudentProjects_SortBy_Likes}
    page should contain element        ${StudentProjects_SortBy_TitleA-Z}
    page should contain element        ${StudentProjects_SortBy_TitleZ-A}

#-------------------------------------------------------------------------------------------
Serach a Student Projects
    [Arguments]                      ${StudentProjects_name}
    wait until element is visible    ${StudentProjects_Search}                 120
    page should contain element      ${StudentProjects_Search}
    click on button                  ${StudentProjects_Search}
    sleep                            2
    input text                       ${StudentProjects_Searchbytitle}          ${StudentProjects_name}
    sleep                            5

#-------------------------------------------------------------------------------------------
Click on Create Project button
    page should contain element       ${studentprojects_createproject}
    click on button                   ${studentprojects_createproject}
    sleep                             3
#-------------------------------------------------------------------------------------------
Click on Project in the list
    [Arguments]                       ${ProjectName}
    wait until element is visible     css:div[title='${ProjectName}']
    page should contain element       css:div[title='${ProjectName}']
    click on button                   css:div[title='${ProjectName}']
    sleep                             3

#-------------------------------------------------------------------------------------------
Verify a Project
    [Arguments]                                             ${ProjectName}
    Course_DashBoard.Click on Project in the list           ${ProjectName}
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[1]
    wait until element is visible           ${studentproject_title}                120
    page should contain element             ${studentproject_title}
    ${ProjectTitle}=     Get Text           ${studentproject_title}
    should be equal                         ${ProjectTitle}                        ${ProjectName}
    page should contain element             ${studentproject_collaborators}
    page should contain element             ${studentproject_rating}
    page should contain element             ${studentproject_chaptertitle}
    page should contain element             ${studentproject_tableofcontent}
    page should contain element             ${studentproject_related}
    page should contain element             ${studentproject_like}
    page should contain element             ${studentproject_bookmark}
    page should contain element             ${studentproject_moreoptions}
    page should contain element             ${studentproject_school}
    page should contain element             ${studentproject_back}
    close window
    ${handles}=                             Get Window Handles
    switch window                           ${handles}[0]
    wait until element is visible           ${Course_StudentProjects}               120

#-------------------------------------------------------------------------------------------
Verify a Project of student user
    [Arguments]                                             ${ProjectName}
    wait until element is visible           ${studentproject_title}                120
    page should contain element             ${studentproject_title}
    ${ProjectTitle}=     Get Text           ${studentproject_title}
    should be equal                         ${ProjectTitle}                        ${ProjectName}
    page should contain element             ${studentproject_collaborators}
    page should contain element             ${studentproject_rating}
    page should contain element             ${studentproject_chaptertitle}
    page should contain element             ${studentproject_tableofcontent}
    page should contain element             ${studentproject_related}
    page should contain element             ${studentproject_like}
    page should contain element             ${studentproject_bookmark}
    page should contain element             ${studentproject_moreoptions}
    page should contain element             ${studentproject_school}
    page should contain element             ${studentproject_back}
    go back

#-------------------------------------------------------------------------------------------
Verify a Student Project of a student
    [Arguments]                                         ${StudentProjects_name}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}    ${Sdetails}
    Course_DashBoard.Click on Student Projects Tab
    Course_DashBoard.Verify Student Projects Filter
    Course_DashBoard.Serach a Student Projects          ${StudentProjects_name}
    Course_DashBoard.Verify a Project                   ${StudentProjects_name}
    Course_DashBoard.Verify Create Project of Student   ${StudentProjects_name}      ${Project_Description}      ${school}       ${course}       ${module}          ${PTitle}    ${Sdetails}

#-------------------------------------------------------------------------------------------
Verify Create Project of Student
    [Arguments]                                          ${ProjectName}        ${Description}      ${school}       ${course}       ${module}          ${PTitle}       ${Sdetails}
    Course_DashBoard.Click on Create Project button
    CreateStudentProject.Verify Create Project           ${ProjectName}        ${Description}      ${school}       ${course}       ${module}          ${PTitle}       ${Sdetails}

#-------------------------------------------------------------------------------------------
#                            Discussions Forums
#-------------------------------------------------------------------------------------------
Verify Course Discussions
    [Arguments]                                         ${Discussions_N}         ${course}       ${module}
    Course_DashBoard.Click on Discussions Tab
    sleep                                               2
    reload page
    sleep                                               10
    Verify Discussions Filter
    Course_DashBoard.Select a Module of Discussions                      ${module}
    Course_DashBoard.Verify a Discussion                                 ${Discussions_N}

#-------------------------------------------------------------------------------------------
Click on Discussions Tab
    scroll element into view                        ${Course_Discussions}
    wait until element is visible                   ${Course_Discussions}           120
    page should contain element                     ${Course_Discussions}
    click on button                                 ${Course_Discussions}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Click on Discussions Select Module
    page should contain element       ${Discussions_SelectModule}
    click on button                   ${Discussions_SelectModule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of Discussions
    [Arguments]                       ${moduleN}
    Course_DashBoard.Click on Assignment Select Module
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${Discussions_SelectModule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Discussions Filter
    wait until element is visible      ${Discussions_SortBy}                    120
    page should contain element        ${Discussions_SortBy}
    page should contain element        ${Discussions_SortBy_Latest}
    page should contain element        ${Discussions_SortBy_MostViewed}
    page should contain element        ${Discussions_SortBy_Likes}
    page should contain element        ${Discussions_SortBy_TitleA-Z}
    page should contain element        ${Discussions_SortBy_TitleZ-A}
#-------------------------------------------------------------------------------------------
Click on Create Discussion
    wait until element is visible      ${Discussionss_CreateDiscussion}                 120
    page should contain element        ${Discussionss_CreateDiscussion}
    click on button                    ${Discussionss_CreateDiscussion}
    sleep                              5

#-------------------------------------------------------------------------------------------
Verify a Discussion
    [Arguments]                       ${Discussion}
    page should contain element       xpath://div[@title='${Discussion}']

#-------------------------------------------------------------------------------------------
Click on a Discussion
    [Arguments]                       ${discussion}
    page should contain element       xpath://div[@title='${Discussion}']
    click on button                   xpath://div[@title='${Discussion}']
    sleep                             5

#-------------------------------------------------------------------------------------------
Verify Course Discussions of a Student
    [Arguments]                                         ${Discussions_N}
    Course_DashBoard.Click on Discussions Tab
    sleep                                               5
    Verify Discussions Filter
    Course_DashBoard.Click on a Discussion              ${Discussions_N}
    DiscussionForumsPage.Verify a Discussion            ${Discussions_N}
    Course_DashBoard.Click on Create Discussion
    DiscussionForumsPage.verify Create Discussion Page of student
    wait until element is visible                       ${Discussionss_CreateDiscussion}        120

#-------------------------------------------------------------------------------------------
#                               Lesson Plan
#-------------------------------------------------------------------------------------------
Verify Course Lesson Plan
    [Arguments]                                         ${LessonPlan_N}         ${course}       ${module}
    Course_DashBoard.Click on Lesson Plan Tab
    reload page
    sleep                                               10
    Course_DashBoard.Verify Lesson Plan Filter
    Course_DashBoard.Serach a Lesson Plan                                ${LessonPlan_N}
    Course_DashBoard.Select a Module of Lesson Plan                      ${module}
    Course_DashBoard.Verify a Lesson Plan                                ${LessonPlan_N}

#-------------------------------------------------------------------------------------------
Click on Lesson Plan Tab
    scroll element into view                        ${Course_LessonPlan}
    wait until element is visible                   ${Course_LessonPlan}            120
    page should contain element                     ${Course_LessonPlan}
    click on button                                 ${Course_LessonPlan}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on Lesson Plan Select Module
    page should contain element       ${LessonPlan_SelectModule}
    click on button                   ${LessonPlan_SelectModule}
    sleep                             3

#-------------------------------------------------------------------------------------------
Select a Module of Lesson Plan
    [Arguments]                       ${moduleN}
    Click on Assignment Select Module
    page should contain element        xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    click on button                    xpath:(//div[contains(text(),'${moduleN}')])[1]/ancestor::a
    press keys                         ${LessonPlan_SelectModule}                      ESC

#-------------------------------------------------------------------------------------------
Verify Lesson Plan Filter
    wait until element is visible      ${LessonPlan_SortBy}                     120
    page should contain element        ${LessonPlan_SortBy}
    page should contain element        ${LessonPlan_SortBy_Latest}
    page should contain element        ${LessonPlan_SortBy_MostViewed}
    page should contain element        ${LessonPlan_SortBy_Likes}
    page should contain element        ${LessonPlan_SortBy_TitleA-Z}
    page should contain element        ${LessonPlan_SortBy_TitleZ-A}

#-------------------------------------------------------------------------------------------
Serach a Lesson Plan
    [Arguments]                      ${LessonPlan_name}
    page should contain element      ${LessonPlan_Search}
    click on button                  ${LessonPlan_Search}
    sleep                            2
    input text                       ${LessonPlan_Searchbytitle}          ${LessonPlan_name}
    sleep                            5

#-------------------------------------------------------------------------------------------
Verify a Lesson Plan
    [Arguments]                       ${Lessonplan_n}
    page should contain element       xpath://div[@title='${Lessonplan_n}']

#-------------------------------------------------------------------------------------------
Click on Create Lesson Plan
    page should contain element       ${LessonPlan_CreateLessonPlan}
    click on button                   ${LessonPlan_CreateLessonPlan}
    sleep                             5

#-------------------------------------------------------------------------------------------
Click on Edit Lesson Plan
    [Arguments]                       ${Lessonplan_n}
    page should contain element       xpath:(//div[@title='${Lessonplan_n}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    click on button                   xpath:(//div[@title='${Lessonplan_n}']/following::i[contains(text(),'edit')]/ancestor::button)[1]
    sleep                             10

#-------------------------------------------------------------------------------------------
#                               Zoom
#-------------------------------------------------------------------------------------------
Verify Courses Zoom
    [Arguments]                         ${meetingType}
    Click on Courses Zoom Tab
#    page should contain element         ${zoom_zoomsettings}
    page should contain element         ${zoom_createmeeting}
    page should contain element         ${zoom_mylectures}
    page should contain element         ${zoom_meetingtype}
    select meeting type                 ${meetingType}
#-------------------------------------------------------------------------------------------
Click on Courses Zoom Tab
    scroll element into view            ${course_zoom}
    wait until element is visible       ${course_zoom}              120
    page should contain element         ${course_zoom}
    click on button                     ${course_zoom}
    sleep                               10

#-------------------------------------------------------------------------------------------
Select Meeting Type
    [Arguments]                         ${meetingType}
    page should contain element         ${Zoom_MeetingType}
    click on button                     ${Zoom_MeetingType}
    sleep                               5
    page should contain element         xpath:(//div[contains(text(),'${meetingType}')])[1]/ancestor::a
    click on button                     xpath:(//div[contains(text(),'${meetingType}')])[1]/ancestor::a
    press keys                          ${Zoom_MeetingType}                     ESC

#-------------------------------------------------------------------------------------------
Click on Zoom Settings
    page should contain element         ${zoom_zoomsettings}
    click on button                     ${zoom_zoomsettings}
    sleep                               5
#-------------------------------------------------------------------------------------------
Click on Create Meeting
    page should contain element         ${zoom_createmeeting}
    click on button                     ${zoom_createmeeting}
    sleep                               5

#-------------------------------------------------------------------------------------------
Verify Courses Zoom of a Student
    [Arguments]                         ${meetingType}
    Click on Courses Zoom Tab
    page should contain element         ${zoom_meetingtype}
    select meeting type                 ${meetingType}

#-------------------------------------------------------------------------------------------
#                               Student Fee
#-------------------------------------------------------------------------------------------
Verify Student Fees Data table
    page should contain element                         ${StudentFeesData_no}
    page should contain element                         ${StudentFeesData_InstalmentLabel}
    page should contain element                         ${StudentFeesData_InstalmentDate}
    page should contain element                         ${StudentFeesData_TermFees}
    page should contain element                         ${StudentFeesData_ExamFees}
    page should contain element                         ${StudentFeesData_LibraryFees}
    page should contain element                         ${StudentFeesData_TotalFees}

Verify Student Payment Data table
    page should contain element                         ${StudentPaymentData_Date}
    page should contain element                         ${StudentPaymentData_Status}
    page should contain element                         ${StudentPaymentData_Amount}
    page should contain element                         ${StudentPaymentData_Currency}
    page should contain element                         ${StudentPaymentData_ModeofPayment}
    page should contain element                         ${StudentPaymentData_Remarks}

verify Student Fee Details Section
    page should contain element                         ${StudentFeeDetails_TotalFees}
    page should contain element                         ${StudentFeeDetails_Totaldue}
    page should contain element                         ${StudentFeeDetails_PaidAmount}
    page should contain element                         ${StudentFeeDetails_BalanceDue}
    page should contain element                         ${studentfeedetails_feesamount}

Verify Student Fee Details
    [Arguments]                                         ${BatchN}
    wait until Element is present in the page           xpath://div[contains(text(),'Student Fee Details - ${BatchN} ')]
    page should contain element                         xpath://div[contains(text(),'Student Fee Details - ${BatchN} ')]
    Course_DashBoard.verify Student Fee Details Section
    page should contain element                         ${studentfeedetails_studentfeesdata}
    Course_DashBoard.Verify Student Fees Data table
    page should contain element                         ${studentfeedetails_studentpaymentdata}
    Course_DashBoard.Verify Student Payment Data table
    page should contain element                         xpath://div[contains(text(),'Student Fee Details - ${BatchN}')]/following-sibling::button
    click on button                                     xpath://div[contains(text(),'Student Fee Details - ${BatchN}')]/following-sibling::button

#-------------------------------------------------------------------------------------------
#                               Measure
#-------------------------------------------------------------------------------------------
Click on Measure button
    [Arguments]                         ${moduleN}
    wait until element is visible       xpath:((//span[@title='${moduleN}'] | //div[@title='${moduleN}'] | //span[contains(text(),'${moduleN}')])//following::button[@title='Measure'])[1]
    page should contain element         xpath:((//span[@title='${moduleN}'] | //div[@title='${moduleN}'] | //span[contains(text(),'${moduleN}')])//following::button[@title='Measure'])[1]
    click on button                     xpath:((//span[@title='${moduleN}'] | //div[@title='${moduleN}']| //span[contains(text(),'${moduleN}')])//following::button[@title='Measure'])[1]
    sleep                               5
#-------------------------------------------------------------------------------------------
Verify Self Adaptive Test
    [Arguments]                                     ${ModuleN}          ${duration}
    Course_DashBoard.Click on Measure button        ${moduleN}
    wait until Element is present in the page       xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Save']
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Close']
    Course_DashBoard.Check want to add Time Duration                 ${ModuleN}
    Course_DashBoard.Add duration for SAT                            ${duration}
    Course_DashBoard.Save add Time Duration                          ${ModuleN}
    SATPage.Verify Take Test Page
    SATPage.Verify Test Submission Page
    wait until Element is present in the page                        ${course_batch_h}
#-------------------------------------------------------------------------------------------
Check want to add Time Duration
    [Arguments]                                     ${ModuleN}
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}']|//span[contains(text(),'${ModuleN}')])//preceding::input[@aria-label='Do you wants to add Time Duration?'][1]
    click on button                                 xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}']|//span[contains(text(),'${ModuleN}')])//preceding::input[@aria-label='Do you wants to add Time Duration?'][1]
    sleep                                           5

#-------------------------------------------------------------------------------------------
Add duration for SAT
    [Arguments]                                     ${mins}
    wait until Element is present in the page       ${AddDuration_Minutes}
    page should contain element                     ${AddDuration_Minutes}
    press keys                                      ${AddDuration_Minutes}       CTRL+a   BACKSPACE
    input text                                      ${AddDuration_Minutes}       ${mins}

#-------------------------------------------------------------------------------------------
Close add Time Duration
    [Arguments]                                     ${ModuleN}
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Close']
    click on button                                 xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}'])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Close']
    sleep                                           5

#-------------------------------------------------------------------------------------------
Save add Time Duration
    [Arguments]                                     ${ModuleN}
    page should contain element                     xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}']|//span[contains(text(),'${ModuleN}')])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Save']
    click on button                                 xpath:(//span[@title='${ModuleN}']|//div[@title='${ModuleN}']|//span[contains(text(),'${ModuleN}')])//preceding::label[normalize-space()='Do you wants to add Time Duration?'][1]/following::button[@title='Save']
    sleep                                           5

#-------------------------------------------------------------------------------------------
#                               Concept
#-------------------------------------------------------------------------------------------
verify a Concept in Concept list
    [Arguments]                                                     ${Concept}          ${duration}
    Course_DashBoard.verify concept leaders window
    Course_DashBoard.Verify Learn button of a concept
    Course_DashBoard.Verify Proficiency Analysis of Concept         ${Concept}
    Course_DashBoard.Verify Self Adaptive Test of a concept         ${Concept}          ${duration}

#-------------------------------------------------------------------------------------------
Click on a concept leaders button
    wait until page contains element                ${conceptslist_concept1_leaders}            120
    page should contain element                     ${conceptslist_concept1_leaders}
    click on button                                 ${conceptslist_concept1_leaders}
    sleep                                           5

#-------------------------------------------------------------------------------------------
verify concept leaders window
    Course_DashBoard.Click on a concept leaders button
    wait until Element is present in the page       ${Concept_Leaders_h}
    page should contain element                     ${Concept_Leaders_h}
    Course_DashBoard.Close concept leaders window

#-------------------------------------------------------------------------------------------
Close concept leaders window
    wait until Element is present in the page       ${Concept_Leaders_close}
    page should contain element                     ${Concept_Leaders_close}
    click on button                                 ${Concept_Leaders_close}
    sleep                                           5

#-------------------------------------------------------------------------------------------
Verify Learn button of a concept
    Course_DashBoard.Click on learn button of a concept
    Course_DashBoard.verify learn options of concept

#-------------------------------------------------------------------------------------------
Click on learn button of a concept
    page should contain element                     ${conceptslist_concept1_learn}
    click on button                                 ${conceptslist_concept1_learn}
    sleep                                           5

#-------------------------------------------------------------------------------------------
verify learn options of concept
    page should contain element                     ${concept_flashcards}

#-------------------------------------------------------------------------------------------
Verify Self Adaptive Test of a concept
    [Arguments]                                     ${Concept}          ${duration}
    Course_DashBoard.Click on Measure button        ${Concept}
    wait until Element is present in the page       xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//label[@class='v-label theme--light'][normalize-space()='Do you wants to add Time Duration?']
    page should contain element                     xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//label[@class='v-label theme--light'][normalize-space()='Do you wants to add Time Duration?']
    page should contain element                     xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//button[@title='Save']
    page should contain element                     xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//button[@title='Close']
    click on button                                 xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//div[@class='v-input--selection-controls__ripple']
    Course_DashBoard.Add duration for SAT           ${duration}
    click on button                                 xpath://div[@class='v-dialog v-dialog--active v-dialog--persistent']//button[@title='Save']
    wait until element is visible                   ${AbortTest_button}
    click on button                                 ${AbortTest_button}
    wait until element is visible                   ${aborttest}
    page should contain element                     ${aborttest}
    page should contain element                     ${aborttest_yes}
    click on button                                 ${aborttest_yes}
#    handle alert                                    ACCEPT
    wait until Element is present in the page       ${TestSubmission_h}
    page should contain element                     ${backtotests_button}
    click on button                                 ${backtotests_button}
    sleep                                           5
#-------------------------------------------------------------------------------------------
Verify Proficiency Analysis of Concept
    [Arguments]                                                         ${conceptn}
    Click on Proficiency Score button of module                         ${conceptn}
    ProficiencyAnalysis.Verify Proficiency Analysis Concept Page
