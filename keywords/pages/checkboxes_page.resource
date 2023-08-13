*** Keywords ***
Click First Checkboxes
    SeleniumLibrary.Click Element    ${FIRST.CHECKBOXES.BUTTON}

Verify First Checkboxes Status is Checked
    SeleniumLibrary.Checkbox Should Be Selected         ${FIRST.CHECKBOXES.BUTTON}

Verify First Checkboxes Status is Unchecked
    SeleniumLibrary.Checkbox Should Not Be Selected     ${FIRST.CHECKBOXES.BUTTON}

Click Second Checkboxes
    SeleniumLibrary.Click Element    ${SECOND.CHECKBOXES.BUTTON}

Verify Second Checkboxes Status is Checked
    SeleniumLibrary.Checkbox Should Be Selected         ${SECOND.CHECKBOXES.BUTTON}
    
Verify Second Checkboxes Status is Unchecked
    SeleniumLibrary.Checkbox Should Not Be Selected     ${SECOND.CHECKBOXES.BUTTON}

Set Default First Checkbox
    ${first.status}     SeleniumLibrary.Get Element Attribute 	 ${FIRST.CHECKBOXES.BUTTON} 	 checked
    IF  '${first.status}' == "true"
        SeleniumLibrary.Click Element    ${FIRST.CHECKBOXES.BUTTON}
    END
    checkboxes_page.Verify First Checkboxes Status is Unchecked

Set Default Second Checkbox
    ${second.status}     SeleniumLibrary.Get Element Attribute 	 ${SECOND.CHECKBOXES.BUTTON} 	 checked
    IF  '${second.status}' != "true"
        SeleniumLibrary.Click Element    ${SECOND.CHECKBOXES.BUTTON}
    END
    checkboxes_page.Verify Second Checkboxes Status is Checked