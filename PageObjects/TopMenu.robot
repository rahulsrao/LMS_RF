*** Settings ***
Documentation   All the page objects Top Menu
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${School_logo}                       css:a[href='//app.lovemyskool.com/app/dashboard']
${lovemySkhool_Name}                 xpath://div[normalize-space()='LoveMySkool']
${School_Name}                       xpath://span[normalize-space()='Learn Your Way']
${School_VisitWebSite}               xpath://div[contains(text(),'Visit WebSite')]
${TopMenu_MyCourses}                 xpath://div[contains(text(),'My Courses')]/parent::button
${TopMenu_Attendance}                css:button[title='Attendance']
${TopMenu_Notifications}             css:a[title='Notifications']
${TopMenu_Mail}                      xpath://i[contains(text(),'mail')]//ancestor::button
${btnUserProfile}                    css:div[class='v-menu__activator'] div[class='v-list__tile__avatar']
${btnSubscription}                   xpath://div[contains(text(),'Subscription')]
${btnSupport}                        xpath://div[contains(text(),'Support')]
${btnLogout}                         xpath://a[@href='/logout']
${btnSignout}                        xpath://button[contains(text(),'Sign Out')]
${btnCancel}                         css:a[href='/app/']
${mylearningPlan}                    xpath:(//img[@title='My Learning Plan'])[2]
${CoinsTransactions}                 xpath:(//span[@title='Coins'])[4]//ancestor::button
${Achievements}                      xpath:(//span[@title='Achievements'])[4]//ancestor::button
