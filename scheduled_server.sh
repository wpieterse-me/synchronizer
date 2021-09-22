#!/bin/bash

clear

. /shared/development/shared

# Build required toolchain images.
bash ${DEVELOPMENT_PATH}/images.sh

# Process each repository in step.
bash ${DEVELOPMENT_PATH}/process.sh

# Clean up unused Docker images.
docker \
    image \
    prune \
        --force
