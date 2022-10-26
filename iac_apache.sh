#!/bin/bash

echo "Verificando atualizações"
apt-get update

echo "Fim da verificação, efetuando atualizações"
apt-get upgrade -y

echo "Atualizações realizadas"

echo "Instalando dependências" 
apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo download da aplicação e redirecionando ao diretório"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/	
cp -r * /var/www/html/

echo "Finalizado"
