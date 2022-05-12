*** Settings ***
Resource    ../Resources/common_functionality.resource

Test Setup         Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
test1
    Click Element    link=Bedroom
    Click Element    link= Bright & Blooming
    Click Element    link=Blue Polyester Floral 950 GSM Double Bed Comfortor







