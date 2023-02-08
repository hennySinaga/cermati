*** Settings ***
Documentation   Basic keyword for web testing
Library         SeleniumLibrary
Library         OperatingSystem

*** Variables ***
${BASE_URL}     https://www.cermati.com/
${BROWSER}      Google Chrome

*** Keywords ***
Open Cermati On Browser
    [Documentation]  Open browser and go to cermati base url
    Open Chrome Browser
    Go To  ${BASE_URL}

Open Chrome Browser
    [Documentation]  Open Chrome and maximize window
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.2
