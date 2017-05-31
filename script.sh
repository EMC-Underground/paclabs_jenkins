#!/bin/bash
touch /tmp/baldie.log

apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update -y
apt install -y docker-ce
curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" >> /tmp/baldie.log 2>&1
chmod +x /usr/local/bin/docker-compose /tmp/baldie.log 2>&1
mkdir /var/lib/paclabs_ && sudo cp /tmp/jenkins-compose.yml /var/lib/paclabs_ >> /tmp/baldie.log 2>&1
docker-compose -f /var/lib/paclabs_/jenkins-compose.yml up -d >> /tmp/baldie.log 2>&1
