*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
UAT-Lab04-001: Open Workshop Registration Page - Open Website
    Open Browser    http://127.0.0.1:5500/StarterFiles/Registration.html    Chrome
    Page Should Contain    Workshop Registration
