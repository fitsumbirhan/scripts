echo -----------------------------------------------------------------
echo -                    Mongo - Ubuntu 16.04                       -
echo -----------------------------------------------------------------

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6


echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

#If you want to install a specific version
#apt-get install mongodb-org=3.4.0 mongodb-org-server=3.4.0 mongodb-org-shell=3.4.0 mongodb-org-mongos=3.4.0 mongodb-org-tools=3.4.0
#Pin the version to a specific version to top it updating automatically
#echo "mongodb-org hold" | sudo dpkg --set-selections
#echo "mongodb-org-server hold" | sudo dpkg --set-selections
#echo "mongodb-org-shell hold" | sudo dpkg --set-selections
#echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
#echo "mongodb-org-tools hold" | sudo dpkg --set-selections

#This is to install the latest stable version
sudo apt-get install -fy mongodb-org

echo -----------------------------------------------------------------
echo -                    Mongo - Ubuntu 16.04                       -
echo -----------------------------------------------------------------
echo -----------------------------------------------------------------
echo -                    Mongo - Ubuntu 16.04                       -
echo -----------------------------------------------------------------

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6


echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

#If you want to install a specific version
#apt-get install mongodb-org=3.4.0 mongodb-org-server=3.4.0 mongodb-org-shell=3.4.0 mongodb-org-mongos=3.4.0 mongodb-org-tools=3.4.0
#Pin the version to a specific version to top it updating automatically
#echo "mongodb-org hold" | sudo dpkg --set-selections
#echo "mongodb-org-server hold" | sudo dpkg --set-selections
#echo "mongodb-org-shell hold" | sudo dpkg --set-selections
#echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
#echo "mongodb-org-tools hold" | sudo dpkg --set-selections

#This is to install the latest stable version
sudo apt-get install -y mongodb-org
