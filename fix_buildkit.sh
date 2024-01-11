#!/bin/bash
#Set variables
HOST_ENTRY="192.168.0.202 registry registry.cube.local"
CERT="/root/docker-registry/registry.crt"

#get builder ID from docker
BUILDER=$(sudo docker ps | grep buildkitd | cut -f1 -d' ')

#Add certificates to docker container
sudo docker cp "$CERT" "$BUILDER":/usr/local/share/ca-certificates/ 2>/dev/null
sudo docker exec "$BUILDER" update-ca-certificates 2>/dev/null
sudo docker restart "$BUILDER" 2>/dev/null

sleep 5s

#get builder ID from docker
BUILDER=$(sudo docker ps | grep buildkitd | cut -f1 -d' ')
#use builder ID to inspect contaner and  grep host location
HOST=$(sudo docker inspect $BUILDER | grep HostsPath | cut -f4 -d'"')
#Add $HOST_ENTRY to $HOST at the end of file
echo "$HOST_ENTRY" >> "$HOST"
