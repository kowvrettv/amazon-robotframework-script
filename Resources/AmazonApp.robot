*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Product.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Cart.robot

*** Keywords ***
user searches for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

user select product from search results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

user goes to all buying choices page
    Product.Go to All Buying Options Page
    Product.Verify Page Loaded (all buying option)

user chooses the buying option
    Product.Choose the Buying Options

user adds product to cart
    Cart.Verify Product Added

user begins checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

