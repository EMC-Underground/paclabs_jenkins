#!/bin/bash

apt update --assume-yes
apt upgrade --assume-yes
apt install docker.io --assume-yes
apt install ansible --assume-yes
docker run --name PacLabsJenkins -p 80:80 -p 50000:50000 -v /var/jenkins_home jenkins