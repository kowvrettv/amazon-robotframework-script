*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results

Add product to cart
    Click Button  id:add-to-cart-button