#!/usr/bin/env sh

set -e
# build protoc
# https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
apt-get update
apt-get install -y autoconf automake libtool curl make g++ unzip
wget https://github.com/protocolbuffers/protobuf/archive/v3.13.0.tar.gz && tar -xzvf v3.13.0.tar.gz
cd ./protobuf-3.13.0
./autogen.sh
./configure
make
make install
ldconfig
protoc --version
cd ../ && rm -rf protobuf
