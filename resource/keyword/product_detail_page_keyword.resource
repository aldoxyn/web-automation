*** Settings ***
Library                 SeleniumLibrary
Documentation           Keyword for product detail page
Resource                ../locator/product_detail_page_locator.resource


*** Keywords ***

User click add to cart
    Wait Until Element Is Visible    ${PRODUCT_TITLE}
    ${title}=   Get Text     ${PRODUCT_TITLE}
    ${price}=   Get Text     ${PRODUCT_PRICE}
    Set Test Variable    ${product_title}    ${title}
    Set Test Variable    ${product_price}    ${price}
    Click Element       ${ADD_TO_CART_BUTTON}
    Log    ${title} with price ${price} has been added to the cart

    #Check Cart already filled before navigate to Cart page
    ${cart_count}=    Get Text      ${CART_ICON}

    Run Keyword If    '${cart_count}' != ''    Click Element    ${CART_ICON}
    ...    ELSE    Log    Cart is empty, please add new product first.


