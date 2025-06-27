*** Settings ***
Documentation               Locator for checkout page

*** Variables ***
${INPUT_FIRST_NAME}             //input[@id='first-name']
${INPUT_LAST_NAME}              //input[@id='last-name']
${INPUT_POSTAL_CODE}            //input[@id='postal-code']
${PROCEED_TO_CHECKOUT_BUTTON}   //input[@id='continue']
${ITEM_PRICE}                   //div[@class='summary_subtotal_label']
${TAX_PRICE}                    //div[@class='summary_tax_label']
${TOTAL_PRICE}                  //div[@class='summary_total_label']
${BUTTON_FINISH}                //button[@id='finish']
