*** Keywords ***
Click File Upload Menu
    SeleniumLibrary.Wait Until Element Is Visible    ${FILE.UPLOAD.TEXT}    10s
    SeleniumLibrary.Click Element                    ${FILE.UPLOAD.TEXT}

Click Choose File
    SeleniumLibrary.Wait Until Element Is Visible    ${FILE.UPLOADER.TITLE}    10s
    SeleniumLibrary.Choose File                      ${CHOOSE.FILE.BUTTON}     G:\\Automated\\the-internet-web-test\\resources\\owl.png

Click Submit File
    SeleniumLibrary.Click Element    ${FILE.SUBMIT}

Verify File Upload
    SeleniumLibrary.Wait Until Element Is Visible    ${FILE.NAME.TEXT}    10s
    # Sleep   5s