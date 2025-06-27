*** Settings ***
Documentation               Locator for cart page

*** Variables ***
${PRODUCT_CART_LIST}         //div[@class='cart_item']
${PRODUCT_ITEM_TITLE}        //div[@class='inventory_item_name']
${PRODUCT_ITEM_PRICE}        //div[@class='inventory_item_price']
${CHECKOUT_BUTTON}           //button[@id='checkout']