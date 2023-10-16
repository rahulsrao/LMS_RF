*** Settings ***
Documentation   All the page objects and keywords of Calender Page
Library         SeleniumLibrary
Resource        Generic.robot
Library          ../Generic/BaseClass.py

*** Variables ***
${hCalendar}                    xpath://div[@class='v-toolbar__title'][contains(text(),'Calendar')]
${btnmonth}                     css:button[title='month']
${btnweek}                      css:button[title='week']
${btnday}                       css:button[title='day']
${btnToday}                     xpath://div[contains(text(),'today')]//parent::button
${btnNext}                      css:button[title='next']
${btnprevious}                  css:button[title='previous']
${btnFilters}                   css:button[title='Filters']
${hFilters}                     xpath://div[contains(text(),'Filters')]
${btnFilterBack}                css:button[title='Calendar Filtering']

