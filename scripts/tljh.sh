#!/bin/sh
# Getting The Littlest JupyterHub, A simple JupyterHub distribution
# for a small (0-100) number of users on a single server.
# More details at: https://tljh.jupyter.org/
sudo update-ca-certificates
sudo killall -9 apt-get
sudo dpkg --configure -a
sudo apt-get update

wget https://tljh.jupyter.org/bootstrap.py
sudo python3 bootstrap.py --admin superadmin
