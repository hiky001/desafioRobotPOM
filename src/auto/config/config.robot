*** Settings ***
Documentation    Configuração do navegador e execução

Library    Browser

*** Keywords ***
Abrir Navegador
    New Browser   chromium     headless=false   args=['--start-maximized']
    New Context   viewport=${None}
    New Page      https://automationtest.shop/index.php   
    Set Browser Timeout    40

Encerrar Navegador
    Take Screenshot
    Close Browser