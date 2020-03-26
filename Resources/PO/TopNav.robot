*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    Sleep  1s
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input