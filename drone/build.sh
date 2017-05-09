#!/bin/bash

GOOS=$(uname | tr A-Z a-z)
HASH=$(docker build -q .)
ID=$(docker create $HASH)
docker cp $ID:/go/src/github.com/drone/drone/release/$GOOS/amd64/drone ~/bin/drone
docker rm -v $ID
docker rmi $HASH
chmod +x ~/bin/drone
