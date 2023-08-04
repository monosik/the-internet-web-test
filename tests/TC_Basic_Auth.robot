*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Basic Auth
    Open browser                     https://the-internet.herokuapp.com/      chrome
    home_page.Click Basic Auth Menu
    basic_auth_page.Login Basic Auth