*** Settings ***
Documentation   All the keywords of Login page
Library         SeleniumLibrary
Resource        ../../PageObjects/LearnPage.robot
Resource        ../TestData/TestData.robot

*** Keywords ***
verify Learn Page
    sleep                               5
    wait until element is visible       ${learn_applyfilters}           120
    page should contain element         ${learn_applyfilters}
#    Learn.select course
    Learn.select module
    click on button                     ${learn_applyfilters}
    sleep                               5
    wait until element is visible       ${learn_clickthecardtoseetheanswer}         120
    page should contain element         ${learn_clickthecardtoseetheanswer}
    page should contain element         ${learn_flashcard_question}
    page should contain element         ${learn_nextq}
    Learn.click the card to see the answer
    Learn.click the card to see the question
    Learn.click on next question
    Learn.click on previous question
    go back
    sleep                               5

verify Moduele Learn Page
    sleep                               5
    page should contain element         ${learn_applyfilters}
#    Learn.select course
    Learn.select module
    click on button                     ${learn_applyfilters}
    sleep                               5
    page should contain element         ${learn_clickthecardtoseetheanswer}
    page should contain element         ${learn_flashcard_question}
    page should contain element         ${learn_nextq}
    Learn.click the card to see the answer
    Learn.click the card to see the question
    Learn.click on next question
    Learn.click on previous question
    go back
    sleep                               5

Select Course
    wait until element is visible       ${learn_courses}                120
    page should contain element         ${learn_courses}
    mouse over                          ${learn_courses}
#    click element
    wait until element is visible       xpath://div[contains(text(),'${course}')]/parent::a         120
    page should contain element         xpath://div[contains(text(),'${course}')]/parent::a
    click on button                     xpath://div[contains(text(),'${course}')]/parent::a

Select Module
    wait until element is visible       ${learn_modules}                120
    page should contain element         ${learn_modules}
    mouse over                          ${learn_modules}
#    click on button                     ${learn_modules}
    page should contain element         xpath://div[contains(text(),'${module}')]/parent::a
    click on button                     xpath://div[contains(text(),'${module}')]/parent::a

Click on next Question
    page should contain element         ${learn_nextq}
    click on button                     ${learn_nextq}

Click on Previous Question
    page should contain element         ${learn_previousq}
    click on button                     ${learn_previousq}

Click the card to see the answer
    page should contain element         ${learn_flashcard_question}
    click on button                     ${learn_flashcard_question}

Click the card to see the question
    page should contain element         ${learn_flashcard_answer}
    click on button                     ${learn_flashcard_answer}

