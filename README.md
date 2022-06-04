# Curso FullCycle - Desafio Docker

Desafio proposto ao final do módulo Docker do curso FullCycle 3.0 (https://fullcycle.com.br/)

## Desafio
  1. Publicar uma imagem no docker hub e ao executar "docker run seu-user/imagem" temos que ter o seguinte resultado: Full Cycle Rocks!
  2. A imagem do projeto Go precisa ter menos de 2MB

## Instruções
  Para rodar a imagem a partir do Docker Hub basta executar: docker run nathanreys/desafiogo
  
  Para criar a imagem a partir no seu ambiente local (necessário instalação prévia do 'git' e do 'docker'
  1. Clone o repositório: git clone https://github.com/nathanreys/fullcycle-docker-desafiogo.git
  2. Acesse o repositório clonado "fullcycle-docker-desafiogo"
  3. Gere sua imagem: docker build -t nome-da-sua-imagem .
  4. Execute seu container: docker run --rm nome-da-sua-imagem
  
  
