#!/bin/bash

# First, get all the system updates to ensure installation goes smoothly
echo "Updating system"
sudo apt-get update

# Install pip3 for python so extra packages can be installed
# Also verify that screen and git are installed
echo "Installing necessary programs"
sudo apt install python3-pip screen git geoip-bin

# pip install the requests module
echo "Installing requests package"
pip3 install requests

# Create the tls_outputs directory, this is where all output will be redirected to
echo "Creating tls_outputs directory"
mkdir tls_outputs

echo "Setup Complete. Happy TLS Scanning ;)"