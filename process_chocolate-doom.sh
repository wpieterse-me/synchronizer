#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/chocolate-doom
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/chocolate-doom
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/chocolate-doom

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/chocolate-doom                                                                                            #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= chocolate-doom                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    chocolate-doom \
    master

do_cmake \
    development_github-com_chocolate-doom_chocolate-doom \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.chocolate-doom \
    ${PRIVATE_SOURCE_ROOT_PATH}/chocolate-doom \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/chocolate-doom \
    ""
