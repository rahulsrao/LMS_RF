*** Settings ***
Documentation   All the page objects and keywords of Discussion Forums Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hPlay}                         xpath://div[contains(text(),'Play')]
${GameSpaceMission}              xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/space/space_1.svg"); background-position: center center;']
${btnSpaceStart}                 xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/space/space_start.svg"); background-position: center center;']//parent::div
${GameFastFurious}               xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/car_opt/car_poster.svg"); background-position: center center;']
${btnFastFuriousStart}           xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/car/car_start.svg"); background-position: center center;']//parent::div
${GameBalloonPopping}            xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/balloons/balloons_1.svg"); background-position: center center;']
${btnBalloonPoppingStart}        xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/balloons/balloon_start.svg"); background-position: center center;']//parent::div
${GameTrueFlase}                 xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/truefalse/poster.svg"); background-position: center center;']//parent::div
${btnTrueFalseStart}             xpath://div[@style='background-image: url("https://lms-staging-static-files.s3.amazonaws.com/games/truefalse/tf_start.svg"); background-position: center center;']//parent::div
${GameSelectCourse}              css:input[aria-label='Select Course*']
${GameSelectModule}              css:input[aria-label='Select Module']
${course_ART}                    xpath:(//div[contains(text(),'ART')]//ancestor::a)[1]
${course_Module1}                xpath:(//div[contains(text(),'Module 1')]//ancestor::a)[1]
${errormsg}                      css:div[class='toasted toasted-primary error']
${course_Module3}                xpath:(//div[contains(text(),'Module 3')]//ancestor::a)[1]
