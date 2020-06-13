@outline
Feature: User Outline

  Scenario Outline: Salve um usuario com post teste
    Given Cliente quer criar um novo usuario
    And Informar o login com valor "james"
    And Informar o full_name com valor "jamesson"
    And Informar o email com valor "jamesson@hotmail.com"
    And Informar o age com valor "123"
    When Quando o cliente clicar em Salvar
    Then Tem que exibir a mensagem "<response>"

    Examples:
      |response  |
      |Sucesso   |