*** Settings ***

Resource  ../Resources/PageObjects/AddDiscountCode.robot
Resource  ../Resources/PageObjects/AddToCart.robot
Resource  ../Resources/PageObjects/OpenHomePage.robot
Resource  ../Resources/PageObjects/SearchProduct.robot
Resource  ../Resources/PageObjects/ViewProductDetails.robot

*** Keywords ***

Navigate to home page
    OpenHomePage.Home Page
    OpenHomePage.Page Load Verification

Search For Product
    [Arguments]     ${searched_item}
    Navigate to home page
    SearchProduct.Search Product        ${searched_item}
    SearchProduct.Verify Search Compilation     ${searched_item}

