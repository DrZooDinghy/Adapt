#!/usr/bin/env bash

echo "Installing node"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs

echo "Installing grunt"
sudo npm install -g grunt-cli

#echo "Installing FFMPEG"
#FFMPEG: not possible!
#sudo add-apt-repository ppa:mc3man/trusty-media  
#sudo apt-get update  
#sudo apt-get install ffmpeg  
#sudo apt-get install frei0r-plugins 


#MongoDB
echo "installing mongodb"
#https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] <https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0> multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt update
sudo apt-get install -y mongodb

#in case this doesnt work:
#sudo apt-get install -y mongodb-org
#sudo service mongod start

#Adapt
echo "Installing adapt learning authoring tool"
sudo git clone https://github.com/adaptlearning/adapt_authoring.git
cd adapt_authoring
sudo npm install --production
sudo npm audit fix
sudo node install

sudo node server
