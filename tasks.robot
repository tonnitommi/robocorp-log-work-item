*** Settings ***
Library     RPA.Robocorp.WorkItems


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
    Create Output Work Item    variables=${output_payload}    save=True
