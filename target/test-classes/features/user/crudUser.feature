@crud
Feature: User CRUD

  Scenario: POST Criando novo usuario
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
    When Quando o cliente clicar em Salvar
    Then Tem que exibir a mensagem "Sucesso"


  Scenario: GET buscando o novo usuario
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
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
