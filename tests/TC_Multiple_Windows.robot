*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Multiple Window
    Open browser                                  https://the-internet.herokuapp.com/    chrome
    home_page.Click Multiple window Menu
    multiple_windows_page.Click Open New Window
    multiple_windows_feature.Verify Have Both New Window and Old Window