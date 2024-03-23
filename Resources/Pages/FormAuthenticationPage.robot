*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/FormAuthentication.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${login_url}  https://the-internet.herokuapp.com/login
${browser}  chrome
${username}  tomsmith
${invalidUsername}  tom
${validPassword}  SuperSecretPassword!
${invalidPassword}  SuperSecretPasswo

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

Open Form Authentication Page
    Click Link  ${FormAuthenticationLink}
    Wait Until Page Contains  Login Page
Login with valid username and invalid password
    Input Text  ${usernameField}  ${username}
    Input Text  ${passwordField}  ${invalidPassword}
    Click Button  ${loginBtn}
    Wait Until Page Contains  Your password is invalid!  timeout=5s
Login with inValid username and valid password
    Input Text  ${usernameField}  ${invalidUsername}
    Input Text  ${passwordField}  ${validPassword}
    Click Button  ${loginBtn}
    Wait Until Page Contains  Your username is invalid!  timeout=5s

Login with valid credentials
    Input Text  ${usernameField}  ${username}
    Input Text  ${passwordField}  ${validPassword}
    Click Button  ${loginBtn}
    Wait Until Page Contains  You logged into a secure area!  timeout=5s
verify logout function
    Click Button  ${logoutBtn}
    Location Should Be  ${login_url}

Finish TestCase
    Close Browser