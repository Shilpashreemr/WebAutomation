** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
OpenWebBrowserTest
    open browser    https://www.practo.com  safari
    Maximize browser window
SetLocation
    input text   xpath://input[@data-qa-id="omni-searchbox-locality"]   Banglore
SearchDoc
    input text  xpath://*[@id="c-omni-container"]/div/div[2]/div[1]/input   Dentist
    wait until element is visible   xpath://div[@data-qa-id='omni-suggestion-listing']  10
    click element  xpath://div[@data-qa-id='omni-suggestion-listing']
SelectDoc
    wait until element is visible   xpath://h2[@data-qa-id="doctor_name"]  10
    click element   xpath://h2[@data-qa-id="doctor_name"]
    #wait until element is visible    xpath://button[@data-qa-id="book_button"]      10
    #click element   xpath://button[@data-qa-id="book_button"]

BookSlot
    wait until element is visible  xpath://div[@data-qa-id="slot_time"]    10
    click element   xpath://div[@data-qa-id="slot_time"]
    sleep   10s













*** Keywords ***


