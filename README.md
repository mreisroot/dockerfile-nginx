# Container personalizado do VIACEP

## Introdução

Neste projeto, há a criação de um container Docker com uma imagem de container personalizada baseada no Nginx, que servirá a API do [VIACEP](https://viacep.com.br/exemplo/jquery/).

Em outras palavras, há a criação de um container com a aplicação já implantada no servidor Nginx.

As instruções de criação da imagem se encontram no arquivo [Dockerfile](./Dockerfile).

O script [provision.sh](./provision.sh) irá solicitar o seu nome de usuário no Docker Hub, criará uma imagem rotulando-a no padrão nome-de-usuário/nome-da-imagem, enviará a imagem criada para o Docker Hub e criará um container com tal imagem.

## Como usar este projeto

Torne o script provision.sh executável:

`chmod 755 provision.sh`

Execute o script:

`./provision.sh`

Para acessar a aplicação web, digite na barra de pesquisa de um navegador de internet:

`localhost:8080`
