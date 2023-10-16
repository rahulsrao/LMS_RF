*** Settings ***
Documentation   All the page objects and keywords of System Settings Program Page
Library         SeleniumLibrary
Resource        Generic.robot

*** Variables ***
${hPrograms}                                xpath://div[@class='v-toolbar__title' and contains(text(),'Programs')]
${pr_Add}                                   xpath://div[text()='ADD']//parent::button
${pr_CreateProgram_h}                       xpath://div[text()='Create Program']
${pr_CreateProgram_Continue}                xpath:(//div[text()='Continue']//parent::button)[1]
${pr_CreateProgram_Close}                   xpath:(//div[text()='Close']//parent::button)[1]
${pr_CreateProgram_Name}                    css:input[aria-label="Name"]
${pr_CreateProgram_Courses}                 css:input[aria-label="Courses"]
${pr_CreateProgram_Op_First}                xpath:(//input[@role="checkbox"])[1]
${pr_CreateProgram_Op_Two}                  xpath:(//input[@role="checkbox"])[2]
${pr_AttachCoursesCredits_h}                xpath://div[text()='Attach Courses Credits']
${pr_AttachCoursesCredits_Credit}           xpath:(//input[@aria-label="Credit"])[1]
${pr_AttachCoursesCredits_continue}         xpath:(//div[text()='Continue']//parent::button)[2]
${pr_AttachCoursesCredits_Close}            xpath:(//div[text()='Close']//parent::button)[2]
${pr_Finalize_h}                            xpath://div[contains(text(),'Finalize')]
${pr_Finalize_CreditToPass}                 css:input[aria-label="Enter credits required to pass this program"]
${pr_Finalize_Save}                         xpath:(//div[text()='Save']//parent::button)[1]
${pr_Finalize_Close}                        xpath:(//div[text()='Close']//parent::button)[3]
${pr_EditProgram_h}                         xpath://div[text()='Edit Program']
