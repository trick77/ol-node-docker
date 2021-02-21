# overline-node-dev

Rootless/unprivileged node for relaying blocks/transactions and/or mining on Overline blockchain.
Adds Overline node source as git module for easy code modification.

## Build

To update the Overline node source to the latest tip of the remote branch: ```git submodule update --recursive --remote```

Running ```docker-compose build``` will use the sources in ./overline-src to build a new Docker image containing the Overline node.

## Run

Running ```docker-compose up -d``` will start the Overline node in the background.
