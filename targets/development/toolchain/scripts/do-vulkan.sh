#!/bin/bash

PACKAGE_SOURCE_LUNARG_KEY_REMOTE_PATH="https://packages.lunarg.com/lunarg-signing-key-pub.asc"
PACKAGE_SOURCE_LUNARG_BINARIES_REMOTE_PATH="deb https://packages.lunarg.com/vulkan/1.2.189 focal main"

PACKAGE_LIBVULKAN1="libvulkan1"
PACKAGE_VULKAN_SDK="vulkan-sdk"
PACKAGE_VULKAN_TOOLS="vulkan-tools"

function Process {
    wget \
        -O "/tmp/lunarg.gpg.key" \
        "${PACKAGE_SOURCE_LUNARG_KEY_REMOTE_PATH}"

    apt-key \
        add \
        "/tmp/lunarg.gpg.key"

    rm \
        -f \
        "/tmp/lunarg.gpg.key"

    add-apt-repository \
        "${PACKAGE_SOURCE_LUNARG_BINARIES_REMOTE_PATH}"

    apt                                 \
        install                         \
            --yes                       \
            --no-install-recommends     \
            --no-install-suggests       \
            "${PACKAGE_LIBVULKAN1}"     \
            "${PACKAGE_VULKAN_SDK}"     \
            "${PACKAGE_VULKAN_TOOLS}"
}

Process $@
