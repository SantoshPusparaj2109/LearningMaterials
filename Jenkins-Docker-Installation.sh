#!/bin/bash
#Installing Jenkins
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
#Installing Docker
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
id ec2-user
newgrp docker
#Installing Docker Compose
sudo yum install python3-pip
sudo pip3 install docker-compose
pip3 install --user docker-compose
sudo systemctl enable docker.service
sudo systemctl start docker.service
#Installing Git and Maven
sudo yum install git -y
sudo yum install maven -y
