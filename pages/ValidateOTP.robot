*** Settings ***
Resource    ../locators/register.robot
Library    SeleniumLibrary

*** Keywords ***
Verify Validate OTP Page Is Open
    Wait Until Element Is Visible  ${labelOTPTitle}
    Element Should Be Visible    ${inputOTP1}
