#!/bin/bash

# Update the system
sudo apt update

# Install Java Development Kit (JDK)
sudo apt install -y openjdk-11-jdk

# Add the Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to the system
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the system again
sudo apt update

# Install Jenkins
sudo apt install -y jenkins
