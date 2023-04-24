*** Settings ***


Resource  ../Resources/Functional_Keywords.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***

A user should be able to search for a product
    Functional_Keywords.Search For Product      Pasta
