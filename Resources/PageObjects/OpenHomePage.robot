*** Settings ***
Library  SeleniumLibrary

*** Variables ***
Variables  ../Resources/Variables.robot


*** Keywords ***

Home Page
    Go To  ${URL}
    Sleep  1s
    Delete All Cookies


Page Load Verification
    Sleep  2s
    Wait Until Page Contains        Handla billig mat online | Willys
    Sleep  1s