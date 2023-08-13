*** Keywords ***
Set default checkboxes page
    checkboxes_page.Set Default First Checkbox
    checkboxes_page.Set Default Second Checkbox

Set Both checkboxes Are Checked Status
    checkboxes_page.Click First Checkboxes
    checkboxes_page.Verify First Checkboxes Status is Checked
    checkboxes_page.Verify Second Checkboxes Status is Checked
    checkboxes_feature.Set default checkboxes page

Set Both checkboxes Are Unchecked Status
    checkboxes_page.Click Second Checkboxes
    checkboxes_page.Verify First Checkboxes Status is Unchecked
    checkboxes_page.Verify Second Checkboxes Status is Unchecked
    checkboxes_feature.Set default checkboxes page