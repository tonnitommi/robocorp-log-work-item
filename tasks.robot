*** Settings ***
Library     RPA.Robocorp.WorkItems
Library    RPA.Excel.Files


*** Tasks ***
Log Work Item
    For Each Input Work Item    Log It


*** Keywords ***
Log It
    ${payload}=    Get Work Item Payload
    Log To Console    ${payload}

    ${output_payload}=    Create Dictionary
    ...    Type=output
    ...    Content=${payload}

    Set Work Item Payload    ${output_payload}
    Save Work Item
