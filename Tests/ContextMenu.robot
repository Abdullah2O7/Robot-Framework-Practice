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

Verify Context Menu Function
    Click Link  ${ContextMenuLink}
    Open Context Menu  ${box}
    Alert Should Be Present

Finish TestCase
    Close Browser

*** Test Cases ***
Verify the Context Menu functionality
    [documentation]  Context Menu Functionality
    [tags]  functionality

    Start TestCase
    Verify Context Menu Function
    Finish TestCase