*** Settings ***
Library   SeleniumLibrary
Resource  Variables.robot



*** Keywords ***
Open Browser To Login Page
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element  ${USERNAME_INPUT}

Login To Application
    [Arguments]  ${username}  ${password}
    Input Text  ${USERNAME_INPUT}  ${username}
    Input Password  ${PASSWORD_INPUT}  ${password}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains  Swag Labs

Login As Locked Out User
    [Arguments]  ${username}  ${password}
    Input Text  ${USERNAME_INPUT}  ${username}
    Input Text  ${PASSWORD_INPUT}  ${password}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains Element  ${ERROR_MESSAGE}

Add Products To Cart
    [Arguments]  @{products}
    FOR  ${product}  IN  @{products}
        Click Button  ${PRODUCT_ITEM}  and ${ADD_TO_CART_BUTTON}
    END
    Click Element  ${SHOPPING_CART}

Proceed To Checkout
    [Arguments]  ${firstname}  ${lastname}  ${postalcode}
    Click Button    ${CHECKOUT_BUTTON}
    Wait Until Element Is Visible    ${FIRST_NAME_INPUT}
    Input Text  ${FIRST_NAME_INPUT}  ${firstname}
    Input Text  ${LAST_NAME_INPUT}  ${lastname}
    Input Text  ${POSTAL_CODE_INPUT}  ${postalcode}
    Click Button  ${CONTINUE_BUTTON}
    Click Button  ${FINISH_BUTTON}
    Wait Until Element Is Visible   ${PURCHASE_SUCCESS_MESSAGE}
    Click Button    ${BACK_HOME_BUTTON}

Sort Products
    [Arguments]  ${sort_method}
    Click Element    ${SORT_DROPDOWN}
    Select From List By Index  ${SORT_DROPDOWN}    ${sort_method}
    Wait Until Element Is Visible    ${PRODUCT_LIST}
    



