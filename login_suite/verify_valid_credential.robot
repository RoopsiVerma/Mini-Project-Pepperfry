*** Settings ***
Resource    ../Resources/common_functionality.resource

Test Setup         Launch Browser
Test Teardown       Close Browser
Test Template       Valid Credential Template

Library     DataDriver      file=../test_data_suite/valid credential.xlsx       sheet_name=Valid Credential

*** Test Cases ***
login_test

*** Keywords ***
Valid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_value}
    #Click Element    xpath=(//a[@id='registerPopupLink'])[1]
    Click Element    xpath=//a[@data-modal="loginModal"]
    Input Text    name=user[new]   ${username}
    Input Password    id=password    ${password}
    Click Element    id=formSubmit-popup_login_username_form
    Page Should Contain     ${expected_value}




