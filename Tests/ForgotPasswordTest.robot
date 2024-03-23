*** Settings ***
Resource  ../Resources/Pages/ForgotPasswordPage.robot
#Variables  ../Resources/WebElements/ForgotPassword.py
#Variables  ../Resources/WebElements/HomePage.py

*** Test Cases ***
Verify Forgot Password functionality
    [documentation]  Forgot Password function
    [tags]  functional

    Start Test Case
    open Forgot Password Page
    Verify Forgot Password Function
    Finish TestCase