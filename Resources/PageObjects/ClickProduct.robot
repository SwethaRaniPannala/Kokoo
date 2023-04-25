*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${First_Item_In_Search_Result}      xpath:/html/body/div[2]/div/div[3]/main/section/div/div[4]/div[1]/div[1]/a
${Product_Details_Product_Info_Tab}     xpath:/html/body/div[2]/div/div[3]/main/div/div/div/div/div[1]/div[2]/div[1]/div[6]/div[1]/button[1]
${Product_Information_Tab_Text}     Produktinformation

*** Keywords ***
Click Product
    mouse over  ${First_Item_In_Search_Result}
    sleep    1s
    click link    ${First_Item_In_Search_Result}
    sleep    2s

Verify Search Compilation
    Sleep  1s
    Wait Until Page Contains  ${Product_Information_Tab_Text}
    Sleep  1s