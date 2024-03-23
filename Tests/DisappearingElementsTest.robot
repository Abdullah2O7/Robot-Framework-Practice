*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Pages/DisappearingElements.robot
Variables  ../Resources/WebElements/DisappearingElements.py
Variables  ../Resources/WebElements/HomePage.py

*** Test Cases ***
Verify Disappearing Elements Test Case
    [documentation]  Disappearing Elements Test Case
    [tags]  functional

    Start Test Case
    Verify opening the Disappearing Elements Page
    Verify Navigating to the home page
    Verify Navigating to the Disappearing Elements Page again
    Verify Navigating to about Page
    Finish TestCase