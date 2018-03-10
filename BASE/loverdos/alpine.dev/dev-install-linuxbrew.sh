#!/usr/bin/env bash

set -eux

# trick brew into believing there is no sudo,
# so as to install itself at home.
/usr/bin/sudo mv /usr/bin/sudo /usr/bin/sudo.sudo

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

# bring sudo back
/usr/bin/sudo.sudo mv /usr/bin/sudo.sudo /usr/bin/sudo
