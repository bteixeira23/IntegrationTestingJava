package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import definition.AgapitoServer;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

public class MyStepdefs {
    @cucumber.api.java.en.Given("^Cliente quer criar um novo usuario$")
    public void clienteQuerCriarUmNovoUsuario() {
        AgapitoServer.clearFields();
    }

    @And("^Informar o (.*) com valor \"([^\"]*)\"$")
    public void loginTemQueSer(String field, String value) throws Throwable {
        AgapitoServer.addFields(field, value);
    }

    @When("^Quando o cliente clicar em Salvar$")
    public void quandoOClienteClicarEmSalvar() {
        RESTSupport.executePost(AgapitoServer.getEndPoint(),AgapitoServer.getFields());
        AgapitoServer.setLastUser(RESTSupport.key("id").toString());
        AgapitoServer.clearFields();
    }

    @And("^usuario teve ver o (.*) com valor \"([^\"]*)\"$")
    public void usuarioTeveVerOLoginComValor(String key, String value) throws Throwable {
        Assert.assertEquals(value, RESTSupport.key(key));  }
}
