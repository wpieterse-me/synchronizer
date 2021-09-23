#!/bin/bash

PACKAGE_MAKE="make"

function Process {
    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_MAKE}"
}

Process $@
