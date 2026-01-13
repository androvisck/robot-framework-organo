*** Settings ***
Library         SeleniumLibrary
Resource        setup_teardown.robot
Test Setup      Dado que eu acesse o Organo
Test Teardown   Fechar o navegador


*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
     Dado que eu clique no botão criar card
     Então o sistema deve apresentar mensagem de campo obrigatorio

*** Keywords ***
Dado que eu clique no botão criar card
    Click Element    ${BOTAO_CARD}

Então o sistema deve apresentar mensagem de campo obrigatorio
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
