#!/bin/bash

PACKAGE_SOURCE_BAZEL_KEY_REMOTE_PATH="https://bazel.build/bazel-release.pub.gpg"
PACKAGE_SOURCE_BAZEL_BINARIES_REMOTE_PATH="deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8"

PACKAGE_BAZEL="bazel"

EXECUTABLE_BUILDIFIER_REMOTE_PATH="https://github.com/bazelbuild/buildtools/releases/download/4.2.0/buildifier-linux-amd64"
EXECUTABLE_BUILDIFIER_LOCAL_PATH="/usr/bin/buildifier"

EXECUTABLE_BUILDOZER_REMOTE_PATH="https://github.com/bazelbuild/buildtools/releases/download/4.2.0/buildozer-linux-amd64"
EXECUTABLE_BUILDOZER_LOCAL_PATH="/usr/bin/buildozer"

function Process {
    wget \
        -O "/tmp/bazel.gpg.key" \
        "${PACKAGE_SOURCE_BAZEL_KEY_REMOTE_PATH}"

    apt-key \
        add \
        "/tmp/bazel.gpg.key"

    rm \
        -f \
        "/tmp/bazel.gpg.key"

    add-apt-repository \
        "${PACKAGE_SOURCE_BAZEL_BINARIES_REMOTE_PATH}"

    apt                             \
        install                     \
            --yes                   \
            --no-install-recommends \
            --no-install-suggests   \
            "${PACKAGE_BAZEL}"

    wget \
        -O "/tmp/buildifier" \
        "${EXECUTABLE_BUILDIFIER_REMOTE_PATH}"

    mv \
        "/tmp/buildifier" \
        "${EXECUTABLE_BUILDIFIER_LOCAL_PATH}"

    chmod \
        +x \
        "${EXECUTABLE_BUILDIFIER_LOCAL_PATH}"

    wget \
        -O "/tmp/buildozer" \
        "${EXECUTABLE_BUILDOZER_REMOTE_PATH}"

    mv \
        "/tmp/buildozer" \
        "${EXECUTABLE_BUILDOZER_LOCAL_PATH}"

    chmod \
        +x \
        "${EXECUTABLE_BUILDOZER_LOCAL_PATH}"
}

Process $@
