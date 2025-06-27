*** Settings ***
Library                 SeleniumLibrary
Library                 random
Library                 Collections
Documentation           Keyword for product discovery page
Resource                ../locator/product_discovery_locator.resource


*** Keywords ***

User choose any product
    Wait Until Element Is Visible    ${PRODUCT_NAME}
    ${titles}=    Get WebElements    ${PRODUCT_NAME}
    ${count}=     Get Length         ${titles}
    #Conditions to check whether there's a product or not
    Should Be True    ${count} > 0    No product titles found!

    ${index}=     Evaluate    random.randint(0, ${count}-1)    modules=random
    ${product_title}=    Get From List    ${titles}    ${index}
    Click Element    ${product_title}



