*** Settings ***
Documentation   All the page objects and keywords of Inbox Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hInbox}                       xpath://div[@class='v-toolbar__title'][contains(text(),'Inbox')]
${menu}                         xpath://i[@class='v-icon material-icons theme--light'][contains(text(),'menu')]
${ibx_search}                   xpath:(//input[@placeholder='Search Here..'])[1]
${Profile}                      xpath://div[@class='v-menu__activator']//div[@class='v-list__tile__avatar']//div[@class='v-avatar']//img
${btninbox}                     xpath://i[contains(text(),'inbox')]//parent::div//parent::a
${btnSentMail}                  xpath://i[contains(text(),'send')]//parent::div//parent::a
${btnImportant}                 xpath://i[contains(text(),'bookmark_border')]//parent::div//parent::a
${btnDrafts}                    xpath://i[contains(text(),'drafts')]//parent::div//parent::a
${btnTrash}                     xpath://i[contains(text(),'delete')]//parent::div//parent::a
${selectall}                    xpath:(//input[@type='checkbox'])[1]
${SelectFilter}                 css:input[aria-label='Select']
${Filter}                       css:input[aria-label='Filter']
${refresh}                      xpath://i[contains(text(),'refresh')]//parent::div//parent::button
${btnCompose}                   xpath://div[contains(text(),'compose')]//parent::div//parent::button
${btnForward}                   xpath://i[contains(text(),'arrow_forward_ios')]//parent::div//parent::button
${btnBackward}                  xpath://i[contains(text(),'arrow_back_ios')]//parent::div//parent::button
${hCompose}                     xpath://div[contains(text(),'Compose')]
${To}                           css:input[placeholder='To']
${Subject}                      css:input[aria-label='Subject']
${Message}                      css:textarea[aria-label='Message']
${SaveAsDraft}                  xpath://div[normalize-space(text()) = 'save as draft']//parent::button
${btnsend}                      xpath://i[contains(text(),'send')]//parent::div//parent::button
${ibx_close}                    xpath://i[contains(text(),'cancel')]//parent::div//parent::button
${delete}                       xpath://i[contains(text(),'delete')]//parent::div//parent::button
${MarkAsRead}                   xpath:(//i[contains(text(),'mail')]//parent::div//parent::button)[2]
${Start}                        xpath:(//i[contains(text(),'star')]//parent::div//parent::button)[1]