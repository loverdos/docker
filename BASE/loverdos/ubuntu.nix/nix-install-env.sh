#!/usr/bin/env bash

set -eux

cd ~ \
&& git clone https://github.com/loverdos/nix.git \
&& cd nix \
&& nix-env -v -iA install -f default.nix