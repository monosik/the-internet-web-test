*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Multiple Window
    Open browser                                  https://the-internet.herokuapp.com/    chrome
    home_page.Click Add Remove Elements Menu
    add_remove_element_page.Click Add Element
    add_remove_element_page.Verify Element Added
    add_remove_element_page.Click Delete Element
    add_remove_element_page.Verify Element Deleted