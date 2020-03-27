*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]  ${Username}
    Log  Filling Email field with ${Username}

Fill "Password" Field
    [Arguments]  ${Password}
    Log  Filling Password field with ${Password}

Click "Sign In" Button
    Log  Clicking Submit Button

Verify Page Loaded
    Page Should Contain Element  ${MAIN_HEADING}
    Element Text Should Be  ${MAIN_HEADING}  Sign-In