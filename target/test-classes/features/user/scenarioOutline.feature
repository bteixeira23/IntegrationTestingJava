@outline
Feature: User Outline

  Scenario: POST Criando novo usuario
    Given Cliente quer criar um novo usuario
    And Login tem que ser "james"
    And Tem que ter o nome "Jamesson Sena"
    And Tem que ter o email "jamesson@hotmail.com"
    And Sua idade tem que ser "28"
    When Quando o cliente clicar em "save"
    Then Tem que exibir a mensagem "Sucesso"
