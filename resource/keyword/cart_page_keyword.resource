*** Settings ***
Library                 SeleniumLibrary
Documentation           Keyword for cart page
Resource                ../locator/cart_locator.resource


*** Keywords ***

User do checkout
    Wait Until Element Is Visible    ${PRODUCT_CART_LIST}

    # Get values from the cart page
    ${product_cart_title}=    Get Text    ${PRODUCT_ITEM_TITLE}
    ${product_cart_price}=    Get Text    ${PRODUCT_ITEM_PRICE}

    Log    Expected product title: '${product_title}', product title in cart: '${product_cart_title}'
    Log    Expected product price: '${product_price}', product price in cart: '${product_cart_price}'

    # Compare the product title and price between the product detail page and cart page
    ${title_match}=   Evaluate   '${product_title}' == '${product_cart_title}'
    ${price_match}=   Evaluate   '${product_price}' == '${product_cart_price}'

    Run Keyword If    '${title_match}' == 'True' and '${price_match}' == 'True'
    ...    Click Button   ${CHECKOUT_BUTTON}
    ...    ELSE
    ...    Fail    Product name or price mismatch! Not proceeding to checkout.


