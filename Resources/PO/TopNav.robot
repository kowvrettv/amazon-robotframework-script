*** Settings ***
Library  SeleniumLibrary
Resource  ../Tests/Amazon.robot

*** Variables ***
${TOPNAV_SEARH_BAR} =  id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    Input Text  ${TOPNAV_SEARH_BAR}  ${SEARCH_TERM}
    Click Button  ${TOPNAV_SEARCH_BUTTON}