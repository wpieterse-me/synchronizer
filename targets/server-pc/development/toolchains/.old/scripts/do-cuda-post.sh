#!/bin/bash

PACKAGE_CUDA_LIBRARIES="cuda-libraries-11-4"
PACKAGE_LIBNPP="libnpp-11-4"
PACKAGE_CUDA_NVTX="cuda-nvtx-11-4"
PACKAGE_LIBCUSPARSE="libcusparse-11-4"
PACKAGE_LIBCUBLAS="libcublas-11-4"
PACKAGE_LIBNCCL2="libnccl2"
PACKAGE_CUDA_CUDART_DEV="cuda-cudart-dev-11-4"
PACKAGE_CUDA_COMMAND_LINE_TOOLS="cuda-command-line-tools-11-4"
PACKAGE_CUDA_MINIMAL_BUILD="cuda-minimal-build-11-4"
PACKAGE_CUDA_LIBRARIES_DEV="cuda-libraries-dev-11-4"
PACKAGE_CUDA_NVML_DEV="cuda-nvml-dev-11-4"
PACKAGE_LIBNPP_DEV="libnpp-dev-11-4"
PACKAGE_LIBCUSPARSE_DEV="libcusparse-dev-11-4"
PACKAGE_LIBCUBLAS_DEV="libcublas-dev-11-4"
PACKAGE_LIBNCCL_DEV="libnccl-dev"

function Process {
    apt                                             \
        install                                     \
            --yes                                   \
            --no-install-recommends                 \
            --no-install-suggests                   \
            "${PACKAGE_CUDA_LIBRARIES}"             \
            "${PACKAGE_LIBNPP}"                     \
            "${PACKAGE_CUDA_NVTX}"                  \
            "${PACKAGE_LIBCUSPARSE}"                \
            "${PACKAGE_LIBCUBLAS}"                  \
            "${PACKAGE_LIBNCCL2}"                   \
            "${PACKAGE_CUDA_CUDART_DEV}"            \
            "${PACKAGE_CUDA_COMMAND_LINE_TOOLS}"    \
            "${PACKAGE_CUDA_MINIMAL_BUILD}"         \
            "${PACKAGE_CUDA_LIBRARIES_DEV}"         \
            "${PACKAGE_CUDA_NVML_DEV}"              \
            "${PACKAGE_LIBNPP_DEV}"                 \
            "${PACKAGE_LIBCUSPARSE_DEV}"            \
            "${PACKAGE_LIBCUBLAS_DEV}"              \
            "${PACKAGE_LIBNCCL_DEV}"
}

Process $@
