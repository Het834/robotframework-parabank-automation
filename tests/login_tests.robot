*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot
Resource    ../resources/login_keywords.robot


*** Test Cases ***    

Login
    launch browser  
    Set Selenium Speed    0.2s
    Enter_lusername    Het834
    Enter_lpassword    Het@123
    Click_login
    Confirm_login
    Close Browser