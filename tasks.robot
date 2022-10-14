*** Settings ***
Library     RPA.Robocorp.WorkItems


*** Tasks ***
Log Work Item
    # Process all input work items one by one
    For Each Input Work Item    Log It


*** Keywords ***
Log It
    ${payload}=    Get Work Item Payload
    Log To Console    ${payload}

    # Amend "Type" to work item payload and put the
    # old one under key "Content".
    ${output_payload}=    Create Dictionary
    ...    Type=output
    ...    Content=${payload}

    # Replace the old work item payload and save.
    Set Work Item Payload    ${output_payload}
    Save Work Item
