#!/bin/bash

sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install tcl8.5 -y
wget http://download.redis.io/releases/redis-2.8.9.tar.gz
tar xzf redis-2.8.9.tar.gz
cd redis-2.8.9
make
make test
sudo make install
cd utils
sudo ./install_server.sh