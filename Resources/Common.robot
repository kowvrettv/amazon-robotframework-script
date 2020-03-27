*** Settings ***
Library  SeleniumLibrary
Resource  ../Tests/Amazon.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser