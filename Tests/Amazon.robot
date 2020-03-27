*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Lamborghini Gallardo

*** Test Cases ***
User can search the product
    Given user searches for products

User can view the product page
    When user searches for products
    Then user select product from search results

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Given user searches for products
    When user select product from search results
    And user goes to the product page
    And user add product to cart
    And user goes to cart page
    Then user begins checkout
