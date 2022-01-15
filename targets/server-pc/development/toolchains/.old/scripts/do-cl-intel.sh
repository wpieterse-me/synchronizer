#!/bin/bash

PACKAGE_SOURCE_INTEL_OPENCL_REMOTE_PATH="ppa:intel-opencl/intel-opencl"

PACKAGE_INTEL_ONEAPI_RUNTIME_OPENCL="intel-oneapi-runtime-opencl"
PACKAGE_LIBZE_LOADER="libze-loader"
PACKAGE_LIBZE_INTEL_GPU="libze-intel-gpu"
PACKAGE_INTEL_OPENCL_ICD="intel-opencl-icd"

function Process {
    add-apt-repository \
        "${PACKAGE_SOURCE_INTEL_OPENCL_REMOTE_PATH}"

    apt                                                 \
        install                                         \
            --yes                                       \
            --no-install-recommends                     \
            --no-install-suggests                       \
            "${PACKAGE_INTEL_ONEAPI_RUNTIME_OPENCL}"    \
            "${PACKAGE_LIBZE_LOADER}"                   \
            "${PACKAGE_LIBZE_INTEL_GPU}"                \
            "${PACKAGE_INTEL_OPENCL_ICD}"
}

Process $@
