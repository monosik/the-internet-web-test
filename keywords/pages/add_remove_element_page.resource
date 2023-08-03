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

Click Add Element Multiple Times
    [Arguments]       ${times}
    FOR               ${index}    IN RANGE    ${times}
        Click Element    ${ADD.ELEMENT.BUTTON}
    END

Click Delete Element Multiple Times
    # [Arguments]       ${items}
    ${count}=    Get Element Count    ${DELETE.ELEMENT.BUTTON}
    ${v.count}=    Set Variable        1 
    FOR               ${index}    IN RANGE    ${count}
        # ${s.count}=  BuiltIn.Convert To String     ${v.count}
        # ${c.index}=  BuiltIn.Evaluate     ${s.count}
        # Log To Console      ${c.index}
        # ${string.index}=  BuiltIn.Convert To String     ${c.index}
        # ${locator.delete.item}=  String.Replace String  ${DELETE.ELEMENT.ITEM.BUTTON}      {index}    ${string.index}
        # Click Element    ${locator.delete.item}
        # ${c.index}=  BuiltIn.Convert To Integer         ${string.index}
        # Log To Console      ${c.index}
        # ${c.index}=  BuiltIn.Evaluate       ${v.count}-1
        ${string.index}=  BuiltIn.Convert To String     ${v.count}
        ${locator.delete.item}=  String.Replace String  ${DELETE.ELEMENT.ITEM.BUTTON}      {index}    ${string.index}
        Click Element    ${locator.delete.item}
    END