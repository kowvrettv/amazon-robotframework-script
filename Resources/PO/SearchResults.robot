*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_RESULTS_ITEM} =  //div[@data-cel-widget="search_result_0"]
#                        //img[@data-image-index="0"]

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    wait until page contains element  ${FIRST_RESULTS_ITEM}
    Click Element  ${FIRST_RESULTS_ITEM}