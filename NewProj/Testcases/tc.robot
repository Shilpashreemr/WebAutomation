*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
OpenWebBrowserTest
    open browser    https://www.practo.com  safari
    Maximize browser window
SearchTest
    input text  xpath://*[@id="c-omni-container"]/div/div[2]/div[1]/input   Dentist
    wait until element is visible   xpath://div[@data-qa-id='omni-suggestion-listing']  10
    click element  xpath://div[@data-qa-id='omni-suggestion-listing']
    wait until element is visible   xpath://button[@data-qa-id='book_button']   10
BookTest
    click button   xpath://button[@data-qa-id='book_button']
    sleep   5s













*** Keywords ***


