*** Settings ***
Documentation    Dependencias do Projeto


#Bibliotecas
Library        Browser
Library        FakerLibrary    locale=pt_br

#Keywords
Resource       ../keywords/home_kws.robot
Resource       ../keywords/login_kws.robot
Resource       ../keywords/cadastro_kws.robot
Resource       ../keywords/minha_conta_kws.robot
Resource       ../keywords/comum_kws.robot

#Elementos
Resource       ../elementos/home_ets.resource
Resource       ../elementos/login_ets.resource
Resource       ../elementos/cadastro_ets.resource
Resource       ../elementos/minha_conta_ets.resource

#Dados
Variables    ../dados/credenciais.yaml

#Configuração
Resource    ./config.robot