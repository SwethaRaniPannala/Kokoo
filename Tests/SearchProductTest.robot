*** Settings ***


Resource  ../Resources/FunctionalKeywords.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***

A user should be able to search for a product
    FunctionalKeywords.Search For Product      Pasta
