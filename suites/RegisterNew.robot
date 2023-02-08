*** Settings ***
Resource    ../utils/base.robot
Resource    ../pages/RegisterPage.robot
Resource    ../pages/VerificationMethodsPage.robot
Resource    ../pages/ValidateOTP.robot

Test Setup  Open Chrome Browser
Test Teardown  Close Browser

*** Test Cases ***
User Successfully Register New User
    [Documentation]     User successfully register with whatsapp as verification method.
    [Tags]              register  positive
    Open Register Page
    Input Email To Register
    Input Phone To Register
    Input Password To Register
    Input Confirm Password To Register
    Input First Name To Register
    Input Last Name To Register
    Input City To Register
    Click Register Button
    Verify Verification Method Page Is Open
    Choose Whatsapp as Verification Method
    Verify Validate OTP Page Is Open
