*** Settings ***
Resource           ../config/package.resource

*** Keywords ***
E preencher o formulário com dados válidos
    Click      ${CADASTRO.RADIO_MR}
    ${NOME}    FakerLibrary.First_Name
    Type Text         ${CADASTRO.INPUT_NOME}         ${NOME}
    ${SOBRENOME}    FakerLibrary.Last_Name
    Type Text         ${CADASTRO.INPUT_SOBRENOME}    ${SOBRENOME}
    Type Text         ${CADASTRO.INPUT_COMPANY}      ETech QA
    ${SENHA}    FakerLibrary.Password    length=10    special_chars=True    digits=True    upper_case=True    lower_case=True    
    Type Text         ${CADASTRO.INPUT_SENHA}        ${SENHA}
    Select Options By      ${CADASTRO.SELECT_DIA}          value                  5
    Select Options By      ${CADASTRO.SELECT_MES}          value                  3
    Select Options By      ${CADASTRO.SELECT_ANO}          value                  1990
    Type Text          ${CADASTRO.INPUT_ENDERECO_1}            Rua Teste
    Type Text          ${CADASTRO.INPUT_ENDERECO_2}            Apartamento 10
    Type Text          ${CADASTRO.INPUT_CIDADE}                Barueri
    Select Options By       ${CADASTRO.SELECT_ESTADO}     label                Mississippi
    Type Text          ${CADASTRO.INPUT_CEP}       01234
    ${TELEFONE}    FakerLibrary.Phone Number
    Type Text          ${CADASTRO.INPUT_CELULAR}        ${TELEFONE}
    Type Text          ${CADASTRO.INPUT_PHONE}          ${TELEFONE}