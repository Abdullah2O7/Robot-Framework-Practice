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

Verify Checkboxes Function
    Click Link  ${CheckboxesLink}
    Checkbox Should Not Be Selected  ${checkbox1}
    Checkbox Should Be Selected  ${checkbox2}
    Select Checkbox  ${checkbox1}
    Checkbox Should Be Selected  ${checkbox1}

Finish TestCase
    Close Browser

*** Test Cases ***
Verify the Checkboxes functionality
    [documentation]  Basic Checkbox function
    [tags]  functionality

    Start TestCase
    Verify Checkboxes Function
    Finish TestCase