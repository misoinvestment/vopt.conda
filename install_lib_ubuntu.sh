#!/usr/bin/env bash

DEBIAN_FRONTEND=noninteractive sudo apt-get update -y -q
DEBIAN_FRONTEND=noninteractive sudo apt-get upgrade -y -q
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y -q \
     apparmor \
     apt-file \
     autoconf \
     automake \
     build-essential \
     cmake \
     curl \
     default-jdk \
     default-jre \
     dos2unix \
     emacs24 \
     gdebi-core \
     gettext \
     gfortran \
     git \
     htop \
     libapparmor1 \
     libatlas-base-dev \
     libboost-all-dev \
     libclang-dev \
     libclang1 \
     libcupti-dev \
     libcurl4-gnutls-dev \
     libevent-dev \
     libgdal-dev \
     libgeos-dev \
     libgflags-dev \
     libgl1-mesa-glx \
     libgoogle-glog-dev \
     libgtest-dev \
     libiomp-dev \
     libjpeg-dev \
     libleveldb-dev \
     liblmdb-dev \
     libopencv-dev \
     libpgm-dev \
     libpng++-dev \
     libpng-dev \
     libpng12-dev \
     libpq-dev \
     libprotobuf-dev \
     libspatialindex-dev \
     libssh2-1-dev \
     libssl-dev \
     libtiff5-dev \
     libtool \
     make \
     man \
     memcached \
     mercurial \
     ncdu \
     net-tools \
     nginx \
     openssh-server \
     openssl \
     pkg-config \
     postgresql \
     postgresql-contrib \
     protobuf-compiler \
     rsyslog \
     screen \
     software-properties-common \
     sudo \
     supervisor \
     swig \
     tmux \
     uuid-dev \
     vim \
     wget \
     zip unzip bzip2 \
    && echo
DEBIAN_FRONTEND=noninteractive sudo apt-get -y -q autoremove
DEBIAN_FRONTEND=noninteractive sudo apt-get -y -q clean
