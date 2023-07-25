#!/bin/sh

if ! [[ -z "$(ls "$MOUNT_DIR")" ]]; then
  exit 0;
else
  exit 1;
fi