*** Settings ***
Documentation   All the page objects and keywords of Wall Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hWall}                        css:div[class='flex'] div[class='v-toolbar__title']
${btnFilterbycategory}          xpath:(//input[@placeholder='Filter by category'])[2]
${btnFilterbyBatch}             xpath://input[@placeholder='Filter by Batch']
${btnFilter}                    xpath://i[contains(text(),'filter_list')]
${OptMyPosts}                   xpath://input[@aria-label='My Posts']
${OptLiked}                     xpath://input[@aria-label='Liked']
${OptPublic}                    xpath://input[@aria-label='Public']
${OptScheduled}                 xpath://input[@aria-label='Scheduled']
${btnApply}                     xpath://div[contains(text(),'Apply')]//parent::button
${btnClear}                     xpath://div[contains(text(),'Clear')]//parent::button
${Search}                       xpath:(//i[text()='search'])//parent::div//parent::button
${txbSearch}                    xpath://input[@placeholder='Search']
${btnclose}                     xpath://i[@class='v-icon v-icon--link material-icons theme--light']
${btnMore}                      xpath:(((//i[contains(text(),'more_vert')])//parent::div)//parent::button)[2]
${btnCreatePost}                xpath://button[@title='Create Post']
${hShareAnupdate}               xpath://label[@class='headline' and contains(text(),'Share an update')]
${btnClose}                     xpath:(//div[contains(text(),'Cancel')]//parent::button)
${OptWallReport}                xpath://div[contains(text(),'Wall Report')]
${OptCommunityWall}             xpath://div[contains(text(),'Community Wall')]
${hCommunityWall}               xpath://div[@class='flex']//div[contains(text(),'Community Wall')]
${optGoToWall}                  xpath://div[contains(text(),'Go To Wall')]
${btnPost}                      xpath://button[@type='submit' and @method='post']
${Cancel}                       xpath://div[contains(text(),'Cancel')]//parent::button



