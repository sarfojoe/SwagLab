*** Settings ***
Library    SeleniumLibrary
Resource    Keywords.robot
Test Teardown   Close All Browsers


*** Test Cases ***

Customer Sorts Product Items
    [Documentation]     Verify that a standard customer can sort products by various methods
    [Setup]  Open Browser To Login Page
    Login To Application   ${STANDARD_USER}    ${PASSWORD}
    Sort Products     2

Checkout And Complete Purchase
    [Documentation]   Verify that a standard customer can purchase products successfully
    [Setup]  Open Browser To Login Page
    Login To Application   ${STANDARD_USER}    ${PASSWORD}
    Add Products To Cart
    Proceed To Checkout    ${FIRST_NAME_INPUT}  ${LAST_NAME_INPUT}  ${POSTAL_CODE_INPUT}


User Is Locked Out From The Platform
    [Documentation]    Verify that a locked out customer cannot log in using proper credentials
    [Setup]  Open Browser To Login Page
    Login As Locked Out User   ${LOCKED_USER}   ${PASSWORD}
    Page Should Contain Element    ${ERROR_MESSAGE}

