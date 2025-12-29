*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.robot
Resource    ../resources/common-keywords.robot
*** Keywords ***

fill bill pay details
    [Arguments]    ${payee_name}    ${address}    ${city}    ${state}    ${zip}    ${phone}    ${account}    ${verify_account}    ${amount}    ${from_account}
    Input Text    id=payee.name              ${payee_name}
    Input Text    id=payee.address.street    ${address}
    Input Text    id=payee.address.city      ${city}
    Input Text    id=payee.address.state     ${state}
    Input Text    id=payee.address.zipCode   ${zip}
    Input Text    id=payee.phoneNumber       ${phone}
    Input Text    id=payee.accountNumber     ${account}
    Input Text    id=verifyAccount           ${verify_account}
    Input Text    id=amount                  ${amount}
    Select From List By Label    id=fromAccountId    ${from_account}

submit bill payment
    Click Button    //input[@value='Send Payment']
    Page Should Contain    Bill Payment Complete

