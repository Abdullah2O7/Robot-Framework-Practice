*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/DisappearingElements.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${DisappearingElements_URL}  https://the-internet.herokuapp.com/disappearing_elements
${about_URL}  https://the-internet.herokuapp.com/about/


*** Keywords ***
Start Test Case
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Verify opening the Disappearing Elements Page
    Click Link  ${DisappearingElementsLink}
Verify Navigating to the home page
    Click Element  ${howePageBtn}
    Location Should Be  ${url}
    Page Should Contain  Welcome to the-internet
Verify Navigating to the Disappearing Elements Page again
    Go To  ${DisappearingElements_URL}
    Location Should Be  ${DisappearingElements_URL}
    Page Should Contain  Disappearing Elements
Verify Navigating to about Page
    Click Element  ${aboutBtn}
    Location Should Be  ${about_URL}
    Page Should Contain  Not Found

Finish TestCase
    Close Browser