*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/Dropdown.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window
verify opening Dropdown page
    Click Link  ${DropdownLink}
    Page Should Contain  Dropdown List
Verify Dropdown functionality for option1
    #Mouse Down  ${dropdownOption}
    Select From List By Index  ${dropdownList}  1
    Page Should Contain  Option 1
Verify Dropdown functionality for option2
    Select From List By Index  ${dropdownList}  2
    Page Should Contain  Option 2

Finish TestCase
    Close Browser