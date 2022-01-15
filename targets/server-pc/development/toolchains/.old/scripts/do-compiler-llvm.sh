#!/bin/bash

PACKAGE_SOURCE_LLVM_KEY_REMOTE_PATH="https://apt.llvm.org/llvm-snapshot.gpg.key"
PACKAGE_SOURCE_LLVM_BINARIES_REMOTE_PATH="deb http://apt.llvm.org/focal/ llvm-toolchain-focal-13 main"

PACKAGE_CLANG_13="clang-13"
PACKAGE_CLANG_FORMAT_13="clang-format-13"
PACKAGE_LLD_13="lld-13"

function Process {
    wget \
        -O "/tmp/llvm.gpg.key" \
        "${PACKAGE_SOURCE_LLVM_KEY_REMOTE_PATH}"

    apt-key \
        add \
        "/tmp/llvm.gpg.key"

    rm \
        -f \
        "/tmp/llvm.gpg.key"

    add-apt-repository \
        "${PACKAGE_SOURCE_LLVM_BINARIES_REMOTE_PATH}"

    apt                                     \
        install                             \
            --yes                           \
            --no-install-recommends         \
            --no-install-suggests           \
            "${PACKAGE_CLANG_13}"           \
            "${PACKAGE_CLANG_FORMAT_13}"    \
            "${PACKAGE_LLD_13}"
}

Process $@
