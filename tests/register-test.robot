*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot

*** Test Cases ***

New-regestration
    launch browser  
    Set Selenium Speed    0.2s
    Clean_db
    Enter_firstname    Het   
    Enter_lastname    Thumar 
    Enter_address    308 King St N.
    Enter_city    Waterloo
    Enter_state    Ontario
    Enter_zipcode    N3H 3G1
    Enter_phone    123456789    
    Enter_ssn    123457869
    Enter_username    Het834
    Enter_password    Het@123    
    Confirm_password
    Click_register
    Confirm_welcome
    Close Browser  

