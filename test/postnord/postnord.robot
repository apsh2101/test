*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Check main page
    Open Browser  http://opencart.abstracta.us/  Chrome
    Maximize Browser Window
    Get WebElement  name:search
    Input Text  name:search  example
    Click Element  class:input-group-btn
    Element Text Should Be  //div[@id="content"]/h1  Search - example
    Capture Page Screenshot  screenshots/searchExample.png
    Close Window
