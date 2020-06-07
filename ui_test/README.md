# Definimos como padrões para esse projeto:

## Linguagem de programação:

 - Ruby: Escolhi está linguagem pois acredito que a curva de aprendizado é bem rápida.

## Linguagem de escrita dos cenários de teste: Gherkin-pt utilizando junto com a ferramenta Cucumber.

Design Pattern: PageObject - https://martinfowler.com/bliki/PageObject.html

## Download/instalação Ruby:

- No link abaixo poderemos ver como faremos a instalação do Ruby em diversos OS.

https://www.ruby-lang.org/pt/documentation/installation/

## Passos após realizar a instalação do Ruby:

Instalando o Bundler:
O bundler é nossa gema que gerencia as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Para você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

  - gem install bundler

O comando abaixo irá realizar o download e instalação de todas as gemas do arquivo GemFile, então entre no projeto e digite:

  - bundle install


## Realizar o download do chromedriver e geckodriver nos respectivos sites, e colocar os arquivos dentro da pasta Ruby25-x64/bin.... Obs: o chrome headless (chrome sem interface, mas tira print screen do mesmo jeito, é muito utilizado para CI, que o servidor não tem uma interface) já vem baixado automaticamente junto com o chromedriver. Para MacOS colocar os driver's /usr/local/bin.

  - http://chromedriver.chromium.org/downloads
  - https://github.com/mozilla/geckodriver/releases

## Executando testes:
Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

cucumber: comando que inicia execução dos casos de teste.

Possibilidades de browser configurados, chrome, chrome_headless e firefox.
- chrome=true: sinaliza que desejo executar os testes somente no navegador Chrome.(É possível configurar os outros navegadores no arquivo: ..\features\support\hooks.rb)

Rodar por feature, passar o caminho, Ex:

features/feature_xxxxxx.feature

Rodar utilizando as tags:

-t @botoes_iframe


# Exemplos de comando completo, não é necessário passar todos esses parâmetros, apenas cucumber pois o chrome=true está como default.
## Roda apenas a feature especifica.
  cucumber chrome=true features\arquivo.feature
## Roda todos os cenarios com a tag botoes_iframe no browser chrome e ambiente de dev.
  cucumber chrome=true -t @tag_criada

## Adicionar 2 informações no arquivo data/data.yml para conseguir rodar o projeto.

Email.
Senha.
