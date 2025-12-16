*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot
Resource    ../resources/login_keywords.robot
Resource    ../resources/create.robot


*** Keywords ***    
    
Initiate_transfer
    Click Element    //div[@id="leftPanel"]//a[contains(text(),"Transfer Funds")]

Verify_transferpage
    Page Should Contain    Transfer Funds    

Verify_payee
    ${items}=    Get List Items    //*[@id="toAccountId"]
    ${count}=    Get Length    ${items}
    Log To Console    Dropdown contains ${count} accounts
    IF    ${count} == 1
        Create_newacc
        Create_acc
        Account_created
        Get_account
        Initiate_transfer
        # After creating, re-check dropdown to ensure new account is available
        ${items}=    Get List Items    //*[@id="toAccountId"]
        ${count}=    Get Length    ${items}
        Log To Console    Dropdown now contains ${count} accounts
        
    END


Select_payee
    Select From List By Label    //*[@id="toAccountId"]    ${account_id}

Enter_amount
    [Arguments]    ${amount}
    Input Text    //*[@id="amount"]    ${amount}
   

Complete_transfer
    Click Button    //form[@id="transferForm"]//input[@value="Transfer"]

Confirm_transfer 
    Page Should Contain    Transfer Complete!
    