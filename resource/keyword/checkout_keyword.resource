*** Settings ***
Library                 SeleniumLibrary
Library                 random
Documentation           Keyword for checkout page
Resource                ../locator/checkout_locator.resource


*** Keywords ***

User filled in user information
    ${first_name}=    Evaluate    random.choice(string.ascii_uppercase) + ''.join(random.choices(string.ascii_lowercase, k=8))    modules=random,string
    ${last_name}=     Evaluate    random.choice(string.ascii_uppercase) + ''.join(random.choices(string.ascii_lowercase, k=10))   modules=random,string
    ${postal_code}=   Evaluate    int(''.join(random.choices('0123456789', k=5)))    modules=random

    Input Text        ${INPUT_FIRST_NAME}    ${first_name}
    Input Text        ${INPUT_LAST_NAME}     ${last_name}
    Input Text        ${INPUT_POSTAL_CODE}   ${postal_code}
    Click Element     ${PROCEED_TO_CHECKOUT_BUTTON}

    Log     User ${first_name} ${last_name} with Postal Code: ${postal_code} proceed to checkout the order.

User will get total price
    #Get Item Price
    ${item}=          Get Text      ${ITEM_PRICE}
    ${item_price}=    Evaluate    float('${item}'.split('$')[1])
    Log    Item Price: ${item_price}

    #Get Tax Price
    ${tax_text}=    Get Text    ${TAX_PRICE}
    ${tax_price}=   Evaluate    float('${tax_text}'.split('$')[1])
    Log    Tax: ${tax_price}

    #Get Total Payment
    ${total}=    Get Text    ${TOTAL_PRICE}
    ${total_price}=    Evaluate    float('${total}'.split('$')[1])
    Log    Total Price: ${total_price}

    #Calculate Expected Tax
    ${expected_tax}=    Evaluate    round(${item_price} * 0.08, 2)
    Log    Expected tax: ${expected_tax}
    Should Be Equal As Numbers    ${tax_price}    ${expected_tax}    Tax amount mismatch!

    #Calculate Expected Total
    ${expected_total}=    Evaluate    round(${item_price} + ${expected_tax}, 2)
    Log    Expected total: ${expected_total}
    Should Be Equal As Numbers    ${total_price}    ${expected_total}    Total amount mismatch!

    Click Element    ${BUTTON_FINISH}
