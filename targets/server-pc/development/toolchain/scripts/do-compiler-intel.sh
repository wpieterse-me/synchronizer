#!/bin/bash

PACKAGE_SOURCE_INTEL_KEY_REMOTE_PATH="https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB"
PACKAGE_SOURCE_INTEL_BINARIES_REMOTE_PATH="deb https://apt.repos.intel.com/oneapi all main"

PACKAGE_ONEAPI_COMPILER_DPCPP="intel-oneapi-compiler-dpcpp-cpp"

function Process {
    wget \
        -O "/tmp/intel.gpg.key" \
        "${PACKAGE_SOURCE_INTEL_KEY_REMOTE_PATH}"

    apt-key \
        add \
        "/tmp/intel.gpg.key"

    rm \
        -f \
        "/tmp/intel.gpg.key"

    add-apt-repository \
        "${PACKAGE_SOURCE_INTEL_BINARIES_REMOTE_PATH}"

    apt                                         \
        install                                 \
            --yes                               \
            --no-install-recommends             \
            --no-install-suggests               \
            "${PACKAGE_ONEAPI_COMPILER_DPCPP}"
}

Process $@
