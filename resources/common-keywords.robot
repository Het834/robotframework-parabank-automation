*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/environment.robot

*** Keywords ***
launch browser 
    Open Browser    ${url}    ${browser}

Clean_db
    Click Element    //div[@id='headerPanel']//a[text()='Admin Page']
    Click Element    //button[normalize-space(text())='Clean']
    Page Should Contain    Database Cleaned



