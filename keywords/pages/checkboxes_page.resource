*** Keywords ***
Click First Checkboxes
    SeleniumLibrary.Click Element    ${FIRST.CHECKBOXES.BUTTON}

Verify First Checkboxes Status After Click
    SeleniumLibrary.Checkbox Should Be Selected    ${FIRST.CHECKBOXES.BUTTON}

Click Second Checkboxes
    SeleniumLibrary.Click Element    ${SECOND.CHECKBOXES.BUTTON}

Verify Second Checkboxes Status After Click
    SeleniumLibrary.Checkbox Should Not Be Selected    ${SECOND.CHECKBOXES.BUTTON}