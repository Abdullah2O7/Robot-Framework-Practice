*** Settings ***
Library  SeleniumLibrary
Variables  ../Resources/WebElements.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Verify Digest Authentication Function
# I searched to handle this case and the result is this way but the test case fails!!!
# The browser should navigate me to this url but it reload the same page!!!
    Go To  https://admin:admin@the-internet.herokuapp.com/
    Alert Should Not Be Present
    Page Should Contain  Congratulations!

Finish TestCase
    Close Browser

*** Test Cases ***
Verify the Digest Authentication functionality
    [documentation]  Digest Authentication Functionality
    [tags]  functionality

    Start TestCase
    Verify Digest Authentication Function
    Finish TestCase