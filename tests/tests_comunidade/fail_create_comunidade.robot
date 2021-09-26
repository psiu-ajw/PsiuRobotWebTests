*** Settings ***
Documentation     A test suite containing tests related to invalid comunidade create.
...
...               These tests are data-driven by their nature. They use a single
...               keyword, specified with Test Template setting, that is called
...               with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.
Suite Setup       Open Browser To Create Comunidade Page
Suite Teardown    Close Browser
Test Setup        Go To Create Comunidade Page
Test Template     Create Comunidade With Invalid Credentials Should Fail
Resource          comunidade_resource.robot

*** Test Cases ***               NAME             DESCRIPTION
Empty Nome                       ${EMPTY}         ${VALID DESCRIPTION}
Empty Descricao                  ${VALID NAME}    ${EMPTY}
Empty Nome And Descricao         ${EMPTY}         ${EMPTY}

*** Keywords ***
Open Create Comunidade Page
    Go To Create Comunidade Page

Create Comunidade With Invalid Credentials Should Fail
    [Arguments]         ${name}    ${description}
    Input name          ${name}
    Input description   ${description}
    Submit Comunidade
    Create Comunidade Should Have Failed

Create Comunidade Should Have Failed
    Location Should Be    ${COMUNIDADE CREATE URL}
    Title Should Be    PSIU - Cadastrar Comunidade
