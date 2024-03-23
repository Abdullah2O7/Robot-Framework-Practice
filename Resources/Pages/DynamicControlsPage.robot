*** Settings ***
Library  SeleniumLibrary
Variables  ../Resources/WebElements/DynamicControls.py
Variables  ../Resources/WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window
Open Dynamic Controls Page
    Click Link  ${DynamicControlsLink}
    Page Should Contain  Dynamic Controls
Verify Removeing function
    Select Checkbox  ${checkboxBtn}
    Click Button  ${removeBtn}
    Wait Until Page Contains  It's gone!
Verify Adding Function
    Wait Until Element Is Visible  ${addBtn}
    Click Button  ${addBtn}
    Wait Until Page Contains  It's back!  timeout=15s
    Page Should Contain  A checkbox
#Verify Disable function
#    Page Should Not Contain Textfield  ${textField}
Verify Enable Function
    Click Button  ${enableBtn}
    Wait Until Page Contains  It's enabled!  timeout=15s
    Wait Until Element Is Enabled  ${textField}  timeout=15s
    Input Text  ${textField}  abdullah
    Textfield Value Should Be  ${textField}  abdullah

Finish TestCase
    Close Browser