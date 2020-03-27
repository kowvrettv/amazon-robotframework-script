*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PROCEED_TO_CHECKOUT_BUTTON} =  xpath=//*[@id="hlb-ptc-btn-native"]

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Cart subtotal

Proceed to Checkout
    Click Link  ${PROCEED_TO_CHECKOUT_BUTTON}