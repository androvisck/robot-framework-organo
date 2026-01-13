*** Settings ***
Resource        ../robot-course/resources/main.robot
Test Setup      Dado que eu acesse o Organo
Test Teardown   Fechar o navegador


*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
     Dado que eu clique no botão criar card
     Então o sistema deve apresentar mensagem de campo obrigatorio

