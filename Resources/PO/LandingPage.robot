*** Settings ***
Library  SeleniumLibrary
Resource  ../Tests/Amazon.robot

*** Keywords ***
Load
    Go To  ${START_URL}
    Sleep  2s

Verify Page Loaded
    Wait Until Page Contains  Discover Amazon