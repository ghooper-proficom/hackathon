#!/bin/bash

echo 'Stopping containers'
podman-compose -f ./wordpress/docker-compose.yaml down

podman-compose -f ./nextcloud/docker-compose.yaml down

podman-compose -f ./gitea/docker-compose.yaml down

podman-compose -f ./wiki/docker-compose.yaml down

echo 'Starting containers'
podman-compose -f ./wordpress/docker-compose.yaml up --detach

podman-compose -f ./nextcloud/docker-compose.yaml up --detach

podman-compose -f ./gitea/docker-compose.yaml up --detach

podman-compose -f ./wiki/docker-compose.yaml up --detach

echo 'All container up :)'
