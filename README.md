# overline-node-dev

Rootless/unprivileged node for relaying blocks/transactions and/or mining on Overline blockchain.
Adds source as git module for easy code modification/experiments.

## Build

Running ```docker-compose build``` will use the sources in ./overline-src to build a new Docker image containing the Overline node.

## Run

Running ```docker-compose up -d``` will start the Overline node in the background.
