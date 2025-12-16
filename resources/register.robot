*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/environment.robot
Resource     ../resources/common-keywords.robot



*** Keywords ***



Enter_firstname
    [Arguments]    ${firstname}
    Click Element    xpath=//div[@id='loginPanel']//a[text()='Register']
    Input Text    locator=//*[@id="customer.firstName"]    text=${firstname}
    Set Global Variable    ${firstname}

Enter_lastname
    [Arguments]    ${lastname}
    Input Text    //*[@id="customer.lastName"]    text=${lastname}

Enter_address
    [Arguments]    ${address}
    Input Text        //*[@id="customer.address.street"]    text=${address}

Enter_city    
    [Arguments]    ${city}
    Input Text    //*[@id="customer.address.city"]    text=${city}

Enter_state
    [Arguments]    ${state}
    Input Text    //*[@id="customer.address.state"]    text=${state}

Enter_zipcode
    [Arguments]    ${zipcode}
    Input Text    //*[@id="customer.address.zipCode"]    text=${zipcode}

Enter_phone
    [Arguments]    ${phone}
    Input Text    //*[@id="customer.phoneNumber"]    text=${phone}
    ${phone_value}=    Get Value    id:customer.phoneNumber
    Should Match Regexp    ${phone_value}    ^[0-9]+$

Enter_ssn
    [Arguments]    ${ssn}
    Input Text    //*[@id="customer.ssn"]    text=${ssn}
    ${ssn}=    Get Value    id:customer.ssn
    Should Match Regexp    ${ssn}    ^[0-9]+$

Enter_username
    [Arguments]    ${username}
    Input Text    //*[@id="customer.username"]    text=${username}
    Set Global Variable    ${username}

Enter_password
    [Arguments]    ${password}
    Input Password    //*[@id="customer.password"]    password=${password}
    Set Global Variable    ${password}  

Confirm_password
    Input Password    //*[@id="repeatedPassword"]    password=${password}
    Log To Console    ${password}

Click_register
    Click Button    //form[@id='customerForm']//input[@value='Register']

Confirm_welcome
    Page Should Contain    Welcome ${firstname}