*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot


*** Keywords ***

Enter_lusername
    [Arguments]    ${username}
    Input Text    //div[@id="loginPanel"]//input[@name="username"]    ${username}
    Set Global Variable    ${username}
Enter_lpassword
    [Arguments]    ${password}
    Input Text    //div[@id="loginPanel"]//input[@name="password"]    ${password}
    Set Global Variable    ${password}
Click_login    
    Click Button    //*[@id="loginPanel"]/form/div[3]/input    

Confirm_login
    Page Should Contain    Overview