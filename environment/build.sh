#!/bin/bash

docker rmi compiler-explorer-environment
docker build -t compiler-explorer-environment .
