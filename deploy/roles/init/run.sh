#!/bin/sh
export TZ=Australia/Melbourne
sudo su root -c "ln -snf /usr/share/zoneinfo/$TZ /etc/localtime"
sudo su root -c "echo $TZ > /etc/timezone"
sudo su root -c "dpkg-reconfigure -f noninteractive tzdata"

sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get upgrade

sudo apt-get -y install git
sudo apt-get -y install vim
sudo apt-get -y install jq
sudo apt-get -y install htop
sudo apt-get -y install tree
sudo apt-get install -y postgresql-client
