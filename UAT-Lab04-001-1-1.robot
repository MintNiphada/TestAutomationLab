*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
UAT-Lab04-001: Open Workshop Registration Page
    Open Browser    ${URL}    Chrome
    Page Should Contain    Workshop Registration
