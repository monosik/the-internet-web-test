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
    SeleniumLibrary.Wait Until Element Is Visible    ${SORTABLE.DATA.TABLES.TEXT}    10s
    SeleniumLibrary.Click Element                    ${SORTABLE.DATA.TABLES.TEXT}