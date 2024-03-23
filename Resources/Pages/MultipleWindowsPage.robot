*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/MultipleWindows.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

Open Multiple Windows Page
    Click Link  ${MultipleWindowsLink}
    Page Should Contain  Opening a new window
Open the new Window
    Click Link  ${newWindowLink}
    Switch Window  title=New Window
    Wait Until Page Contains  New Window

Finish TestCase
    Close Browser