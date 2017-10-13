#!/bin/bash
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
