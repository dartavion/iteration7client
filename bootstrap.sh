#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# enable multiverse
sudo sed -i "/^# deb.*multiverse/ s/^# //" /etc/apt/sources.list

apt-get update
apt-get -y upgrade
apt-get -y install build-essential openssl libreadline6 libreadline6-dev curl \
                   git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 \
                   libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev \
                   ncurses-dev automake libtool bison
apt-get -y install python-software-properties python g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get -y install ruby1.9.3 nodejs nginx
apt-get -f -y install 

gem install bundler
gem install compass

npm install -g yo
