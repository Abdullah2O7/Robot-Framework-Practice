*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/Hovers.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${user1_page_url}  https://the-internet.herokuapp.com/users/1
${user2_page_url}  https://the-internet.herokuapp.com/users/2
${user3_page_url}  https://the-internet.herokuapp.com/users/3

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window
Open Hovers Page
    Click Link  ${HoversLink}
    Page Should Contain  Hovers
Verify Hovering on image 1
    Mouse Over  ${user1_img}
    Page Should Contain  user1
    Click Element  ${user1_viewProfile}
    Location Should Be  ${user1_page_url}
    Go Back
    Wait Until Page Contains  Hovers
Verify Hovering on image 2
    Mouse Over  ${user2_img}
    Page Should Contain  user2
    Click Element  ${user2_viewProfile}
    Location Should Be  ${user2_page_url}
    Go Back
    Wait Until Page Contains  Hovers
Verify Hovering on image 3
    Mouse Over  ${user3_img}
    Page Should Contain  user3
    Click Element  ${user3_viewProfile}
    Location Should Be  ${user3_page_url}
    Go Back
    Wait Until Page Contains  Hovers

Finish TestCase
    Close Browser