*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  https://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com