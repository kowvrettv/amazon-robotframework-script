*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

End Web Test
    Close Browser