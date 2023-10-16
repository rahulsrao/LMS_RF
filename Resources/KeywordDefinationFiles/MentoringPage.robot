*** Settings ***
Documentation   All the keywords of Mentoring page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/MentoringPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Mentoring page
   wait until element is visible                ${hmentoring}           120
   page should contain element                  ${hmentoring}
   page should contain element                  ${hcreatenewslots}
   page should contain element                  ${hdaterange}
   page should contain element                  ${mnt_startdate}
   page should contain element                  ${mnt_enddate}
   page should contain element                  ${happointmenthours}
   page should contain element                  ${mnt_timeslots}
   click on button                              ${mnt_timeslots}
   page should contain element                  ${opt_10}
   page should contain element                  ${opt_15}
   page should contain element                  ${opt_30}
   click element                                ${opt_15}
   page should contain element                  ${btn_copymonsun}
   page should contain element                  ${monday}
   page should contain element                  ${tuesday}
   page should contain element                  ${wednesday}
   page should contain element                  ${thursday}
   scroll element into view                     ${btn_clearslots}
   page should contain element                  ${friday}
   page should contain element                  ${saturday}
   page should contain element                  ${sunday}
   page should contain element                  ${btn_clearslots}
   page should contain element                  ${btn_saveslots}
   scroll element into view                     ${h_calendarforslotspreview}
   wait until element is visible                ${mnt_next}                         120
   page should contain element                  ${h_calendarforslotspreview}
   page should contain element                  ${mnt_next}
   page should contain element                  ${mnt_prev}
   set screenshot directory                     ../TestCases/Screenshots/Mentoring
   click element                                ${mnt_next}
   capture page screenshot
   click element                                ${mnt_today}
   capture page screenshot
   click element                                ${mnt_prev}
   capture page screenshot
   sleep                                        5

#-------------------------------------------------------------------------------------------
verify mentoring page of Student user
    wait until element is visible               ${hMentoringBookedSlots}        120
    page should contain element                 ${hMentoringBookedSlots}
    page should contain element                 ${hBatches}
    mouse over                                  ${SelectBatch}
    page should contain element                 ${SelectBatch}
    page should contain element                 ${meetingtype}
    click element                               ${SelectBatch}
    wait until Element is present in the page   ${BatchARTBATCHONE}
    page should contain element                 ${BatchARTBATCHONE}
    click element                               ${batchartbatchone}
    page should contain element                 ${meetingtype}
    click element                               ${meetingtype}
    page should contain element                 ${opt_All}
    page should contain element                 ${opt_liveupcoming}
    page should contain element                 ${opt_upcoming}
    click element                               ${opt_All}