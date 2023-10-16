*** Settings ***
Documentation   All the page objects and keywords of Discussion Forums Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hsearch}                      xpath://div[@class='v-toolbar__title'][contains(text(),'Search')]
${inpSearch}                    css:input[aria-label='Type to search']
${btnPages}                     css:button[title='Pages']
${btnCollections}               css:button[title='Collections']
${btnAssignments}               css:button[title='Assignments']
${btnTests}                     css:button[title='Tests']
${btnStudentProjects}           css:button[title='Student Projects']
${btnDiscussions}               css:button[title='Discussions']
${btnLessonPlans}               css:button[title='Lesson Plans']
${btnEvents}                    css:button[title='Events']
${btnUsers}                     css:button[title='Users']