#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=github-prinexyz:prinexyz
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/prinexyz
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/prinexyz

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/prinexyz                                                                                                  #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= jhwmanufacturing.github.io                                                                                           ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    jhwmanufacturing.github.io \
    main

echo "========================================================================================================================"
echo "= paxboxxyz.github.io                                                                                                  ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    paxboxxyz.github.io \
    main

echo "========================================================================================================================"
echo "= prinexyz.github.io                                                                                                   ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    prinexyz.github.io \
    main

echo "========================================================================================================================"
echo "= wpietersexyz.github.io                                                                                               ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    wpietersexyz.github.io \
    main
