*** Settings ***
Documentation   Page Objects of Side Menu
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${btn_Dashboard}                 xpath://a[@href='/app/dashboard']//div[contains(text(),'DashBoard')]
${btn_Wall}                      xpath://a[@href='/app/wall']//div[contains(text(),'Wall')]
${btn_content}                   xpath://a[@href='/app/content']//div[contains(text(),'Content')]
${btn_btnDiscussionForums}       xpath://a[@href='/app/discussion']//div[contains(text(),'Discussion Forums')]
${btnGames}                      xpath://a[@href='/app/games']//div[contains(text(),'Games')]
${btnGradebook}                  xpath://a[@href='/app/u-gradebook']//div[contains(text(),'Gradebook')]
${btnStudentPreview}             xpath://div[contains(text(),'Student Preview')]
${btnCourseMap}                  xpath://a[contains(@href,'courses')]
${btnSearch}                     xpath://div[contains(text(),'Search')]
${btnCalendar}                   xpath://div[contains(text(),'Calendar')]
${btnInbox}                      xpath://a[@href='/app/mail']//div[contains(text(),'Inbox')]
${btnZoomConferences}            xpath://div[contains(text(),'Zoom Conferences')]
${btnMicrosoftTeamConferences}   xpath://div[contains(text(),'Microsoft Team Conferences')]
${btnMentoring}                  xpath://a[@href='/app/mentoring']//div[contains(text(),'Mentoring')] | //a[@href='/app/student-mentoring']
${btnOneNote}                    xpath://div[@class='v-list__tile__title'][contains(text(),'OneNote')]
${btnReports}                    xpath://a[@href='/app/uni/reports']//div[contains(text(),'Reports')]
${btnSystemSettings}             xpath://a[@href='/app/settings']//div[contains(text(),'System Settings')]

${btnstdMentoring}                xpath://a[@href='/app/student-mentoring']//div[contains(text(),'Mentoring')]