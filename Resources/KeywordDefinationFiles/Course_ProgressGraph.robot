*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Course_ProgressGraph.robot
Resource        ../../PageObjects/Courses_Dashboard.robot

*** Keywords ***
Click on Details button
    page should contain element                     ${progressgraph_details}
    click on button                                 ${progressgraph_details}

Verify Progress Graph page
    wait until element is present in the page       ${progressgraph_h}
    page should contain element                     ${progressgraph_h}
    page should contain element                     ${progressgraph_details}
    page should contain element                     ${progressgraph_close}
    page should contain element                     ${overallprogressgraph}
    page should contain element                     ${moduleprogressgraph}

verify Course Progress Info page
    Click on Details button
    wait until element is present in the page       ${courseprogressinfo_h}
    page should contain element                     ${courseprogressinfo_h}
    page should contain element                     ${courseprogressinfo_download}
    page should contain element                     ${courseprogressinfo_close}
    page should contain element                     ${courseprogressinfo_student_th}
    page should contain element                     ${courseprogressinfo_progress_th}

Verify Course Progress Info report download
    page should contain element                     ${courseprogressinfo_download}
    Empty Directory                                 C:/Users/Rahul/Downloads/
    click on button                                 ${courseprogressinfo_download}
    sleep                                           10
    Download should be done                         C:/Users/Rahul/Downloads/
    Empty Directory                                 C:/Users/Rahul/Downloads/

Close Course Progress Info window
    page should contain element                     ${courseprogressinfo_close}
    click on button                                 ${courseprogressinfo_close}

Close Progress Graph window
    page should contain element                     ${progressgraph_close}
    click on button                                 ${progressgraph_close}

Verify Course Progress
    verify progress graph page
    click on details button
    verify Course Progress Info page
    verify course progress info report download
    close course progress info window
    close progress graph window