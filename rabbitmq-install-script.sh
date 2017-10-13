#!/bin/bash

echo "================installing Erlang======================"
sudo apt-get update -y
wget http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc sudo apt-key add erlang_solutions.asc 
sudo apt-get update -y 
sudo apt-get install erlang -y 
sudo apt-get install erlang-nox -y
echo "================installing RabbitMQ======================"
#add rabbitmq repository to apt
sudo echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
#add the RabbitMQ public key to our trusted key list to avoid any warnings about unsigned packages
wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc sudo apt-key add rabbitmq-signing-key-public.asc
#Next update the apt repository
sudo apt-get update
#install rabbitmq
sudo apt-get install rabbitmq-server
#start the rabbitmq server and enable it to start on boot by running the following command:
sudo systemctl start rabbitmq-server 
sudo systemctl enable rabbitmq-server
#check status of rabbitmq
sudo systemctl status rabbitmq-server
#install mangement plugin
sudo rabbitmq-plugins enable rabbitmq_management
#create a new admin user
while getopts u:p: option
do 
  case "${option}"
  in 
  u) username=${OPTARG};;
  p) password=${OPTARG};;
  esac
done
sudo rabbitmqctl add_user $username $password 
sudo rabbitmqctl set_user_tags $username administrator 
sudo rabbitmqctl set_permissions -p / $username ".*" ".*" ".*"
#completed
echo "====installation completed successfully===="
