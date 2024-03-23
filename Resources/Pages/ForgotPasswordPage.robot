*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/ForgotPassword.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${email}  test@test.com

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

open Forgot Password Page
    Click Link  ${ForgotPasswordLink}
    Page Should Contain  Forgot Password
Verify Forgot Password Function
    Input Text  ${emailField}  ${email}
    Click Button  ${retrieveBtn}
    Wait Until Page Contains  Internal Server Error

Finish TestCase
    Close Browser