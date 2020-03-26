*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Amazon.com, Inc. or its affiliates