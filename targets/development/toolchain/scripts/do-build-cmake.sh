#!/bin/bash

PACKAGE_NINJA_BUILD="ninja-build"
PACKAGE_CMAKE="cmake"

function Process {
    apt                                 \
        install                         \
            --yes                       \
            --no-install-recommends     \
            --no-install-suggests       \
            "${PACKAGE_NINJA_BUILD}"    \
            "${PACKAGE_CMAKE}"
}

Process $@
