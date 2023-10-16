*** Settings ***
Documentation   All the keywords of Wall Page
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/Wallpage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Wall Page of Admin Teacher User
    WallPage.Verify Wall Page Elements
    WallPage.Verify Filter
    WallPage.Verify Search button
    WallPage.Verify More option
    WallPage.Verify Community Wall
    WallPage.Verify Goto Wall
    WallPage.Verify Create Wall
    go back
    sleep           5
#-------------------------------------------------------------------------------------------
Verify Wall Page of Teacher User
    WallPage.Verify Wall Page Elements
    WallPage.Verify Filter
    WallPage.Verify Search button
    WallPage.Verify More option of Teacher User
    WallPage.Verify Community Wall
    WallPage.Verify Goto Wall
    WallPage.Verify Create Wall
    go back
    sleep           5
#-------------------------------------------------------------------------------------------
Verify Wall Page of Student User
    WallPage.Verify Wall Page Elements of student user
    WallPage.Verify Filter of Student User
    WallPage.Verify Search button
    WallPage.Verify More option of Teacher User
    WallPage.Verify Community Wall
    WallPage.Verify Goto Wall
    go back
    sleep           5
#-------------------------------------------------------------------------------------------
Verify Wall Page Elements
    wait until Element is present in the page       ${hWall}
    Element Text Should Be                          ${hwall}            Wall
    page should contain element                     ${btnFilterbycategory}
    page should contain element                     ${btnFilterbyBatch}
    page should contain element                     ${btnFilter}
    page should contain element                     ${Search}
    page should contain element                     ${btnMore}
    page should contain element                     ${btnCreatePost}

#-------------------------------------------------------------------------------------------
Verify Wall Page Elements of student user
    wait until Element is present in the page       ${hWall}
    Element Text Should Be                          ${hwall}            Wall
    page should contain element                     ${btnFilterbycategory}
    page should contain element                     ${btnFilterbyBatch}
    page should contain element                     ${btnFilter}
    page should contain element                     ${Search}
    page should contain element                     ${btnMore}
#-------------------------------------------------------------------------------------------
Verify Filter
    click element                                   ${btnFilter}
    sleep                                           5
    page should contain element                     ${OptMyPosts}
    page should contain element                     ${OptLiked}
    page should contain element                     ${optpublic}
    page should contain element                     ${OptScheduled}
    page should contain element                     ${btnApply}
    page should contain element                     ${btnClear}
    reload page
#-------------------------------------------------------------------------------------------
Verify Filter of Student User
    click element                                   ${btnFilter}
    sleep                                           5
    page should contain element                     ${OptLiked}
    page should contain element                     ${optpublic}
    page should contain element                     ${btnApply}
    page should contain element                     ${btnClear}
    reload page
#-------------------------------------------------------------------------------------------
Verify Search button
    sleep                                           5
    mouse over                                      ${Search}
    page should contain element                     ${Search}
    click element                                   ${Search}
    sleep                                           3
    page should contain element                     ${txbSearch}
    page should contain element                     ${btnclose}
    click element                                   ${btnclose}
#-------------------------------------------------------------------------------------------
Verify More option
    page should contain element                     ${btnMore}
    click element                                   ${btnMore}
    sleep                                           3
    page should contain element                     ${OptWallReport}
    page should contain element                     ${OptCommunityWall}

#-------------------------------------------------------------------------------------------
Verify More option of Teacher User
    page should contain element                     ${btnMore}
    click element                                   ${btnMore}
    sleep                                           3
    page should contain element                     ${OptCommunityWall}
#-------------------------------------------------------------------------------------------
Verify Community Wall
    click element                                   ${OptCommunityWall}
    sleep                                           5
    wait until Element is present in the page       ${hCommunityWall}
#-------------------------------------------------------------------------------------------
Verify Goto Wall
    click element                                   ${btnMore}
    wait until element is visible                   ${optGoToWall}              120
    page should contain element                     ${optGoToWall}
    click element                                   ${optGoToWall}
#-------------------------------------------------------------------------------------------
Verify Create Wall
    page should contain element                     ${btnCreatePost}
    click element                                   ${btnCreatePost}
    wait until Element is present in the page       ${hShareAnupdate}
    page should contain element                     ${hShareAnupdate}
    scroll element into view                        ${btnPost}
    page should contain element                     ${btnPost}
    page should contain element                     ${Cancel}
    click element                                   ${Cancel}