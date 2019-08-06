#!/bin/sh

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

DISTRO=ubuntu

export DEBIAN_FRONTEND=noninteractive

${SUDO} apt-get update

${SUDO} apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg \

curl -fsSL https://download.docker.com/linux/${DISTRO}/gpg | ${SUDO} apt-key add -
${SUDO} add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/${DISTRO} \
   $(lsb_release -cs) \
   stable"

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
${SUDO} mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
${SUDO} sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#apt-add-repository -y ppa:ansible/ansible

${SUDO} apt-get -y install apt-transport-https lsb-release ca-certificates
${SUDO} wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

if [ "${DISTRO}" = "debian" ]; then
  ${SUDO} sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
elif [ "${DISTRO}" = "ubuntu" ]; then
  ${SUDO} add-apt-repository ppa:ondrej/php -y
fi

${SUDO} apt-get update

${SUDO} apt-get install -y htop tmux python3-virtualenv python3-pip golang php7.2-cli php7.2-curl composer code docker-ce ansible cmake qemu file iputils-ping awscli strace lsof unison dnsutils

${SUDO} apt-get install -y php7.2-apcu php7.2-mysql php7.2-redis php7.2-sqlite3 php7.2-xml php7.2-mbstring php7.2-intl php7.2-bcmath 

#if [ ! -f chefdk_3.1.0-1_amd64.deb ]; then
#  curl -O https://packages.chef.io/files/stable/chefdk/3.1.0/debian/9/chefdk_3.1.0-1_amd64.deb;
#  ${SUDO} dpkg -i chefdk_3.1.0-1_amd64.deb;
#fi

git config --global user.email "justin.alan.ryan@gmail.com"
git config --global user.name "Justin Alan Ryan"
cp -r bin ~/bin

