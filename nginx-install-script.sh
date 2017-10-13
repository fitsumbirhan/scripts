#!/bin/bash
echo "=======Install nginx on ubuntu 16.04 ================"
#install nginx
sudo apt-get update
sudo apt-get install nginx
#allow both http and https
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPs'
#systemctl start nginx
sudo systemctl start nginx
#systemctl status of nginx
sudo systemctl enable nginx
#systemctl status of nginx
sudo systemctl status nginx
