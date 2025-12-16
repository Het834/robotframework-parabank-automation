*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot
Resource    ../resources/register.robot
Resource    ../resources/login_keywords.robot

*** Keywords ***

Create_newacc
    Click Element    //*[@id="leftPanel"]/ul/li[1]/a

Create_acc
    Click Element    //input[@class="button" and @value="Open New Account"]

Account_created
    Page Should Contain    Account Opened!

Get_account
    ${account_id}=    Get Text    id:newAccountId
    Log To Console    ${account_id}
    Set Global Variable    ${account_id}

