#!/bin/bash

sudo apt -y remove git
sudo apt -y install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev autoconf asciidoc xmlto docbook2x make gcc


wget https://github.com/git/git/archive/v2.15.1.tar.gz
tar -zxf v2.15.1.tar.gz

cd git-2.15.1
make configure
./configure --prefix=/usr

make all doc info
sudo make install install-doc install-html install-info

git --version
