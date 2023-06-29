*** Keywords ***
Click Multiple Window Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${MULTIPLE.WINDOWS.TEXT}    10s
    SeleniumLibrary.Click Element                    ${MULTIPLE.WINDOWS.TEXT}

Click Open New Window
    SeleniumLibrary.Wait Until Element Is Visible    ${OPEN.NEW.WINDOW.TITLE}     10s
    SeleniumLibrary.Click Element                    ${OPEN.NEW.WINDOW.BUTTON}