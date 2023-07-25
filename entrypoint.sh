#!/bin/sh

mkdir -p audiobooks
tgmount mount-config --mount-dir "$MOUNT_DIR" config.yaml

# node index.js