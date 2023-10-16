*** Settings ***
Documentation   All the keywords of Discussion Forum
Library         SeleniumLibrary
Resource        ../../PageObjects/Generic.robot
Resource        ../../PageObjects/DiscussionForumsPage.robot
Resource        ../../Resources/TestData/TestData.robot

*** Keywords ***
#-------------------------------------------------------------------------------------------
Verify Discussion Forums page
    DiscussionForumsPage.verify New Discussion tab
    DiscussionForumsPage.verify menu button
    DiscussionForumsPage.verif New Poll page
#-------------------------------------------------------------------------------------------
Verify Discussion Forums page of student user
    DiscussionForumsPage.verify New Discussion tab of student user
    DiscussionForumsPage.verify menu button
    DiscussionForumsPage.verif New Poll page of student user
#-------------------------------------------------------------------------------------------
verify New Discussion Page
    wait until element is visible                       ${btnNewDiscussion}           120
    page should contain element                         ${btnNewDiscussion}
    sleep                                               5
    page should contain element                         ${btnStartyourdiscussion}
    click element                                       ${btnStartyourdiscussion}
    page should contain element                         ${title}
    page should contain element                         ${textarea}
    page should contain element                         ${btnMore}
    page should contain element                         ${btnimginput}
    page should contain element                         ${btnSelectChannel}
    page should contain element                         ${btnPostLater}
    page should contain element                         ${inphrs}
    page should contain element                         ${inpmins}
    page should contain element                         ${btnAddTags}
    click element                                       ${btnAddTags}
    page should contain element                         ${inpaddtags}
    element should not be visible                       ${btnPost}
    go back

#-------------------------------------------------------------------------------------------
verify New Discussion tab
    wait until element is visible                       ${btnNewDiscussion}           120
    page should contain element                         ${btnNewDiscussion}
    sleep                                               5
    page should contain element                         ${btnStartyourdiscussion}
    click element                                       ${btnStartyourdiscussion}
    page should contain element                         ${title}
    page should contain element                         ${textarea}
    page should contain element                         ${btnMore}
    page should contain element                         ${btnimginput}
    page should contain element                         ${btnSelectChannel}
    page should contain element                         ${btnPostLater}
    page should contain element                         ${inphrs}
    page should contain element                         ${inpmins}
    page should contain element                         ${btnAddTags}
    click element                                       ${btnAddTags}
    page should contain element                         ${inpaddtags}
    element should not be visible                       ${btnPost}
#-------------------------------------------------------------------------------------------
verify New Discussion tab of student user
    wait until element is visible                       ${btnNewDiscussion}           120
    page should contain element                         ${btnNewDiscussion}
    sleep                                               5
    page should contain element                         ${btnStartyourdiscussion}
    click element                                       ${btnStartyourdiscussion}
    page should contain element                         ${title}
    page should contain element                         ${textarea}
    page should contain element                         ${btnMore}
    page should contain element                         ${btnimginput}
    page should contain element                         ${btnSelectChannel}
    page should contain element                         ${inphrs}
    page should contain element                         ${inpmins}
    page should contain element                         ${btnAddTags}
    click element                                       ${btnAddTags}
    page should contain element                         ${inpaddtags}
    element should not be visible                       ${btnPost}
#-------------------------------------------------------------------------------------------
verif New Poll page of student user
    page should contain element                         ${btnnewpoll}
    click element                                       ${btnnewpoll}
    wait until element is present in the page           ${npolltitle}
    page should contain element                         ${npolltitle}
    page should contain element                         ${option1}
    page should contain element                         ${option2}
    page should contain element                         ${npselectchannel}
    page should contain element                         ${NPbtnAddTags}
    click element                                       ${npbtnaddtags}
    page should contain element                         ${npinpaddtags}
    page should contain element                         ${npbtnpost}
    element should be disabled                          ${npbtnpost}
#-------------------------------------------------------------------------------------------
verif New Poll page
    page should contain element                         ${btnnewpoll}
    click element                                       ${btnnewpoll}
    wait until element is visible                       ${npolltitle}
    page should contain element                         ${npolltitle}
    page should contain element                         ${option1}
    page should contain element                         ${option2}
    page should contain element                         ${npselectchannel}
    page should contain element                         ${npbtnpostlater}
    page should contain element                         ${NPbtnAddTags}
    click element                                       ${npbtnaddtags}
    page should contain element                         ${npinpaddtags}
    page should contain element                         ${npbtnpost}
    element should be disabled                          ${npbtnpost}
#-------------------------------------------------------------------------------------------
verify menu button
    page should contain element                         ${btnmenu}
    click element                                       ${btnmenu}
    page should contain element                         ${btnhome}
    page should contain element                         ${btnhelpvideo}
    page should contain element                         ${hchannels}
    reload page
#-------------------------------------------------------------------------------------------
verify Create Discussion Page
    ${handles}=                        Get Window Handles
    switch window                      ${handles}[1]
    sleep                              5
    wait until Element is present in the page           ${btnNewDiscussion}
    page should contain element                         ${btnNewDiscussion}
    sleep                                               5
    page should contain element                         ${title}
    page should contain element                         ${textarea}
    page should contain element                         ${btnMore}
    page should contain element                         ${btnimginput}
    page should contain element                         ${btnSelectChannel}
    page should contain element                         ${btnPostLater}
    page should contain element                         ${inphrs}
    page should contain element                         ${inpmins}
    page should contain element                         ${btnAddTags}
    click element                                       ${btnAddTags}
    page should contain element                         ${inpaddtags}
#    element should be disabled                          ${btnPost}
    close window
    sleep                                               3
    ${handles}=                                         Get Window Handles
    switch window                                       ${handles}[0]
    sleep                                               3
#-------------------------------------------------------------------------------------------
verify Create Discussion Page of student
    ${handles}=                        Get Window Handles
    switch window                      ${handles}[1]
    sleep                              5
    wait until Element is present in the page           ${btnNewDiscussion}
    page should contain element                         ${btnNewDiscussion}
    sleep                                               5
    page should contain element                         ${title}
    page should contain element                         ${textarea}
    page should contain element                         ${btnMore}
    page should contain element                         ${btnimginput}
    page should contain element                         ${btnSelectChannel}
    page should contain element                         ${inphrs}
    page should contain element                         ${inpmins}
    page should contain element                         ${btnAddTags}
    click element                                       ${btnAddTags}
    page should contain element                         ${inpaddtags}
    close window
    sleep                                               3
    ${handles}=                                         Get Window Handles
    switch window                                       ${handles}[0]
    sleep                                               3
#-------------------------------------------------------------------------------------------
Verify a Discussion
    [Arguments]                                         ${discussion}
    wait until element is visible                       ${discussiontitle}                      120
    page should contain element                         ${discussiontitle}
    ${Discussion_Title}=     Get Text                   ${discussiontitle}
    should be equal                                     ${Discussion_Title}                     ${discussion}
    page should contain element                         ${discussiondescription}
    page should contain element                         ${discussionlike}
    page should contain element                         ${discussionchannels}
    page should contain element                         ${discussionconcepts}
    page should contain element                         ${discussionrelatedstuff}
    page should contain element                         ${discussioncomment}
    page should contain element                         ${discussioncommentimage}
    page should contain element                         ${discussionarrowup}
    go back