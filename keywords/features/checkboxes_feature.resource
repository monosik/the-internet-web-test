*** Keywords ***
Set default checkboxes page
    checkboxes_page.Click First Checkboxes
    SeleniumLibrary.Checkbox Should Not Be Selected    ${FIRST.CHECKBOXES.BUTTON}
    checkboxes_page.Click Second Checkboxes
    SeleniumLibrary.Checkbox Should Be Selected        ${SECOND.CHECKBOXES.BUTTON}