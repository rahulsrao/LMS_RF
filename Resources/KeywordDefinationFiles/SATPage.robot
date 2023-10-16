*** Settings ***
Documentation   All the keywords of Top Menu
Library         SeleniumLibrary
Resource        ../../PageObjects/SATPage.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
#                               Take Test
#-------------------------------------------------------------------------------------------
Verify Take Test Page
    wait until Element is present in the page               ${Question_h}
    page should contain element                             ${question_h}
    page should contain element                             ${btn_submit&next}
    page should contain element                             ${timer}
    page should contain element                             ${btn_AbortTest}
    SATPage.Click on Abort Test button
    SATPage.Verify Abort Test window

#-------------------------------------------------------------------------------------------
Click on Abort Test button
    page should contain element                             ${btn_AbortTest}
    click on button                                         ${btn_AbortTest}
    sleep                                                   5

#-------------------------------------------------------------------------------------------
Verify Abort Test window
    wait until Element is present in the page               ${aborttest}
    page should contain element                             ${aborttest}
    page should contain element                             ${aborttest_yes}
    page should contain element                             ${aborttest_no}
    SATPage.Click on Yes button
#-------------------------------------------------------------------------------------------
Click on Yes button
    page should contain element                             ${aborttest_yes}
    click on button                                         ${aborttest_yes}
    sleep                                                   5

#-------------------------------------------------------------------------------------------
Click on No button
    page should contain element                             ${aborttest_no}
    click on button                                         ${aborttest_no}
    sleep                                                   5

#-------------------------------------------------------------------------------------------
#                               Test Submission Page
#-------------------------------------------------------------------------------------------
Verify Test Submission Page
    wait until Element is present in the page               ${TestSubmission_h}
    page should contain element                             ${TestSubmission_h}
    SATPage.Verify Test Submission details
    page should contain element                             ${summary_h}
    go back

#-------------------------------------------------------------------------------------------
Verify Test Submission details
    page should contain element                             ${answered}
    page should contain element                             ${unanswered}
    page should contain element                             ${hintused}
    page should contain element                             ${marksscored}
    page should contain element                             ${totalmarks}
    page should contain element                             ${gradedby}
    page should contain element                             ${gradedat}