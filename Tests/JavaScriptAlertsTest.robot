*** Settings ***
Resource  ../Resources/Pages/JavaScriptAlertsPage.robot

*** Test Cases ***
Verify the JavaScript Alerts Functions
    [documentation]  JavaScript Alerts Functions
    [tags]  functional

    Start Test Case
    open JavaScript Alerts Page
    Verify Clicking for Js Alert
    Verify Accepting the Alert
    Verify Canceling the Alert
    Verify the Prompt Alert Function
    Finish TestCase