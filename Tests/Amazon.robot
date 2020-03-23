*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Given user searches for products
    And user select product from search results
    And user goes to all buying choices page
    And user chooses the buying option
    When user adds product to cart
    Then user begins checkout
