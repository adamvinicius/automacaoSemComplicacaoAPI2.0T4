package steps;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import io.restassured.http.ContentType;
import maps.FilmesMaps;
import utils.RestUtils;

public class FilmeSteps {

    @Dado("que tenha um payload valido da API de Filme")
    public void queTenhaUmPayloadValidoDaAPIDeFilme() {
        FilmesMaps.initAll();
    }
    @Quando("realizo uma requisicao do tipo POST de Filme")
    public void realizoUmaRequisicaoDoTipoPOSTDeFilme() {
        RestUtils.post(FilmesMaps.getHeader(), FilmesMaps.getFilme(), ContentType.JSON, "filmes");
    }
    @Entao("armazeno o id que recebo do reponse de Filme")
    public void armazenoOIdQueReceboDoReponseDeFilme() {
        FilmesMaps.id = RestUtils.getResponse().jsonPath().get("id");
    }


    @Quando("realizo uma requisicao do tipo GET de Filme atraves do nome")
    public void realizoUmaRequisicaoDoTipoGETDeFilmeAtravesDoNome() {

    }
}
