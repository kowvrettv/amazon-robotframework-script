*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input