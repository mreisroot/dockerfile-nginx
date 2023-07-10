#!/bin/bash

# Solicitar o nome do usuário no Docker Hub
printf "Digite o seu nome de usuário no Docker Hub: "
read -r username

# Nome da imagem
imgname=${username}/viacep

# Build da imagem
docker image build -t "${imgname}" .

# Efetuar login no Docker Hub
docker login -u "${username}"

# Enviar a imagem para o Docker Hub
docker image push "${imgname}"

# Executar um container com a nova imagem
docker container run -dp 8080:80 "${imgname}"
