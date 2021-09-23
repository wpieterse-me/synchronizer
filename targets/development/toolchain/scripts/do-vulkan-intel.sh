#!/bin/bash

PACKAGE_MESA_VULKAN_DRIVERS="mesa-vulkan-drivers"

function Process {
    apt                                     \
        install                             \
            --yes                           \
            --no-install-recommends         \
            --no-install-suggests           \
            "${PACKAGE_MESA_VULKAN_DRIVERS}"
}

Process $@
