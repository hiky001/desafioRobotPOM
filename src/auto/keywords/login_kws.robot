*** Settings ***
Resource           ../config/package.resource

*** Keywords ***
E acessar a tela de cadastro
    ${NOVO_EMAIL}    FakerLibrary.Email
    Type Text    ${LOGIN.INPUT_EMAIL_CADASTRO}    ${NOVO_EMAIL}
    Click        ${LOGIN.BOTAO_CREATE}

Quando inserir os dados de login
    [Arguments]    ${EMAIL}    ${SENHA}
    Type Text    ${LOGIN.INPUT_EMAIL_LOGIN}    ${EMAIL}
    Type Text    ${LOGIN.INPUT_SENHA}    ${SENHA}