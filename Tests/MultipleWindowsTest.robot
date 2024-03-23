*** Settings ***
Resource  ../Resources/Pages/MultipleWindowsPage.robot

*** Test Cases ***
Verify the Multiple Windows Function
    [documentation]  Multiple Windows Function
    [tags]  functional

    Start Test Case
    Open Multiple Windows Page
    Open the new Window
    Finish TestCase