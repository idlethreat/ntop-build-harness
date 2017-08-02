#!/bin/bash

# ntopng build harness for Raspberry Pi (and Ubuntu)

## Set build directory
BUILD="/tmp/ntop"

## Setup packages

### normal system stuff
sudo apt-get update && apt-get upgrade -y
### all build requirement
sudo apt-get install build-essential git bison flex libglib2.0 libxml2-dev libpcap-dev libtool rrdtool librrd-dev autoconf automake autogen redis-server wget libsqlite3-dev libhiredis-dev libgeoip-dev libcurl4-openssl-dev libpango1.0-dev libcairo2-dev libpng12-dev libmysqlclient-dev libnetfilter-queue-dev libmysqlclient-dev zlib1g-dev libzmq3-dev libssl-dev ethtool -y

## Prep build directory
mkdir $BUILD
cd $BUILD

## Download and build packages

### Download and make ndpi
cd $BUILD
git clone https://github.com/ntop/nDPI.git
cd nDPI
./autogen.sh
./configure
make

### Download and make ntopng
cd $BUILD
git clone https://github.com/ntop/ntopng.git
cd ntopng
./autogen.sh
./configure --prefix=/opt/ntopng
make geoip && make && make install

## misc setting after install

### disable ipv6
echo "net.ipv6.conf.eth1.disable_ipv6=1" >> /etc/sysctl.conf
sysctl --system
