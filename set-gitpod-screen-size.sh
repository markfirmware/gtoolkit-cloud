#!/bin/bash
set -x

sudo sed -i s/1200x900/$1/ /usr/bin/start-vnc-session.sh
sudo killall Xvfb
echo please source ~/.bashrc
