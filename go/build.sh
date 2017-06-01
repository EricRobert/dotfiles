#!/bin/bash

GOOS=$(uname | tr A-Z a-z)
echo os: $GOOS
FILE=$(sed s/\$GOOS/$GOOS/ < Dockerfile)
HASH=$(echo "$FILE" | docker build -q -)
echo image: $HASH
ID=$(docker create $HASH)
echo id: $ID

if [ "${GOOS}" == "linux" ]; then
    docker cp $ID:/go/bin/. ~/bin/
else
    docker cp $ID:/go/bin/${GOOS}_amd64/. ~/bin/
fi

docker rm -v $ID
docker rmi $HASH
