*** Settings ***
Resource  ../Resources/Pages/HoversPage.robot

*** Test Cases ***
Verify the Hovers Function
    [documentation]  Hovers function
    [tags]  functional

    Start Test Case
    Open Hovers Page
    Verify Hovering on image 1
    Verify Hovering on image 2
    Verify Hovering on image 3
    Finish TestCase