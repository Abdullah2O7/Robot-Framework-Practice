*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements/JavaScriptAlerts.py
Variables  ../WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${acceptJsAlert_msg}  You successfully clicked an alert
${accrptConfirmationAlert_msg}  You clicked: Ok
${CancelConfirmationAlert_msg}  You clicked: Cancel
${promptText}  test Prompt


*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

open JavaScript Alerts Page
    Click Link  ${JavaScriptAlertsLink}
    Page Should Contain  JavaScript Alerts
Verify Clicking for Js Alert
    Click Button  ${JsAlertBtn}
    Alert Should Be Present
    Page Should Contain  ${acceptJsAlert_msg}
Verify Accepting the Alert
    Click Button  ${JsConfirmBtn}
    Handle Alert  action=ACCEPT
    Page Should Contain  ${accrptConfirmationAlert_msg}
Verify Canceling the Alert
    Click Button  ${JsConfirmBtn}
    Handle Alert  action=DISMISS
    Page Should Contain  ${CancelConfirmationAlert_msg}
Verify the Prompt Alert Function
    Click Button  ${JsPrompt}
    Input Text Into Alert  text=${promptText}
    Page Should Contain  ${promptText}

Finish TestCase
    Close Browser