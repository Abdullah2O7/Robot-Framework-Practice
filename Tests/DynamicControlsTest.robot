*** Settings ***
Resource  ../Resources/Pages/DynamicControlsPage.robot
Variables  ../Resources/WebElements/DynamicControls.py
Variables  ../Resources/WebElements/HomePage.py

*** Test Cases ***
Verify the DynamicControls Function
    [documentation]  Dynamic Controls function
    [tags]  functional

    Start Test Case
    Open Dynamic Controls Page
    Verify Removeing function
    Verify Adding Function
    #Verify Disable function
    Verify Enable Function
    Finish TestCase