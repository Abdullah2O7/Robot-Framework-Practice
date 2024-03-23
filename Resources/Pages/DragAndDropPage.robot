*** Settings ***
Library  SeleniumLibrary
Variables  ../Resources/WebElements.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

Verify navigating to the Drag and Drop Page
    Click Link  ${DragAndDropLink}
Verify that we in the Drag and Drop Page
     Page Should Contain  Drag and Drop
Verify Drag and Drop Functionality
    Drag And Drop  ${draggedElement}  ${targetElement}

Finish TestCase
    Close Browser