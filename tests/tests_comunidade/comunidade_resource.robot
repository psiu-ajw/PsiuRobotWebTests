*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Resource          ../resource.robot

*** Variables ***
${VALID NAME}     Comunidade Teste
${VALID DESCRIPTION}    Descrição Teste
${COMUNIDADE URL}      http://${SERVER}/public/communities
${COMUNIDADE CREATE URL}    http://${SERVER}/public/community/create


*** Keywords ***
Open Browser To Create Comunidade Page
    Open Browser    ${COMUNIDADE CREATE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Create Comunidade Page Should Be Open

Create Comunidade Page Should Be Open
    Title Should Be    PSIU - Cadastrar Comunidade

Go To Create Comunidade Page
    Go To    ${COMUNIDADE CREATE URL}
    Create Comunidade Page Should Be Open

Input Name
    [Arguments]    ${name}
    Input Text    name    ${name}

Input Description
    [Arguments]    ${description}
    Input Text    description    ${description}

Submit Comunidade
    Click Button    create_comunidade

Comunidades Page Should Be Open
    Location Should Be    ${COMUNIDADE URL}
    Title Should Be    PSIU - Comunidades