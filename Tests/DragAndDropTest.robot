*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Pages/DragAndDropPage.robot
Variables  ../Resources/WebElements.py

*** Test Cases ***
Verify Drag and Drop function
    [documentation]  Drag and Drop function
    [tags]  functional

    Start Test Case
    Verify navigating to the Drag and Drop Page
    Verify that we in the Drag and Drop Page
    Verify Drag and Drop Functionality
    Finish TestCase