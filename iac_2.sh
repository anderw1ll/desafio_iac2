#!/bin/bash

sudo apt-get update
sudo apt-get install -y apache2 unzip
sudo systemctl start apache2
sudo systemctl enable apache2
sudo ufw allow in "Apache Full"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/site.zip
unzip /tmp/site.zip -d /tmp
sudo cp -r /tmp/linux-site-dio-main/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Apache instalado, adicionado regras de firewall, efetuado download da aplicação e ajustado para rodar no diretório padrão"
