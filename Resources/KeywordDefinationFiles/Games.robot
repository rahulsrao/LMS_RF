*** Settings ***
Documentation   All the keywords of Games
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Games.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
Verify Games Page
    Games.verify Play Page
#    Games.verify space mission game
#    Games.verify Fast & Furious Game
    Games.verify Balloon Popping Game
    Games.verify True Or Flase Game
    sleep                                   5


verify Play Page
    wait until Element is present in the page   ${hplay}
    page should contain element                 ${hplay}
    reload page
    wait until Element is present in the page   ${gamespacemission}
    page should contain element                 ${GameSpaceMission}
    page should contain element                 ${btnspacestart}
    wait until Element is present in the page   ${gamefastfurious}
    page should contain element                 ${gamefastfurious}
    page should contain element                 ${btnfastfuriousstart}
    wait until Element is present in the page   ${gameballoonpopping}
    page should contain element                 ${GameBalloonPopping}
    wait until Element is present in the page   ${btnballoonpoppingstart}
    page should contain element                 ${btnBalloonPoppingStart}
    wait until Element is present in the page   ${gametrueflase}
    page should contain element                 ${GameTrueFlase}

verify Space Mission Game
    page should contain element                 ${GameSpaceMission}
    page should contain element                 ${btnspacestart}
    click element                               ${btnSpaceStart}
    sleep                                       10
    wait until element is present in the page   ${GameSelectCourse}
    page should contain element                 ${GameSelectCourse}
    click on button                             ${GameSelectCourse}
    page should contain element                 ${course_ART}
    click on button                             ${course_ART}
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module1}
    page should contain element                 ${course_module3}
    click on button                             ${course_module1}
    page should contain element                 ${btnspacestart}
    click element                               ${btnspacestart}
    wait until Element is present in the page   ${errormsg}
    element text should be                      ${errormsg}                                     You must have 10 questions in each difficulty level (Easy, Medium, Hard).
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module3}
    click on button                             ${course_module3}
    page should contain element                 ${btnspacestart}
    go back
    page should contain element                 ${hplay}

verify Fast & Furious Game
    page should contain element                 ${GameFastFurious}
    page should contain element                 ${btnFastFuriousStart}
    click element                               ${btnFastFuriousStart}
    sleep                                       10
    wait until Element is present in the page   ${GameSelectCourse}
    page should contain element                 ${GameSelectCourse}
    click on button                             ${GameSelectCourse}
    wait until element is visible               ${course_ART}
    page should contain element                 ${course_ART}
    click on button                             ${course_ART}
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    wait until element is visible               ${course_module1}
    page should contain element                 ${course_module1}
    page should contain element                 ${course_module3}
    click on button                             ${course_module1}
    page should contain element                 ${btnFastFuriousStart}
    click element                               ${btnFastFuriousStart}
    wait until element is visible               ${errormsg}
    element text should be                      ${errormsg}                                     You must have 10 questions in each difficulty level (Easy, Medium, Hard).
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module3}
    click on button                             ${course_module3}
    page should contain element                 ${btnFastFuriousStart}
    go back
    page should contain element                 ${hplay}

verify Balloon Popping Game
    wait until Element is present in the page   ${GameBalloonPopping}
    page should contain element                 ${GameBalloonPopping}
    page should contain element                 ${btnBalloonPoppingStart}
    click element                               ${btnBalloonPoppingStart}
#    reload page
    sleep                                       20
    wait until Element is present in the page   ${GameSelectCourse}
    page should contain element                 ${GameSelectCourse}
    click on button                             ${GameSelectCourse}
    wait until element is visible               ${course_ART}
    page should contain element                 ${course_ART}
    click on button                             ${course_ART}
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    wait until element is visible               ${course_module1}
    page should contain element                 ${course_module1}
    click on button                             ${course_module1}
    page should contain element                 ${btnBalloonPoppingStart}
    click element                               ${btnBalloonPoppingStart}
    sleep                                       5
    wait until element is visible               ${errormsg}
    element text should be                      ${errormsg}                                         You must have 10 questions in each difficulty level (Easy, Medium, Hard).
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module3}
    click on button                             ${course_module3}
    page should contain element                 ${btnBalloonPoppingStart}
    go back
    page should contain element                 ${hplay}

verify True Or Flase Game
    wait until Element is present in the page   ${GameTrueFlase}
    page should contain element                 ${GameTrueFlase}
    click element                               ${GameTrueFlase}
    reload page
    sleep                                       20
    wait until Element is present in the page   ${GameSelectCourse}
    wait until element is visible               ${GameSelectCourse}                                  120
    page should contain element                 ${GameSelectCourse}
    click on button                             ${GameSelectCourse}
    page should contain element                 ${course_ART}
    click on button                             ${course_ART}
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module1}
    page should contain element                 ${course_module3}
    click on button                             ${course_module1}
    wait until Element is present in the page   ${btnTrueFalseStart}
    page should contain element                 ${btnTrueFalseStart}
    click element                               ${btnTrueFalseStart}
    wait until element is visible               ${errormsg}
    element text should be                      ${errormsg}                                         You must have 10 questions in each difficulty level (Easy, Medium, Hard).
    page should contain element                 ${GameSelectModule}
    click on button                             ${GameSelectModule}
    page should contain element                 ${course_module3}
    click on button                             ${course_module3}
    page should contain element                 ${btnTrueFalseStart}
    go back
    page should contain element                 ${hplay}