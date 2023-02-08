*** Settings ***
Resource    ../utils/base.robot
Resource    ../locators/register.robot
Library     SeleniumLibrary
Library     String

*** Variables ***
${validPassword}    Cermat1joss!
${validFirstname}   Joko
${validLastname}    Sembung
${validCity}        jakarta

*** Keywords ***
Open Register Page
    Go To    ${BASE_URL}app/gabung

Input Email To Register
    ${num}  Generate Random String  2  [NUMBERS]
    Wait Until Element Is Visible  ${inputEmail}
    Input Text    ${inputEmail}    hennysinaga.test${num}@gmail.com

Input Phone To Register
    ${num}  Generate Random String  8  [NUMBERS]
    Wait Until Element Is Visible    ${inputPhone}
    Input Text  ${inputPhone}  0853${num}

Input Password To Register
    Wait Until Element Is Visible    ${inputPassword}
    Input Text  ${inputPassword}  ${validPassword}

Input Confirm Password To Register
    Wait Until Element Is Visible    ${inputConfirmPassword}
    Input Text  ${inputConfirmPassword}  ${validPassword}

Input First Name To Register
    Wait Until Element Is Visible    ${inputFirstName}
    Input Text  ${inputFirstName}  ${validFirstname}

Input Last Name To Register
    Wait Until Element Is Visible    ${inputLastName}
    Input Text  ${inputLastName}  ${validLastname}

Input City To Register
    Wait Until Element Is Visible    ${inputCityAndProvince}
    ${validCity}  Convert To Uppercase  ${validCity}
    Input Text  ${inputCityAndProvince}  ${validCity}
    Wait Until Element Is Visible    //*[contains(text(),"${validCity}")]
    Click Element    //*[contains(text(),"${validCity}")]

Click Register Button
    Wait Until Element Is Visible    ${buttonRegisterNew}
    Click Element    ${buttonRegisterNew}
