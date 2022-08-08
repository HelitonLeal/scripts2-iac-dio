#!/bin/bash

echo "Atualizando arquivos do Servidor..."
  apt-get update 
  apt-get upgrade -y

echo "Instalando Apache..."
  apt-get install apache2 -y
echo "Apache Instalado!!"

echo "Instalando Unzip..."
  apt-get install unzip -y
echo "Unzip Instalado!!"

  cd /tmp

echo "Baixando arquivos do Repositório..."
  wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos.."
  unzip main.zip
  cd linux-site-dio-main
  cp -R * /var/www/html

echo "Servidor WEB Criado!!"
