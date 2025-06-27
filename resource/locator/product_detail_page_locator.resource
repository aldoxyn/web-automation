*** Settings ***
Documentation               Locator for product detail page

*** Variables ***
${PRODUCT_TITLE}             //div[@class='inventory_details_name large_size']
${PRODUCT_PRICE}             xpath=//div[@class='inventory_details_price']
${ADD_TO_CART_BUTTON}        //button[@id='add-to-cart']
${CART_ICON}                 //a[@class='shopping_cart_link']