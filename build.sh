#!/bin/bash

docker rmi compiler-explorer
docker build -t compiler-explorer .

