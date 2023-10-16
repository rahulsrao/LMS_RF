*** Settings ***
Documentation   All the keywords of Search Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/SearchPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
verify Search page
    wait until element is visible           ${hsearch}                      120
    page should contain element             ${hsearch}
    page should contain element             ${inpSearch}
    page should contain element             ${btnPages}
    page should contain element             ${btncollections}
    page should contain element             ${btnAssignments}
    page should contain element             ${btnTests}
    page should contain element             ${btnStudentProjects}
    page should contain element             ${btnDiscussions}
    page should contain element             ${btnLessonPlans}
    page should contain element             ${btnEvents}
    page should contain element             ${btnUsers}
    go back

#-------------------------------------------------------------------------------------------
verify Search page of student user
    wait until element is visible           ${hsearch}                      120
    page should contain element             ${hsearch}
    page should contain element             ${inpSearch}
    page should contain element             ${btnPages}
    page should contain element             ${btncollections}
    page should contain element             ${btnAssignments}
    page should contain element             ${btnTests}
    page should contain element             ${btnStudentProjects}
    page should contain element             ${btnDiscussions}
    page should contain element             ${btnEvents}
    page should contain element             ${btnUsers}
    go back