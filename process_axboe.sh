#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/axboe
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/axboe
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/axboe

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/axboe                                                                                                     #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= liburing                                                                                                             ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    liburing \
    master
