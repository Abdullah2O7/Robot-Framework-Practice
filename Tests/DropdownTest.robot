*** Settings ***
Resource  ../Resources/Pages/DropdownPage.robot
Variables  ../Resources/WebElements/Dropdown.py
Variables  ../Resources/WebElements/HomePage.py


*** Test Cases ***
Verify the Dropdown function
    [documentation]  Dropdown function
    [tags]  functional

    Start Test Case
    verify opening Dropdown page
    Verify Dropdown functionality for option1
    Verify Dropdown functionality for option2
    Finish TestCase