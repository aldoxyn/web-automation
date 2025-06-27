*** Settings ***
Library         SeleniumLibrary
Library         Screenshot

*** Keywords ***
User Close Browser
   Sleep    2
   Capture Page Screenshot
   Close All Browsers