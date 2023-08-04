*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Basic Auth
    Open browser                             https://the-internet.herokuapp.com/    chrome
    create session  myssion     https://the-internet.herokuapp.com/
    SeleniumLibrary.Click Element                    //a[@href='/basic_auth']
    Set Basic Authentication    admin   admin
    ${response}=    GET On Session    https://the-internet.herokuapp.com/basic_auth
    Should Be Equal As Strings    ${response.status_code}    200