*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://127.0.0.1:5500/StarterFiles/Registration.html

*** Test Cases ***
UAT-Lab04-002: Empty Last Name
    Open Browser    ${URL}    Chrome
    Page Should Contain    Workshop Registration

    Input Text    name=firstname    Somyod
    Input Text    name=organization    CS KKU
    Input Text    name=email    somyod@kkumail.com
    Input Text    name=phone    091-001-1234

    Click Button    Register

    Page Should Contain    Workshop Registration
    Page Should Contain    Please enter your last name!!

    Sleep   10s
    Close Browser