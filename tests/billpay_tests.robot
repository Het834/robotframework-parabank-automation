*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/environment.robot
Resource    ../resources/common-keywords.robot
Resource    ../resources/login_keywords.robot
Resource    ../resources/billpay_keywords.robot
Resource    ../resources/create.robot


*** Test Cases ***


Initiate
    launch browser
    Set Selenium Speed    0.2s
    Enter_lusername    ${username}
    Enter_lpassword    ${password}
    Click_login
    Confirm_login

Initiate_billpayment
    initiate bill pay
    fill bill pay details    Electricity Co    123 Main Street    Toronto    ON    M1A1A1    9876543210    456789    456789    50    12345
    submit bill payment
    # verify bill payment
    Close Browser