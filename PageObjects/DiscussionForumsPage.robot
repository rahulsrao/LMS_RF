*** Settings ***
Documentation   All the page objects and keywords of Discussion Forums Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${btnNewDiscussion}            xpath://span[contains(text(),'New Discussion')]//ancestor::a
${btnNewPoll}                  xpath://span[contains(text(),'New Poll')]//ancestor::a
${btnStartyourdiscussion}      css:button[class='editor-placeholder mt-2']
${Title}                       xpath:(//input[@aria-label='Title*'])[1]
${textarea}                    xpath://textarea[@aria-label='What do you think?']
${btnMore}                     xpath:(//i[contains(text(),'more_vert')]//ancestor::button)[2]
${btnimginput}                 css:input[class='input-file']
${btnSelectChannel}            xpath:(//input[@placeholder='Select Channel(s)*'])[1]
${btnPostLater}                xpath:(//input[@aria-label='Post Later'])[1]
${inphrs}                      css:input[aria-label='hrs']
${inpmins}                     css:input[aria-label='mins']
${btnAddTags}                  xpath:(//span[contains(text(),'add tags')]//ancestor::button)[1]
${btnPost}                     xpath:(//div[contains(text(),'Post')]//ancestor::button)[1]
${inpAddTags}                  xpath:(//input[@placeholder='Add Tags'])[1]
${btnMenu}                     xpath:(//i[contains(text(),'menu')]//ancestor::button)[2]
${btnHome}                     xpath:(//div[contains(text(),'Home')]//ancestor::a)[1]
${btnHelpVideo}                xpath:(//div[contains(text(),'Help Video')]//ancestor::a)[1]
${hChannels}                   xpath://div[contains(text(),'CHANNELS')]
${NPollTitle}                  xpath:(//input[@aria-label='Title*'])[2]
${Option1}                     xpath://input[@placeholder='Option 1']
${Option2}                     xpath://input[@placeholder='Option 2']
${NPSelectChannel}             xpath:(//input[@placeholder='Select Channel(s)*'])[2]
${NPbtnPostLater}              xpath:(//input[@aria-label='Post Later'])[2]
${NPbtnAddTags}                xpath:(//span[contains(text(),'add tags')]//ancestor::button)[2]
${NPinpAddTags}                xpath:(//input[@placeholder='Add Tags'])[1]
${NPbtnPost}                   xpath:(//div[contains(text(),'Post')]//ancestor::button)[2]

${discussionTitle}             css:.headline.mt-2.mb-2
${discussionDescription}       css:.pre-wrap--line.max-size-fix
${discussionLike}              xpath://div[contains(text(),'Like')]/parent::button
${discussionChannels}          xpath://h6[normalize-space()='Channels']
${discussionConcepts}          xpath://h6[normalize-space()='Concepts']
${discussionRelatedStuff}      xpath://h6[normalize-space()='Related Stuff']
${discussionComment}           css:textarea[placeholder='Write your comment here']
${discussionCommentImage}      xpath:(//input[@placeholder='Select Image'])[2]
${discussionArrowUp}           xpath://i[normalize-space()='keyboard_arrow_up']/ancestor::button