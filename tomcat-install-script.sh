#!/bin/bash

sudo apt-get update
#do apt-get install default-jdk
sudo apt-get install default-jdk
#create a new tomcat group
sudo groupadd tomcat
#create a new tomcat user. We'll make this user a member of the tomcat group
# with a home directory of /opt/tomcat (where we will install Tomcat), and 
#with a shell of /bin/false (so nobody can log into the account)
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
# the best way to intall tomcat, download the latest binary release and confiugre it manually
#latest stable version if it is available
# cpy tar.gz file from Binary Distributions under core list
# change to /tmp directory on your server
cd /tmp
# download latest stable tar.gz under core  list
curl -O http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0.1.tar.gz
#Install Tomcat to the /opt/tomcat directory. Create the directory, 
sudo mkdir -p /opt/tomcat
#extract the archive to it with these commands
sudo tar xzvf apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1
#set up the proper user permissions for our installation
# change directory 
cd /opt/tomcat
#tomcat group ownership
sudo chgrp -R tomcat /opt/tomcat
#give the tomcat group read access to the conf directory and all of its contents
sudo chmod -R g+r conf
#execute access to the directory itself
sudo chmod g+x conf
#Make the tomcat user the owner of the webapps, work, temp, and logs directories:
sudo chown -R tomcat webapps/ work/ temp/ logs/
#Create a systemd Service File
#We want to be able to run Tomcat as a service, so we will set up systemd service file.
# please follow the instruction
~
~

