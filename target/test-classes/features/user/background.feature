@background
Feature: User Background

  Background:
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
    When Quando o cliente clicar em Salvar
    Then Tem que exibir a mensagem "Sucesso"


  Scenario: GET buscando o novo usuario
    Given Cliente quer criar um novo usuario
    When Quando o cliente clicar em Salvar
    Then Tem que exibir a mensagem "Sucesso"
    And usuario teve ver o login com valor "james"
    And usuario teve ver o full_name com valor "jamesson"

  Scenario: DELLETE buscando o novo usuario
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
    When Quando o cliente clicar em Salvar
    Then O cliente clicar em Deletar
    Then Tem que exibir a mensagem "no content"

  Scenario: UPDATE buscando o novo usuario
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
    When Quando o cliente clicar em Salvar
    And Informar o login com valor "jamesson"
    And o usuario clica em salvar novamente
    And o usuario obtem a nova informacao
    Then Tem que exibir a mensagem "Sucesso"
    And user should see full_name with value "Bug Luna da Silva Agapito Correa"

