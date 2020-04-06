*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d Results --loglevel trace Tests/Amazon.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Lamborghini Gallardo
${LOGIN_EMAIL} =  test@robotframework.com
${LOGIN_PASSWORD} =  robotPassword

*** Test Cases ***
Should be able to login
    Given user should be able to login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user should be asked to sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  checkout
    Given user searches for products
    When user select product from search results
    And user goes to the product page
    And user add product to cart
    And user goes to cart page
    Then user begins checkout
