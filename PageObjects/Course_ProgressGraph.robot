*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary

*** Variables ***
#Progress Graph
${ProgressGraph_h}                                  xpath://div[normalize-space()='Progress Graph']
${ProgressGraph_Details}                            xpath://div[normalize-space()='Progress Graph']/following-sibling::button[1]
${ProgressGraph_Close}                              xpath://div[normalize-space()='Progress Graph']/following-sibling::button[2]
${OverallProgressGraph}                             css:canvas[id='progressChart']
${ModuleProgressGraph}                              css:canvas[id='courseProgressChart']

#Course Progress Info
${CourseProgressInfo_h}                             xpath://div[contains(text(),'Course Progress Info')]
${CourseProgressInfo_download}                      xpath://a[@title='Course Progress Info']
${CourseProgressInfo_close}                         xpath://a[@title='Course Progress Info']/following-sibling::button
${CourseProgressInfo_Student_th}                    xpath:(//th[contains(@aria-label,'Student:')])[1]
${CourseProgressInfo_Progress_th}                   xpath:(//th[contains(@aria-label,'Progress:')])[2]
