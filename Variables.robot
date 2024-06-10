*** Variables ***
${BASE_URL}        https://www.saucedemo.com/
${STANDARD_USER}   ${EMPTY}
${PASSWORD}        ${EMPTY}
${LOCKED_USER}     ${EMPTY}
${BROWSER}         Firefox

# Locators using XPath
${USERNAME_INPUT}    xpath=//*[@id="user-name"]
${PASSWORD_INPUT}    xpath=//*[@id="password"]
${LOGIN_BUTTON}      xpath=//*[@id="login-button"]
${ERROR_MESSAGE}     xpath=//*[@data-test="error"]
${PRODUCT_ITEM}      xpath=//*[@data-test="inventory-item-name"]
${ADD_TO_CART_BUTTON}    xpath=//button[@id='add-to-cart']
${SHOPPING_CART}     xpath=//a[@data-test='shopping-cart-link']
${CHECKOUT_BUTTON}   xpath=//*[@id="checkout"]
${FIRST_NAME_INPUT}  xpath=//*[@id='first-name']
${LAST_NAME_INPUT}   xpath=//*[@id="last-name"]
${POSTAL_CODE_INPUT}   xpath=//*[@id="postal-code"]
${CONTINUE_BUTTON}   xpath=//*[@id="continue"]
${FINISH_BUTTON}     xpath=//*[@id="finish"]
${PURCHASE_SUCCESS_MESSAGE}   xpath=//*[@class="complete-header"]
${SORT_DROPDOWN}     xpath=//*[@class="product_sort_container"]
${PRODUCT_LIST}      xpath=//div[@data-test='inventory-list']
${BACK_HOME_BUTTON}  xpath=//*[@id='back-to-products']