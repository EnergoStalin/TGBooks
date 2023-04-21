#!/bin/bash

set -a; source .env; set +a;

echo Starting tgmount...
if [ -z "$VIRTUAL_ENV" ]; then
  poetry run bash mount.sh &
else
  bash mount.sh &
fi

while [ -z "$(ls Books)" ]; do
  sleep 1
done

date_str=$(cat .last)
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

echo Last sync $date_str
echo Now $timestamp 

cd Books
find . -type f -newermt "$date_str" -print0 |
    rsync -a -iv --files-from - --from0 \
      "${DASH_E[@]}" \
      "$PWD" \
      "$DESTINATION"
cd -
echo $timestamp > .last

fusermount -u Books