#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/dhewm3
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/dhewm3
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/dhewm3

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/dhewm3                                                                                                    #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= dhewm3                                                                                                               ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    dhewm3 \
    master

do_cmake \
    development_github-com_dhewm3_dhewm3 \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.dhewm3 \
    ${PRIVATE_SOURCE_ROOT_PATH}/dhewm3 \
    "/source/neo" \
    ${PRIVATE_BUILD_ROOT_PATH}/dhewm3 \
    "-DDEDICATED=ON -DONATIVE=ON -DREPRODUCIBLE_BUILD=ON"
