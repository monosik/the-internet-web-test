*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Checkboxs
    Open browser                                  https://the-internet.herokuapp.com/    chrome
    home_page.Click Checkboxs Menu
    checkboxes_page.Click First Checkboxes
    checkboxes_page.Verify First Checkboxes Status is Checked
    checkboxes_page.Click Second Checkboxes
    checkboxes_page.Verify Second Checkboxes Status is Unchecked
    checkboxes_feature.Set default checkboxes page
    checkboxes_feature.Set Both checkboxes Are Checked Status
    checkboxes_feature.Set Both checkboxes Are Unchecked Status