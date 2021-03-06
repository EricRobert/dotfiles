#!/bin/bash

GOOS=$(uname | tr A-Z a-z)
echo os: $GOOS
HASH=$(docker build -q .)
echo image: $HASH
ID=$(docker create $HASH)
echo id: $ID
docker cp $ID:/go/src/github.com/drone/drone/release/$GOOS/amd64/. ~/bin/
docker rm -v $ID
docker rmi $HASH
