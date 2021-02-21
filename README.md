# overline-node-dev

Rootless/unprivileged node for relaying blocks/transactions and/or mining on Overline blockchain.
Adds Overline node source as git module for easy code modification.

## Build

1. ```git submodule update --init --recursive```
2. ```docker-compose build``` will use the sources in ./ol-src to build a new Docker image containing the Overline node

To update the Overline node source to the latest tip of the remote branch: ```git submodule update --recursive --remote```

## Run

Running ```docker-compose up -d``` will start the Overline node in the background.
