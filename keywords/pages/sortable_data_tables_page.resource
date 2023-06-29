*** Keywords ***
Click Sort Last Name For Example1
    SeleniumLibrary.Wait Until Element Is Visible    ${EXAMPLE.1.LAST.NAME.HEADER}    10s
    SeleniumLibrary.Click Element                    ${EXAMPLE.1.LAST.NAME.HEADER}

Click Sort Last Name For Example2
    SeleniumLibrary.Wait Until Element Is Visible    ${EXAMPLE.2.LAST.NAME.HEADER}    10s
    SeleniumLibrary.Click Element                    ${EXAMPLE.2.LAST.NAME.HEADER}