#!/bin/bash

PACKAGE_XSERVER_XORG_CORE="xserver-xorg-core"
PACKAGE_OPENBOX="openbox"
PACKAGE_XINIT="xinit"
PACKAGE_SLIM="slim"

function Process {
    apt                                     \
        install                             \
            --yes                           \
            --no-install-recommends         \
            --no-install-suggests           \
            "${PACKAGE_XSERVER_XORG_CORE}"

    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_OPENBOX}"

    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_XINIT}"

    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_SLIM}"
}

Process $@
