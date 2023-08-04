*** Keywords ***
Login Basic Auth
    ${auth}=                        Create List                              admin                                  admin
    RequestsLibrary.Create Session    myssion                                  https://the-internet.herokuapp.com/    auth=${auth}
    ${response}=                    GET On Session                           myssion                                url=https://the-internet.herokuapp.com/basic_auth    
    BuiltIn.Should Be Equal As Strings      ${response.status_code}                  200