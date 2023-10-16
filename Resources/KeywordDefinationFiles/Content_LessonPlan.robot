*** Settings ***
Documentation   All the keywords of Progress Graph
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Content_LessonPlan.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Lesson Plan tab in Content Page
    select tab       LESSON PLAN
    Content_LessonPlan.verify LessonPlan Page
    Content_LessonPlan.verify LessonPlan Filter

verify LessonPlan Page
    wait until Element is present in the page           ${createlessonplan}
    page should contain element                         ${lpSearch}
    page should contain element                         ${createlessonplan}
    page should contain element                         ${lpFilter}
    page should contain element                         ${lpsort_TitleA-Z}
    page should contain element                         ${lpsort_MostViewed}
    page should contain element                         ${lpsort_Likes}
    page should contain element                         ${LPSORT_TITLEA-Z}
    page should contain element                         ${lpsort_TitleA-Z}

verify LessonPlan Filter
    click element                                       ${lpFilter}
    wait until Element is present in the page           ${lphAdvancedFilters}
    page should contain element                         ${lphAdvancedFilters}
    page should contain element                         ${lpPublished}
    page should contain element                         ${lpUnPublished}
    page should contain element                         ${lpLiked}
    page should contain element                         ${lpBookmarked}
    page should contain element                         ${lpPublic}
    page should contain element                         ${lpMyContent}
    page should contain element                         ${lpApply}
    page should contain element                         ${lpClearAll}
    page should contain element                         ${lpclose}
    click element                                       ${lpclose}
    sleep                                               5