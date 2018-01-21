#!/bin/bash

## SETTINGS
NETWORK_ID=4224
IPC_PATH="~/Library/ethereum/geth.ipc" # Creates an ipc file that lets Myst know there is a node already running
PWD_FILE="./password.sec"
PORT=30303
RPC_PORT=8545

## PROGRAM
# Mine for our coins
geth --networkid ${NETWORK_ID} --mine --datadir . --nodiscover --rpc --rpcport ${RPC_PORT} --port ${PORT} --rpccorsdomain "*" --nat "any" --rpcapi eth,web3,personal,net --unlock 1 --password ${PWD_FILE} --ipcpath ${IPC_PATH}