*** Settings ***
Documentation       This suite will handle invalid credential
...     test - TC_OH_3
Resource    ../Resources/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template     Invalid Credential Template

*** Test Cases ***
TC1    john     john123     Invalid credential
TC2    peter    peter123    Invalid credential

*** Keywords ***
Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Click Element    xpath=(//a[@id='registerPopupLink'])[1]
    Click Element    xpath=//a[@data-modal="loginModal"]
    Input Text    name=user[new]    ${username}
    Input Password    id=password    ${password}
    Click Element    id=formSubmit-popup_login_username_form
    Click Element    link=Existing User? Log In

