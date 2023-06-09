*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Search_Box}       xpath:/html/body/div[2]/div/div[2]/div[1]/form/div/div/input
${Search_Button}    xpath:/html/body/div[2]/div/div[2]/div[1]/form/div/button[2]
${SEARCH-RESULT_VERIFICATION_TEXT}      Sökord:

*** Keywords ***
Search Product
    [Arguments]     ${searched_item}
    Input Text      ${Search_Box}       ${searched_item}
    Sleep  2s
    Press Keys      ${Search_Box}       ENTER
    Sleep  2s

Verify Search Compilation
    [Arguments]     ${searched_item}
    Sleep  1s
    Wait Until Page Contains  ${SEARCH-RESULT_VERIFICATION_TEXT} ${searched_item}
    Sleep  1s

Verify Product Count
    Sleep  1s
    Execute JavaScript    window.scrollTo(0,120)
    Sleep  1s
    ${xpath_search_count} =  get element count   ${products_returned_after_search-xpath}
    log to console  Total Search Results in the webpage are = ${xpath_search_count}

    Run Keyword If  ${xpath_search_count} >= ${expected_product_count}  Keyword_1  ELSE IF  ${xpath_search_count} < ${expected_product_count}  Keyword_2

Keyword_1
    log to console  Found more than 10 search results.

Keyword_2
    log to console  Found less than 10 search results.

    