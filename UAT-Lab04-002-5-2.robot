*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
UAT-Lab04-002: Empty Phone Number
    Open Browser    ${URL}    Chrome
    Page Should Contain    Workshop Registration

    Input Text    name=firstname    Somyod
    Input Text    name=lastname    Sodsai
    Input Text    name=organization    CS KKU
    Input Text    name=email    somyod@kkumail.com
    Input Text    name=phone    1234

    Click Button    Register

    Page Should Contain    Workshop Registration
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)

    Sleep   10s
    Close Browser