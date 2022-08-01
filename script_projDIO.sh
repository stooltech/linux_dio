#!/bin/bash

#Primeiro passo instalar aplicativos

echo "Instalando aplicativos necessários..."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

#segundo passo abrir pasta TMP, baixar o site e descompactar na pasta do Apache

echo "Baixando e instalando o site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /tmp/linux-site-dio-main
cp -R * /var/www/html




