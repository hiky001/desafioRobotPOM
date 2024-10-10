*** Settings ***

Resource       ../../src/auto/config/package.resource

Test Setup        Abrir Navegador
Test Teardown     Encerrar Navegador

Force Tags    CADASTRO

*** Test Cases ***
Cenario: Validar cadastro do cliente
    [Tags]    REGRESSIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    E acessar a tela de cadastro
    E preencher o formulário com dados válidos
    Quando clicar no elemento    ${CADASTRO.BOTAO_REGISTER}
    Então deve visualizar a tela My Account
