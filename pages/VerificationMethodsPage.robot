*** Settings ***
Resource    ../locators/register.robot
Library     SeleniumLibrary

*** Keywords ***
Verify Verification Method Page Is Open
    Wait Until Element Is Visible  ${labelVerificationTitle}
    Element Should Be Visible  ${buttonSendOTPWhatsapp}
    Element Should Be Visible  ${buttonSendOTPSMS}

Choose Whatsapp as Verification Method
    Wait Until Element Is Visible  ${buttonSendOTPWhatsapp}
    Click Element  ${buttonSendOTPWhatsapp}

Choose SMS as Verification Method
    Wait Until Element Is Visible  ${buttonSendOTPSMS}
    Click Element  ${buttonSendOTPSMS}
