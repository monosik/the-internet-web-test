*** Keywords ***
Verify Have Both New Window and Old Window
    ${handles}=      Get Window Handles
    ${new_window}=   Set Variable                ${handles}[1]
    Switch Window                                    ${new_window}
    SeleniumLibrary.Wait Until Element Is Visible    ${NEW.WINDOW.TITLE}         10s
    # Sleep   5s
    Switch Window                                    ${handles}[0]
    SeleniumLibrary.Wait Until Element Is Visible    ${OPEN.NEW.WINDOW.TITLE}    10s
    # Sleep   5s