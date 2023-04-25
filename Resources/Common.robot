*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Variables.robot

*** Keywords ***
Begin Web Test
     Open Browser               about:blank     ${BROWSER}
     Maximize Browser Window
Go To Web Page
     Load Page
     Verify Page Loaded
     set selenium speed         2 sec
Load Page
     Go to                      ${URL}
Verify Page Loaded
    ${link_text}                Get Title
    Should Be Equal             ${link_text}     Handla billig mat online | Willys

    Delete All Cookies

End Web Test
    Close Browser
