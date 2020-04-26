#!/bin/sh

sudo apt-get update
sudo apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade

# Packer installation 
sudo wget https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip
sudo apt-get install unzip 
sudo unzip packer_1.5.5_linux_amd64.zip
sudo rm -r packer_1.5.5_linux_amd64.zip

# Edit the bash profil
sudo echo 'export PATH="$PATH:~"' >> .profile 
