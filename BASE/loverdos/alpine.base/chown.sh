#!/bin/sh

set -eux

sudo chown -R $PLAIN_USER:$PLAIN_USER "$@"
