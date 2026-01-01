*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://127.0.0.1:5500/StarterFiles/Registration.html

*** Test Cases ***
UAT-Lab04-001: Register Success
    Open Browser    ${URL}    Chrome
    Page Should Contain    Workshop Registration

    Input Text    name=firstname    Somyod
    Input Text    name=lastname    Sodsai
    Input Text    name=organization    CS KKU
    Input Text    name=email    somyod@kkumail.com
    Input Text    name=phone    091-001-1234

    Click Button    Register

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Sleep   10s
    Close Browser