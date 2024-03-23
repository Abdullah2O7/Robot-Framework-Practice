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

Verify Add and Remove Function
    Click Link  ${Add_RemoveLink}
    Click Button  ${addBtn}
    Click Button  ${deleteBtn}

Finish TestCase
    Close Browser

*** Test Cases ***
Verify the add and Delete functionality
    [documentation]  Verify that the Add and Remove Function
    [tags]  functional

    Start TestCase
    Verify Add and Remove Function
    Finish TestCase