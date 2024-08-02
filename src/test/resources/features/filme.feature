#language:pt
@filme
Funcionalidade: CRUD Filme

  @cadastroFilme
  Cenario: Cadastro Filme
    Dado que tenha realizado o login com dados validos
    E que tenha um payload valido da API de Filme
    Quando realizo uma requisicao do tipo POST de Filme
    Entao valido que recebo status 201 no response
    E valido que no campo "categorias.tipo[1]" possui o valor "Comedia"
    E armazeno o id que recebo do reponse de Filme

  Cenario: Consulta Filme
    Dado que tenha realizado o login com dados validos
    E que tenha um payload valido da API de Filme
    Quando realizo uma requisicao do tipo GET de Filme atraves do nome
    Entao valido que recebo status 200 no response
    E valido que no campo "categorias[0].tipo[1]" possui o valor "Comedia"

  Cenario: Alteracao Filme
    Dado que tenha realizado o login com dados validos
    E que tenha um payload valido da API de Filme
    E altero o indice 1 da lista de categorias de filme com os valores
      |tipo|Terror|
    Quando realizo uma requisicao do tipo PUT de Filme
    Entao valido que recebo status 200 no response
    E valido que no campo "categorias.tipo[1]" possui o valor "Terror"

  Cenario: Consulta Filme Alteracao
    Dado que tenha realizado o login com dados validos
    E que tenha um payload valido da API de Filme
    Quando realizo uma requisicao do tipo GET de Filme atraves do nome
    Entao valido que recebo status 200 no response
    E valido que no campo "categorias[0].tipo[1]" possui o valor "Terror"
