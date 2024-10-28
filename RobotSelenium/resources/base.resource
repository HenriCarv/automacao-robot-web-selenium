*** Settings ***
Documentation    Arquivo principal do projeto

Library    SeleniumLibrary

Resource    actions/signup.resource

*** Variables ***
${LOGIN_URL}          https://walkdog.vercel.app
${BROWSER}            Chrome
${TITLE_HOME}         xpath=//h1[text()="Cuidado e diversão em cada passo"]

*** Keywords ***
Start session
    Open Browser              ${LOGIN_URL}    ${BROWSER}
    Element Text Should Be    ${TITLE_HOME}    Cuidado e diversão em cada passo

Evidence
    Capture Page Screenshot    ${EXECDIR}/logs/inicial.jpg
    Execute JavaScript    window.scrollBy(0, 850);  # Rola 500 pixels para baixo
    Capture Page Screenshot    ${EXECDIR}/logs/end.jpg

Finish session
    Capture Page Screenshot    F:/automação/Robot/QAx/projects/RobotSelenium/logs/finish.jpg
    [Teardown]    Close Browser