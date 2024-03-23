*** Settings ***
Resource  ../Resources/Pages/FormAuthenticationPage.robot

*** Test Cases ***
Verify Form Authentication Functionality
    [documentation]  Form Authentication Function
    [tags]  functional

    Start Test Case
    Open Form Authentication Page
    Login with valid username and invalid password
    Login with inValid username and valid password
    Login with valid credentials
   # verify logout function
    Finish TestCase