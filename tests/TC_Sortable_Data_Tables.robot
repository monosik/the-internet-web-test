*** Settings ***
Resource          ${CURDIR}/../import/import.resource
Suite Teardown    Close Browser

*** Test Cases ***
Sort Data Tables
    Open browser                             https://the-internet.herokuapp.com/    chrome
    home_page.Click Sort Data Tables Menu
    # Test Example1
    sortable_data_tables_page.Click Sort Last Name For Example1
    # Sort order by  ASC
    sortable_data_tables_feature.Verify Sort Data Example1
    sortable_data_tables_page.Click Sort Last Name For Example1
    # Sort order by  BESC
    sortable_data_tables_feature.Verify Reverse Sort Data Example1
    
    # Test Example2
    # Sort order by  ASC
    sortable_data_tables_page.Click Sort Last Name For Example2
    sortable_data_tables_feature.Verify Sort Data Example2
    # Sort order by  BESC
    sortable_data_tables_page.Click Sort Last Name For Example2
    sortable_data_tables_feature.Verify Reverse Sort Data Example2