#!/bin/bash

clear

# Make sure latest changes are brought in.
docker-compose \
    --file /shared/content/compose.yaml \
    up \
        --force-recreate \
        --build \
        --detach

# Clean up unused images.
docker \
    image \
    prune \
        --force
