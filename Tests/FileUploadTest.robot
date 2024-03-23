*** Settings ***
Resource  ../Resources/Pages/FileUploadPage.robot
Variables  ../Resources/WebElements/FileUpload.py
Variables  ../Resources/WebElements/HomePage.py

*** Test Cases ***
Verify Uploading file functionality
    [documentation]  Uploading file function
    [tags]  functional

    Start Test Case
    open FileUpload Page
    Verify the Uploading Function
    Verify that the file is uploaded
    Finish TestCase