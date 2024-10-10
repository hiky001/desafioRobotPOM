*** Settings ***

Resource       ../../src/auto/config/package.resource

Test Setup        Abrir Navegador
Test Teardown     Encerrar Navegador

Force Tags    LOGIN

*** Test Cases ***
Validar login com sucesso na aplicação
    [Tags]    REGRESSIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login    ${MASSA_DADOS.LOGIN.EMAIL}    ${MASSA_DADOS.LOGIN.SENHA}
    E clicar no elemento    ${login.BOTAO_SIGNIN}
    Então deve visualizar a tela My Account
