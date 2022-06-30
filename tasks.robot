*** Settings ***
Library     RPA.Robocorp.WorkItems


*** Tasks ***
Log Work Item
    For Each Work Item    Log It


*** Keywords ***
Log It
    ${payload}=    Get Work Item Payload
    Log To Console    ${payload}
