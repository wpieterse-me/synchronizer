#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/intel
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/intel
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/intel

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/intel                                                                                                     #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= metrics-discovery                                                                                                    ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    metrics-discovery \
    master

do_cmake \
    development_github-com_intel_metrics-discovery \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.metrics-discovery \
    ${PRIVATE_SOURCE_ROOT_PATH}/metrics-discovery \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/metrics-discovery \
    ""
