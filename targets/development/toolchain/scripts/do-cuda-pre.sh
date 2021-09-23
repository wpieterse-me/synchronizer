#!/bin/bash

PACKAGE_SOURCE_CUDA_KEY_REMOTE_PATH="https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub"
PACKAGE_SOURCE_CUDA_BINARIES_REMOTE_PATH="deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64 /"

PACKAGE_CUDA_CUDART="cuda-cudart-11-4"
PACKAGE_CUDA_COMPAT="cuda-compat-11-4"

function Process {
    wget \
        -O "/tmp/cuda.gpg.key" \
        "${PACKAGE_SOURCE_CUDA_KEY_REMOTE_PATH}"

    apt-key \
        add \
        "/tmp/cuda.gpg.key"

    rm \
        -f \
        "/tmp/cuda.gpg.key"

    add-apt-repository \
        "${PACKAGE_SOURCE_CUDA_BINARIES_REMOTE_PATH}"

    apt                                 \
        install                         \
            --yes                       \
            --no-install-recommends     \
            --no-install-suggests       \
            "${PACKAGE_CUDA_CUDART}"    \
            "${PACKAGE_CUDA_COMPAT}"

    ln -s cuda-11.4 /usr/local/cuda
}

Process $@
