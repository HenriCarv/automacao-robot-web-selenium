*** Settings ***
Documentation    Ações, steps e elementos da funcionalidade de cadastro

Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}           https://walkdog.vercel.app
${BROWSER}             Chrome
${BUTTON_REGISTER}     xpath=//strong[text()='Quero ser Dog Walker']
${BOX_NAME}            xpath=//input[@placeholder="Nome completo"]
${TITLE_SIGNUP}        xpath=//h1[text()="Faça seu cadastro"]
${BOXEMAIL}            xpath=//input[@name="email"]
${BOXCPF}              xpath=//input[@name="cpf"]
${BOXCEP}              xpath=//input[@name="cep"]
${ADRESSNUMBER}        xpath=//input[@name="addressNumber"]
${ADRESSCOMPLEMENT}    xpath=//input[@name="addressDetails"]
${BUTTONCEP}           xpath=//input[@value="Buscar CEP"]
${ATTACHFILE}          xpath=//input[@type="file"]
${BUTTONSUBMIT}        xpath=//button[@type="submit"]
${TITTLESUCESS}        xpath=//div[@class="swal2-html-container"]

*** Keywords ***
Click to Register
    Click Element             ${BUTTON_REGISTER}
    Element Text Should Be    ${TITLE_SIGNUP}    Faça seu cadastro

Fill signup form
    ${DOG_WALKER} =    Create Dictionary    
    ...    Completedname=Jorge Matias    
    ...    email=jorge@hotmail.com
    ...    cpf=00000014141    
    ...    cep=04534011
    ...    number=1000
    ...    complement=ap 28
    ...    cnh=toretto.jpg
    Input Text     ${BOX_NAME}               ${DOG_WALKER["Completedname"]}
    Input Text     ${BOXEMAIL}               ${DOG_WALKER["email"]}
    Input Text     ${BOXCPF}                 ${DOG_WALKER["cpf"]}
    Input Text     ${BOXCEP}                 ${DOG_WALKER["cep"]}
    Click Element                            ${BUTTONCEP}
    Input Text     ${ADRESSNUMBER}           ${DOG_WALKER["number"]}
    Input Text     ${ADRESSCOMPLEMENT}       ${DOG_WALKER["complement"]}
    Choose File    ${ATTACHFILE}             ${EXECDIR}/resources/fixtures/${dog_walker}[cnh]

Submit signup form
    Click Element             ${BUTTONSUBMIT}
    Sleep    2

Check sucess submit
    Element Text Should Be    ${TITTLESUCESS}    Recebemos o seu cadastro e em breve retornaremos o contato.