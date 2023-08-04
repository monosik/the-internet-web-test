*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Checkboxs
    Open browser                                  https://the-internet.herokuapp.com/    chrome
    home_page.Click Checkboxs Menu
    checkboxes_page.Click First Checkboxes
    checkboxes_page.Verify First Checkboxes Status After Click
    checkboxes_page.Click Second Checkboxes
    checkboxes_page.Verify Second Checkboxes Status After Click
    checkboxes_feature.Set default checkboxes page