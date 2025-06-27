*** Settings ***
Library             SeleniumLibrary
Resource            ../resource/keyword/login_keyword.resource
Resource            ../resource/keyword/product_discovery_keyword.resource
Resource            ../resource/keyword/product_detail_page_keyword.resource
Resource            ../resource/keyword/cart_page_keyword.resource
Resource            ../resource/keyword/checkout_keyword.resource
Resource            ../resource/keyword/order_complete_keyword.resource
Resource            ../library/helper/general_keyword.resource

Test Teardown       User Close Browser

*** Test Cases ***
Scenario: User do Buy product
    [Tags]  Buy
    Given User do login
    When User choose any product
    And User click add to cart
    And User do checkout
    And User filled in user information
    Then User will get total price
    And User successfully place the order