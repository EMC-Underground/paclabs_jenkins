#!/bin/bash
LOGFILE=/tmp/script.log
touch $LOGFILE

apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update -y
apt install -y docker-ce docker-compose
mkdir /var/lib/paclabs_ && sudo cp /tmp/jenkins-compose.yml /var/lib/paclabs_ >> $LOGFILE 2>&1
docker-compose -f /var/lib/paclabs_/jenkins-compose.yml up -d >> $LOGFILE 2>&1
