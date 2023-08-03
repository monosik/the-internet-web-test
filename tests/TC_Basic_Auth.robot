*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Basic Auth
    Open browser                             https://the-internet.herokuapp.com/    chrome
    