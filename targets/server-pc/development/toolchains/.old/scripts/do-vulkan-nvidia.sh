#!/bin/bash

PACKAGE_LIBNVIDIA_GL_470="libnvidia-gl-470"

function Process {
    apt                                     \
        install                             \
            --yes                           \
            --no-install-recommends         \
            --no-install-suggests           \
            "${PACKAGE_LIBNVIDIA_GL_470}"
}

Process $@
