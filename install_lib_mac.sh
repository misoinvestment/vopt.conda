#!/usr/bin/env bash

export PKG_CONFIG=/usr/local/bin/pkg-config
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/

sudo -s -- <<EOF
mkdir -p /usr/local/src
cd /usr/local/src
wget https://www.coin-or.org/download/source/Cbc/Cbc-2.8.9.tgz
tar -xzvf Cbc-2.8.9.tgz
cd Cbc-2.8.9
./configure
make
make install
make clean

mkdir -p /usr/local/src
cd /usr/local/src
wget ftp://ftp.gnu.org/gnu/glpk/glpk-4.62.tar.gz
tar -xzvf glpk-4.62.tar.gz
cd glpk-4.62
./configure
make
make install
make clean
EOF
