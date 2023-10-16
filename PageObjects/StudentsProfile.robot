*** Settings ***
Documentation   All the page objects and keywords of My Courses Page
Library         SeleniumLibrary
Resource        Generic.robot
Library         ../Generic/BaseClass.py
Library         ../Generic/DashBoard.py
Resource        ../Resources/TestData/TestData.robot

*** Variables ***
${StudentsProfile_StudentName}                      xpath://div[normalize-space()='${student3}']
${StudentsProfile_image}                            xpath://img[@class='profile-avatar']
${StudentsProfile_Achievements}                     xpath:(//span[@title='Achievements'])[1]/ancestor::button
${StudentsProfile_Achievements_1}                   xpath:(//span[@title='Achievements'])[5]/ancestor::button
${StudentsProfile_CoinTransaction}                  xpath://span[@title='Achievements']//following::span[@class='v-badge v-badge--overlap']
${StudentsProfile_CoinTransaction_1}                xpath://span[@title='Achievements']//following::span[@class='v-badge v-badge--overlap'][3]
${StudentsProfile_progressbar}                      xpath:(//div[@role='progressbar'])[2]
${StudentsProfile_ModuleLeader}                     xpath://div[contains(@style,'module_leader')]
${StudentsProfile_StarPerformer}                    xpath://div[contains(@style,'star_performer')]
${StudentsProfile_ConceptLeader}                    xpath://div[contains(@style,'concept_leader')]
${StudentsProfile_LastloggedinDate}                 xpath://div[contains(text(),'Last logged in date:')]
${StudentsProfile_Username}                         xpath://div[contains(text(),'Username:')]
${StudentsProfile_Birthday}                         xpath://div[contains(text(),'Birthday:')]
${StudentsProfile_Phone}                            xpath://div[contains(text(),'Phone:')]
${StudentsProfile_TotalCreditsEarned}               xpath://div[contains(text(),'Total Credits Earned:')]
${StudentsProfile_TotalCertificatesAwarded}         xpath://div[contains(text(),'Total Certificates Awarded:')]
${StudentsProfile_CreditTable}                      xpath://div[contains(text(),'Credit Table')]/parent::button
${StudentsProfile_Certificates}                     xpath://div[contains(text(),'Certificates')]/parent::button
${StudentsProfile_GoToLearningPlan}                 xpath://div[contains(text(),'Go To Learning Plan')]/parent::button
${StudentsProfile_OverallFeedback}                  xpath://div[contains(text(),'Overall Feedback')]
${StudentsProfile_Selectterm}                       xpath://option[normalize-space()='Select term']/parent::select
${StudentsProfile_Selectcourse}                     xpath://option[normalize-space()='Select course']/parent::select

${StudentsProfile_CourseMap}                        xpath:(//div[contains(text(),'Course Map')])[2]
${StudentsProfile_Credits}                          xpath:(//div[contains(text(),'Credits')])[2]
${StudentsProfile_Collections}                      xpath://div[contains(text(),'Collections')]
${StudentsProfile_Collections_InProgress}           xpath://div[contains(text(),'Collections')]//following::div[contains(text(),'In Progress')]
${StudentsProfile_Collections_Completed}            xpath://div[contains(text(),'Collections')]//following::div[contains(text(),'Completed')]
${StudentsProfile_Pages}                            xpath://div[contains(text(),'Pages')]
${StudentsProfile_Pages_Hours}                      xpath://div[contains(text(),'Pages')]//following::div[contains(text(),'Hours')]
${StudentsProfile_Pages_Read}                       xpath://div[contains(text(),'Pages')]//following::div[contains(text(),'Read')]
${StudentsProfile_Videos}                           xpath://div[contains(text(),'Videos')]
${StudentsProfile_Videos_Watched}                   xpath://div[contains(text(),'Videos')]//following::div[contains(text(),'Watched')]
${StudentsProfile_Assignments}                      xpath://div[contains(text(),'Assignments')]
${StudentsProfile_Assignments_Percentage}           xpath://div[contains(text(),'Assignments')]//following::div[contains(text(),'Percentage')]
${StudentsProfile_Assignments_Submitted}            xpath://div[contains(text(),'Assignments')]//following::div[contains(text(),'Submitted ')]
${StudentsProfile_Tests}                            xpath://div[contains(text(),'Tests')]
${StudentsProfile_Tests_Percentage}                 xpath://div[contains(text(),'Tests')]//following::div[contains(text(),'Percentage')]
${StudentsProfile_Tests_Submitted}                  xpath://div[contains(text(),'Tests')]//following::div[contains(text(),'Submitted ')]
${StudentsProfile_Games}                            xpath:(//div[contains(text(),'Games')])[2]
${StudentsProfile_Games_Percentage}                 xpath:(//div[contains(text(),'Games')])[2]//following::div[contains(text(),'Percentage')]
${StudentsProfile_Games_Won}                        xpath:(//div[contains(text(),'Games')])[2]//following::div[contains(text(),'Won ')]
${StudentsProfile_DiscussionForums}                 xpath:(//div[contains(text(),'Discussion Forums')])[2]
${StudentsProfile_DiscussionForums_Participated}    xpath:(//div[contains(text(),'Discussion Forums')])[2]//following::div[contains(text(),'Participated')]
${StudentsProfile_DiscussionForums_Comments}        xpath:(//div[contains(text(),'Discussion Forums')])[2]//following::div[contains(text(),'Comments')]
${StudentsProfile_StudentProjects}                  xpath://div[contains(text(),'Student Projects')]
${StudentsProfile_StudentProjects_Percentage}       xpath://div[contains(text(),'Student Projects')]//following::div[contains(text(),'Percentage')]
${StudentsProfile_StudentProjects_Created}          xpath://div[contains(text(),'Student Projects')]//following::div[contains(text(),'Created')]
${StudentsProfile_GradeBook}                        xpath://div[contains(text(),'GradeBook')]
${StudentsProfile_GradeBook_OverallGrade}           xpath://div[contains(text(),'GradeBook')]//following::div[contains(text(),'Overall Grade -')]
${StudentsProfile_Attendance}                       xpath://div[contains(text(),'Attendance')]
${StudentsProfile_Attendance_Percentage}            xpath://div[contains(text(),'Attendance')]//following::div[contains(text(),'Percentage')]

${StudentsProfile_EditProfile}                      xpath://i[normalize-space()='edit']//ancestor::button
${EditProfile_h}                                    xpath:(//div[contains(text(),'Edit Profile')])[1]
${EditProfile_close}                                xpath:(//i[@aria-hidden='true'][normalize-space()='close'])[1]/ancestor::button
${EditProfile_Tab}                                  xpath://a[normalize-space()='Edit Profile']
${EditProfile_FirstName}                            css:input[aria-label='First Name*']
${EditProfile_LastName}                             css:input[aria-label='Last Name*']
${EditProfile_Tagline}                              css:input[aria-label='Tagline']
${EditProfile_BirthDate}                            css:input[aria-label='Birth Date']
${EditProfile_Phone}                                css:input[aria-label='Phone']
${EditProfile_AboutMe}                              css:textarea[aria-label='About Me']
${EditProfile_Submit}                               xpath://div[normalize-space()='Submit']//parent::button
${EditProfile_ChangeAvatar}                         xpath://a[normalize-space()='Change Avatar']
${EditProfile_ChangeAvatar_SelectanImage}           css:input[name='image']
${EditProfile_ChangePassword}                       xpath://a[normalize-space()='Change Password']
${EditProfile_ChangePassword_CurrentPassword}       css:input[aria-label='Current Password*']
${EditProfile_ChangePassword_NewPassword}           css:input[aria-label='New Password*']
${EditProfile_ChangePassword_RetypeNewPassword}     css:input[aria-label='Re-type New Password*']
${EditProfile_ChangePassword_ChangePassword}        xpath://div[contains(text(),'Change Password')]/parent::button


