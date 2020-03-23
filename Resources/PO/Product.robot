*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results

Go to All Buying Options Page
    Click Link  xpath=//*[@id="buybox-see-all-buying-choices-announce"]

Verify Page Loaded (all buying option)
    Wait Until Page Contains  Return to product information

Choose the Buying Options
    Click Button  xpath=//*[@id="a-autoid-0"]/span/input