*** Settings ***
Resource           ../config/package.resource

*** Keywords ***
Quando clicar no elemento
    [Arguments]    ${ELEMENTO}
    Click     ${ELEMENTO}

E clicar no elemento
    [Arguments]    ${ELEMENTO}
    Quando clicar no elemento    ${ELEMENTO}