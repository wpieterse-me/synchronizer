#!/bin/bash

PACKAGE_OCL_ICD_LIBOPENCL1="ocl-icd-libopencl1"
PACKAGE_OPENCL_HEADERS="opencl-headers"
PACKAGE_CLINFO="clinfo"

function Process {
    apt                                     \
        install                             \
            --yes                           \
            --no-install-recommends         \
            --no-install-suggests           \
            "${PACKAGE_OCL_ICD_LIBOPENCL1}" \
            "${PACKAGE_OPENCL_HEADERS}"     \
            "${PACKAGE_CLINFO}"
}

Process $@
