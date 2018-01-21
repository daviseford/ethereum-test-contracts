#!/bin/bash

PRIVATE_DIR="./private"

echo 'Starting installation...'
echo '-----------'

brew update
brew tap ethereum/ethereum
brew install ethereum && brew upgrade ethereum
npm install -g ethereumjs-testrpc && npm update -g ethereumjs-testrpc
npm install -g truffle@3.4.11 # Older version to keep compatibility with course

# After setup
mkdir -p ${PRIVATE_DIR}
# Assuming genesis.json exists in ${PRIVATE_DIR}
geth --datadir ${PRIVATE_DIR} init genesis.json

# Create 3 accounts
geth --datadir ${PRIVATE_DIR} account new
geth --datadir ${PRIVATE_DIR} account new
geth --datadir ${PRIVATE_DIR} account new

# List accounts
geth --datadir ${PRIVATE_DIR} account list

# Start mining our chain instance (assumes we have password.sec)
# Call startnode
sh "${PRIVATE_DIR}/startnode.sh"





echo '-----------'
echo 'Done'