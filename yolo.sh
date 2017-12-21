#!/bin/bash

# Install Google Chrome
sudo apt install google-chrome-stable

# Install Git
sudo apt-get install git
git config --global user.email "vivian.sarazin@gmail.com"
git config --global user.name "VivianSolide"

# Install Visual Studio Code
sudo dpkg -i vscode-amd64.deb

# Install Node, npm & express
sudo apt install nodejs
sudo apt install npm
sudo apt install node-express-generator

# Install Mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

# Install LAMP
sudo apt install apache2 php mariadb-server libapache2-mod-php php-mysql
sudo apt install php-curl php-gd php-intl php-json php-mbstring php-mcrypt php-xml php-zip

# Install Exiftool
sudo apt install libimage-exiftool-perl

# Install Mitmproxy
sudo apt-get install python3-dev python3-pip libffi-dev libssl-dev
sudo pip3 install mitmproxy

# Install Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Install Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Success
echo "Back in the game"
