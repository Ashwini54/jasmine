#!/bin/bash

echo "####INSTALLING NODE####"
echo "###Install required system dependencies ###"    
apt-get update -y
apt-get install --assume-yes git
apt-get install curl -y
# Using Debian, as root
curl -fsSL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get install g++ build-essential -y && \
    apt-get -qqy install -y nodejs && \

echo "###TESTING NPM VERSION###"
node --version
npm --version

echo "####INSTALL JAVA###"
apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install -y &&\
    apt-get install openjdk-8-jre openjdk-8-jdk -y &&\
    ca-certificates \
    tzdata \
    zip \
    unzip \
    curl \
    wget \
    libqt5webkit5 \
    libgconf-2-4 \
    xvfb \
    gnupg \
    salt-minion \
  && rm -rf /var/lib/apt/lists/*

echo "###TESTING JAVA###"
java -version

echo "##INSTALLING NODE##"
apt-get update && apt-get -y install sudo
sudo npm install

echo "##missing ping command##"
sudo apt update
sudo apt install iputils-ping

echo "##INSTALLING JASMINE##"
npm install --save-dev jasmine 
npm install -g jasmine
jasmine init 
npx jasmine init
jasmine examples

echo "####done####"
