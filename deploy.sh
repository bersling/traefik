#!/usr/bin/env bash

server=ubuntu@18.196.229.25

scp -r ./src $server:~
ssh $server "sudo docker stack deploy -c ./src/docker-compose.yml traefik"

