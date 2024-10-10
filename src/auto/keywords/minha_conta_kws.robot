*** Settings ***
Resource           ../config/package.resource

*** Keywords ***
Então deve visualizar a tela My Account
    Wait For Elements State      ${MINHA_CONTA.TITULO}    visible