#!/bin/bash

# RUN IN POETRY SHELL
if [ -z "$VIRTUAL_ENV" ]; then
  echo Need to be runned in poetry shell
  exit 1
fi

./tgmount mount-config ./config.yaml