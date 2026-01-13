*** Settings ***
Resource        ../robot-course/resources/main.robot
Test Setup      Dado que eu acesse o Organo
Test Teardown   Fechar o navegador

*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
     Dado que eu preencha os campos do Formulário
     E clique no botão criar card
     Então identifique o card no tempo esperado