#!/bin/bash

apt-get update
apt-get -y dist-upgrade

apt-get install -y git screen

# Need version with python support for YouCompleteMe
apt-get install -y vim-nox

apt-get install -y virtualenv

apt-get install -y python-pip python3-pip virtualenv

# Needed for YouCompleteMe's compiled component
apt-get install -y cmake libpython2.7-dev libpython3.4-dev

pip install flake8
pip install setuptools --upgrade
pip3 install setuptools --upgrade
