*** Settings ***
Documentation     Registre on Walkdogs

Resource    ../resources/base.resource

*** Test Cases ***
Valid Login
    Start session
    Click to Register
    Fill signup form
    Evidence
    Submit signup form
    Check sucess submit
    Finish session