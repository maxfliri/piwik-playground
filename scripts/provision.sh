#!/bin/bash

apt-get update

export DEBIAN_FRONTEND=noninteractive

# general utility packages
apt-get install -y -qq curl
apt-get install -y -qq htop
apt-get install -y -qq vim
apt-get install -y -qq unzip

# packages required for Piwik
apt-get install -y -qq nginx-light
apt-get install -y -qq mysql-server
apt-get install -y -qq php5-fpm
apt-get install -y -qq php5-mysql
apt-get install -y -qq php5-gd

# install files
bash /vagrant/scripts/install-files.sh

# install piwik
bash /vagrant/scripts/install-piwik.sh

# restart services
service mysql restart
service php5-fpm restart
service nginx restart
