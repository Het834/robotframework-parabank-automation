*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot
Resource    ../resources/login_keywords.robot
Resource    ../resources/transfer_keywords.robot
Resource    ../resources/create.robot


*** Test Cases ***

Initiate
    launch browser  
    Set Selenium Speed    0.2s
    Enter_lusername    Het834
    Enter_lpassword    Het@123
    Click_login
    Confirm_login

Initiate_fundtransfer
    Initiate_transfer
    Verify_transferpage
    Verify_payee
    Select_payee
    Enter_amount    15   
    Complete_transfer
    Confirm_transfer
    Close Browser