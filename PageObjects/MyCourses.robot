*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${MyCourses_h}                       xpath:(//div[contains(text(),'My Courses')])[2]
${MyCourses_SelectCourses}           css:input[aria-label='Select Course']
${MyCourses_AddCourse}               xpath://i[contains(text(),'add')]
#${MyCourses_AddCourse}               xpath://i[contains(text(),'add')]//ancestor::div[@class='flex xs12 md3 offset-md-1']
${MyCourses_CourseName}              css:small[class='course-name']
${btnSelfEnrolment}                  css:i[title='Self Enrolment']
${hSelfEnrolment}                    xpath://div[normalize-space()='Self Enrolment']
${Close_SelfEnrolment}               xpath://div[normalize-space()='Self Enrolment']/following-sibling::button

${hSuggestedCourses}                 xpath://div[contains(text(),'Suggested Courses')]
${SuggestedCourses_msg}              xpath://h2[normalize-space()='Would you like to join the course?']
${Jointhecourse_Yes}                 xpath://div[normalize-space()='Yes']/parent::button
${Jointhecourse_No}                  xpath://div[normalize-space()='No']/parent::button
