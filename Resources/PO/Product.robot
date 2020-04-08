*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CART} =  id:add-to-cart-button
${ALL_BUYING_OPTIONS} =  id:buybox-see-all-buying-choices-announce
${SUBMIT_ADD_TO_CART} =  id:a-autoid-2

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results

Add product to cart
    ${add_to_cart_button_visibility} =  run keyword and return status  wait until page contains element  ${ADD_TO_CART}
    run keyword if  ${add_to_cart_button_visibility}  click button  ${ADD_TO_CART}
    ...  ELSE  All buying options

All buying options
    click element  ${ALL_BUYING_OPTIONS}
    wait until element is visible  ${SUBMIT_ADD_TO_CART}
    click element  ${SUBMIT_ADD_TO_CART}