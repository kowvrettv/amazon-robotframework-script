*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Product.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Cart.robot

*** Keywords ***
user should be able to login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}  ${Password}

user searches for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

user select product from search results
    SearchResults.Click Product Link

user goes to the product page
    Product.Verify Page Loaded

user add product to cart
    Product.Add product to cart

user goes to cart page
    Cart.Verify Product Added

user begins checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

