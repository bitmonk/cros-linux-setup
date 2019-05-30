#!/bin/sh

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg \

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#apt-add-repository -y ppa:ansible/ansible

sudo apt-get update

sudo apt-get install -y htop tmux python3-virtualenv python3-pip golang php composer code docker-ce ansible cmake qemu file iputils-ping awscli

curl -O https://packages.chef.io/files/stable/chefdk/3.1.0/debian/9/chefdk_3.1.0-1_amd64.deb
sudo dpkg -i chefdk_3.1.0-1_amd64.deb

git config --global user.email "justin.alan.ryan@gmail.com"
git config --global user.name "Justin Alan Ryan"
cp -r bin ~/bin
