#!/bin/bash

echo 'Starting installation...'
echo '-----------'

brew update
brew tap ethereum/ethereum
brew install ethereum && brew upgrade ethereum
npm install -g ethereumjs-testrpc && npm update -g ethereumjs-testrpc
npm install -g truffle@3.4.11 # Older version to keep compatibility with course

echo '-----------'
echo 'Done'