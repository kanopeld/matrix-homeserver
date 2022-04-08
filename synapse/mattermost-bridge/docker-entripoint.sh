#!/usr/bin/env bash

if [ ! -f /data/config.yaml ]; then
  echo 'Config file not found.'
  echo 'Creating one for you.'
  cp config.sample.yaml /data/config.yaml
  echo 'Done!'
  exit 0
fi

if [ -f /data/config.yaml ] && [ ! -f /data/registration.yaml ]; then
    echo 'Registration file not found.'
    echo 'Creating one for you.'
    node build/index.js -c /data/config.yaml -f /data/registration.yaml -r
    echo 'Done!'
    echo 'Now you should refer to this "registration.yaml" config in your "homeserver.yaml" config.'
    exit 0
fi

echo 'Starting the app!'
node build/index.js -c /data/config.yaml -f /data/registration.yaml
