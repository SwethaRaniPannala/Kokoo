*** Settings ***


Resource  ../Resources/Functional_Keywords.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***

A user should be able to navigate to home page
    Functional_Keywords.Navigate to home page