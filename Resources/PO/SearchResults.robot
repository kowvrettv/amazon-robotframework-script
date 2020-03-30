*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_RESULTS_ITEM} =  xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/h2/a

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    Click Link  ${FIRST_RESULTS_ITEM}