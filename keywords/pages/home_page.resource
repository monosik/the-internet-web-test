*** Keywords ***
Click File Upload Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${MULTIPLE.WINDOWS.TEXT}    10s
    SeleniumLibrary.Click Element                    ${FILE.UPLOAD.TEXT} 

Click Multiple Window Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${MULTIPLE.WINDOWS.TEXT}    10s
    SeleniumLibrary.Click Element                    ${MULTIPLE.WINDOWS.TEXT}

Click Sort Data Tables Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${SORTABLE.DATA.TABLES.TEXT}    10s
    SeleniumLibrary.Click Element                    ${SORTABLE.DATA.TABLES.TEXT}

Click Add Remove Elements Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${ADD.REMOVE.ELEMENTS.TEXT}    10s
    SeleniumLibrary.Click Element                    ${ADD.REMOVE.ELEMENTS.TEXT}

Click Basic Auth Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${BASIC_AUTH.TEXT}    10s
    SeleniumLibrary.Click Element                    ${BASIC_AUTH.TEXT}

Click Checkboxs Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${CHECKBOXS.TEXT}    10s
    SeleniumLibrary.Click Element                    ${CHECKBOXS.TEXT}