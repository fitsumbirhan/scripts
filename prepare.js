#!/bin/bash
sudo rm -rf /usr/local/mongodb/data
sudo rm -rf /usr/local/mongodb/mongodb.log
sudo rm -rf /usr/local/mongodb/mongod.id
sudo mkdir -p /usr/local/mongodb/data
sudo chown -R derashdb:derashdb /usr/local/mongodb
