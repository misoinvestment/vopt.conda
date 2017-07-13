#!/usr/bin/env bash

sudo -s -- <<EOF
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

export GLPK_LIB_DIR=/usr/local/lib
export GLPK_INC_DIR=/usr/local/include
export BUILD_GLPK=1
