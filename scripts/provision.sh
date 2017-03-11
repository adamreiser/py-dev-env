#!/bin/bash

apt-get update
apt-get -y dist-upgrade

# Support for shared directories
apt-get install -y virtualbox-guest-additions-iso virtualbox-guest-dkms

# General stuff
apt-get install -y git screen ctags

gem install ruby-zoom

# Need version with python support for YouCompleteMe
apt-get install -y vim-nox

# For building tome2
apt-get install -y autoconf sqlite3 libsqlite3-dev bison flex libncursesw5 libncursesw5-dev libncurses5-dev

apt-get install -y cmake build-essential libboost-all-dev libjansson-dev pkg-config

# Needed for YouCompleteMe's compiled component
apt-get install -y cmake libpython2.7-dev libpython3.5-dev

# Python development
apt-get install -y python-pip python3-pip virtualenv
pip install flake8
pip install setuptools --upgrade
pip3 install setuptools --upgrade
