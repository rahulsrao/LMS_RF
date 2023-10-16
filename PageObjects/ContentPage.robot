*** Settings ***
Documentation   All the page objects and keywords of Wall Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${h_Content}            xpath://div[@class='v-toolbar__title'][contains(text(),'Content')]
${btnCourses}           xpath:((//div[contains(text(),'All Courses')])[2])//parent::div//parent::button
${btnModules}           xpath:((//div[contains(text(),'All Modules')])[2])//parent::div//parent::button
${tabVideos}            xpath://a[contains(text(),'Videos')]
${tabPages}             xpath://a[contains(text(),'Pages')]
${tabCollections}       xpath://a[contains(text(),'Collections')]
${tabAssignments}       xpath://a[contains(text(),'Assignments')]
${tabTests}             xpath://a[contains(text(),'Tests')]
${tabStudentProjects}   xpath://a[contains(text(),'Student Projects')]
${tabLessonPlan}        xpath://a[contains(text(),'Lesson Plan')]
