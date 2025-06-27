*** Settings ***
Library                 SeleniumLibrary
Documentation           Keyword for login page
Resource                ../data/browser_data.resource
Resource                ../locator/login_page_locator.resource
Resource                ../data/login_data.resource


*** Keywords ***

User do login
    Open Browser                        ${URL}                      ${BROWSER}                options= add_argument("--guest");
    Wait Until Element Is Visible       ${LOGIN_BUTTON}
    Input Text                          ${USERNAME_FIELD}           ${USERNAME_DATA}
    Input Text                          ${PASSWORD_FIELD}           ${PASSWORD_DATA}
    Click Element                       ${LOGIN_BUTTON}