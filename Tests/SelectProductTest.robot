*** Settings ***

Resource  ../Resources/FunctionalKeywords.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
A user should be able to click a product and see the details
    FunctionalKeywords.Select a Product     Pasta