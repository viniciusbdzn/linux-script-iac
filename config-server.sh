#!/bin/bash

echo "Atualizando servidor..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y


echo "Baixando e copiando arquivos da aplicação"
cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html/
