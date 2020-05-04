# Definimos como padrões para esse projeto:

## Linguagem de programação:

  - Javascript, escolhi essa linguagem pois tenho utilizado um pouco dela no atual emprego e acho que com ela conseguimos fazer bastante coisa em pouco tempo, antes estavamos utilizando kotlin.

## Como pattern:

  - Escolhi utilizar MVC.

## Download e instalação node e npm:

  - Para windowns e MacOS seguir tutorial: https://nodejs.org/en/download/current/
 
  - Pode utilizar também via linha de comando com o homebrew para mac: https://www.dyclassroom.com/howto-mac/how-to-install-nodejs-and-npm-on-mac-using-homebrew
 
  - Após acessar a pasta do projeto digitar npm install para instalar as dependências que estão no arquivo package.json.
 
## Rodar o projeto:
 
  - Digitar no console npm test para rodar todos os testes.
  - Digitar npm test -t Weather para rodar a funcionalidade.

## Valores a serem setados no .env

  - BASE_URL irá preencher com a url base ex: https://samples.openweathermap.org
  - APIKEY irá preencher com o key retornado na api, que é único.

Obs: Neste projeto deixei subir o arquivo .env mas na verdade se ele for rodar em uma pipeline o arquivo .env existirá dentro do servidor.
