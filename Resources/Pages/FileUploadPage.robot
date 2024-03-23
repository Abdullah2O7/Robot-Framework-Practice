*** Settings ***
Library  SeleniumLibrary
Variables  ../Resources/WebElements/FileUpload.py
Variables  ../Resources/WebElements/HomePage.py

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${file_path}  C:/Users/elattar/Desktop/test/Robot_fw_Practice/Resources/Files/test.txt
${file_name}  test.txt

*** Keywords ***
Start Test Case
    Open Browser  ${url}  chrome
    Maximize Browser Window

open FileUpload Page
    Click Link  ${FileUploadLink}
    Page Should Contain  File Uploader
Verify the Uploading Function
    Choose File  ${chooseFile}  ${file_path}
    Click Button  ${uploadBtn}
Verify that the file is uploaded
    Wait Until Page Contains  File Uploaded!
    Page Should Contain  ${file_name}

Finish TestCase
    Close Browser