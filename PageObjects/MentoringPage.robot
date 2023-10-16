*** Settings ***
Documentation   All the page objects and keywords of Microsoft Team Conferences Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hMentoring}                                   xpath://div[@class='v-toolbar__title ml-2'][contains(text(),'Mentoring')]
${hCreateNewSlots}                              xpath://div[@class='v-toolbar__title'][contains(text(),'Create New Slots')]
${hDateRange}                                   xpath://span[contains(text(),'Date Range')]
${mnt_StartDate}                                css:input[aria-label='Start Date']
${mnt_EndDate}                                  css:input[aria-label='End Date']
${hAppointmentHours}                            xpath://div[@class='v-toolbar__title'][contains(text(),'Appointment Hours')]
${mnt_TimeSlots}                                css:input[aria-label='Time Slots (mins)']
${opt_10}                                       xpath://div[@class='v-list__tile__title'][contains(text(),'10')]
${opt_15}                                       xpath://div[@class='v-list__tile__title'][text()='15']
${opt_30}                                       xpath://div[@class='v-list__tile__title'][text()='30']
${btn_copyMonSun}                               css:button[title='Copy slot to other days']
${Monday}                                       xpath://span[contains(text(),'Monday')]
${Tuesday}                                      xpath://span[contains(text(),'Tuesday')]
${Wednesday}                                    xpath://span[contains(text(),'Wednesday')]
${Thursday}                                     xpath://span[contains(text(),'Thursday')]
${Friday}                                       xpath://span[contains(text(),'Friday')]
${Saturday}                                     xpath://span[contains(text(),'Saturday')]
${Sunday}                                       xpath://span[contains(text(),'Sunday')]
${btn_ClearSlots}                               xpath://div[contains(text(),'Clear Slots')]//parent::button
${btn_SaveSlots}                                xpath://div[contains(text(),'Save Slots')]//parent::button
${h_CalendarforSlotsPreview}                    xpath://div[contains(text(),'Calendar for Slots Preview')]
${mnt_prev}                                     css:button[aria-label='prev']
${mnt_next}                                     css:button[aria-label='next']
${mnt_Today}                                    xpath://div[contains(text(),'today')]//parent::button


${hMentoringBookedSlots}                        xpath://div[@class='v-toolbar__title'][contains(text(),'Mentoring - Booked Slots')]
${hBatches}                                     xpath://div[@class='v-toolbar__title'][contains(text(),'Batches')]
${SelectBatch}                                  css:input[aria-label='Select Batch']
${Meetingtype}                                  css:input[aria-label='Meeting Type.']
${BatchARTBATCHONE}                             xpath://div[contains(text(),'ART BATCH ONE')]
${opt_All}                                      xpath:(//div[contains(text(),'All')]//parent::div//parent::a)[1]
${opt_LiveUpcoming}                             xpath:(//div[contains(text(),'Live & Upcoming')]//parent::div//parent::a)[1]
${opt_Upcoming}                                 xpath:(//div[contains(text(),'Upcoming')]//parent::div//parent::a)[2]