#!/bin/bash

apt-get update >/dev/null

packages=("isc-dhcp-server")

for package in "${packages[@]}"; do
    # Check if the package is installed
    if ! dpkg -l | grep -q "$package"; then
        echo "$package is not installed. Installing it now..."
        apt-get install "$package" -y
    else
        echo "$package is already installed."
    fi
done
