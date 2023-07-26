*** Keywords ***
Click Add Element
    SeleniumLibrary.Wait Until Element Is Visible    ${ADD.REMOVE.ELEMENT.TITLE}
    SeleniumLibrary.Click Element                    ${ADD.ELEMENT.BUTTON}

Verify Element Added
    SeleniumLibrary.Wait Until Element Is Visible    ${DELETE.ELEMENT.BUTTON}
Click Delete Element
    SeleniumLibrary.Click Element    ${DELETE.ELEMENT.BUTTON}

Verify Element Deleted
    SeleniumLibrary.Wait Until Element Is Not Visible    ${DELETE.ELEMENT.BUTTON}