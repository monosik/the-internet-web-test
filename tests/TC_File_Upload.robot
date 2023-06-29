*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
File Upload
    Open browser              https://the-internet.herokuapp.com/    chrome
    home_page.Click File Upload Menu
    file_upload_page.Click Choose File
    file_upload_page.Click Submit File
    file_upload_page.Verify File Upload