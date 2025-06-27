*** Settings ***
Library                 SeleniumLibrary
Documentation           Keyword for login page
Resource                ../locator/order_finish_locator.resource
Resource                ../assertion/order_complete_assertion.resource


*** Keywords ***

User successfully place the order
        Wait Until Element Is Visible    ${ORDER_COMPLETE_TEXT}
        ${actual_order_complete_text}=   Get Text   ${ORDER_COMPLETE_TEXT}
        Should Be Equal As Strings       ${actual_order_complete_text}    ${EXPECTED_ORDER_COMPLETE_TEXT}
