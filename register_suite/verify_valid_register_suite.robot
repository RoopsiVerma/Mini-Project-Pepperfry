*** Settings ***
Resource    ../Resources/common_functionality.resource

Test Setup         Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Registration_test
    Input Text    name=firstname   Roopsi Verma
    Input Text    xpath=(//input[@class='animate-input log-mobile onlynumbers'])[3]     7233039346
    # Click Element    link=Verify with OTP    otp=645046
    Sleep    10s
    Input Text    name=email    roopsiv123@gmail.com
    Input Password    name=password1    Roopsi@123
    Click Element    id=formSubmit-popup_reg_form






