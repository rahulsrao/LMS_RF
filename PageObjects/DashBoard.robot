*** Settings ***
Documentation   All the page objects and keywords of Wall Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py
Library          ../Generic/DashBoard.py

*** Variables ***
${h_Organization}           css:.logo-wrapper div
${h_MyCourses}              css:span[class='headline primary--text'] b

${btnAddMore}               css:span[class='primary--text']
${hRecentWallPosts}         xpath://div[contains(text(),'Recent Wall Posts')]
${hRecentDiscussions}       xpath://div[contains(text(),'Recent Discussions')]
${hUpcomingEvents}          xpath://div[contains(text(),'Upcoming Events')]
${hConferencesScheduled}    xpath://div[contains(text(),'Conferences Scheduled')]
${hCourses}                 xpath://div[@class='v-toolbar__title'][contains(text(),'Courses')]
${hCourseName}              css:small[class='course-name']
${ckbMyMeetings}            css:input[aria-label='My Meetings']

${h_SuggestedLearning}      xpath://b[normalize-space()='Suggested Learning']
${AssignmentsDue}           xpath://div[contains(text(),'Assignments Due')]
${UpcomingTests}            xpath://div[contains(text(),'Upcoming Tests')]

${hSelfEnrolment}           xpath://div[normalize-space()='Self Enrolment']
${Close_SelfEnrolment}      xpath://div[normalize-space()='Self Enrolment']/following-sibling::button
