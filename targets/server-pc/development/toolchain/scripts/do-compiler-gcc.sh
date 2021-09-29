#!/bin/bash

PACKAGE_GCC_10="gcc-10"
PACKAGE_GPP_10="g++-10"

function Process {
    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_GCC_10}"     \
            "${PACKAGE_GPP_10}"
}

Process $@
