*** Keywords ***
Verify Sort Data Example1
    ${actual_data_list}    Create List
    ${count}=    Get Element Count    ${EXAMPLE.1.LAST.NAME.ITEM}
    FOR    ${index}    IN RANGE    ${count}
        ${value}=    Get Text    (${EXAMPLE.1.LAST.NAME.ITEM})[${index}+1]
        Append To List      ${actual_data_list}    ${value}    
    END
    ${expect_data_list}    Create List
    ...     Bach        Conway      Doe     Smith
    Lists Should Be Equal   ${actual_data_list}     ${expect_data_list} 

Verify Reverse Sort Data Example1
    ${actual_data_list}    Create List
    ${count}=    Get Element Count    ${EXAMPLE.1.LAST.NAME.ITEM}
    FOR    ${index}    IN RANGE    ${count}
        ${value}=    Get Text    (${EXAMPLE.1.LAST.NAME.ITEM})[${index}+1]
        Append To List      ${actual_data_list}    ${value}    
    END
    ${expect_data_list}    Create List
    ...     Smith       Doe     Conway      Bach
    Lists Should Be Equal   ${actual_data_list}     ${expect_data_list} 

Verify Sort Data Example2
    ${actual_data_list}    Create List
    ${count}=    Get Element Count    ${EXAMPLE.2.LAST.NAME.ITEM}
    FOR    ${index}    IN RANGE    ${count}
        ${value}=    Get Text    (${EXAMPLE.2.LAST.NAME.ITEM})[${index}+1]
        Append To List      ${actual_data_list}    ${value}    
    END
    ${expect_data_list}    Create List
    ...     Bach        Conway      Doe     Smith
    Lists Should Be Equal   ${actual_data_list}     ${expect_data_list} 

Verify Reverse Sort Data Example2
    ${actual_data_list}    Create List
    ${count}=    Get Element Count    ${EXAMPLE.2.LAST.NAME.ITEM}
    FOR    ${index}    IN RANGE    ${count}
        ${value}=    Get Text    (${EXAMPLE.2.LAST.NAME.ITEM})[${index}+1]
        Append To List      ${actual_data_list}    ${value}    
    END
    ${expect_data_list}    Create List
    ...     Smith       Doe     Conway      Bach
    Lists Should Be Equal   ${actual_data_list}     ${expect_data_list} 