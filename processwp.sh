#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=github-wpietersexyz:wpietersexyz
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/wpietersexyz
PRIVATE_BUILD_ROOT_PATH=${BUILDS_PERSONAL_PATH}/github.com/wpietersexyz

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/wpietersexyz                                                                                              #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= game-assets                                                                                                          ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    game-assets \
    main

echo "========================================================================================================================"
echo "= open-nt-400                                                                                                          ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    open-nt-400 \
    main

echo "========================================================================================================================"
echo "= scrapbook                                                                                                            ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    scrapbook \
    main

do_bazel \
    development_github-com_wpietersexyz_scrapbook \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.scrapbook \
    ${PRIVATE_SOURCE_ROOT_PATH}/scrapbook \
    ${PRIVATE_BUILD_ROOT_PATH}/scrapbook

echo "========================================================================================================================"
echo "= unrealengine-1-1996                                                                                                  ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    unrealengine-1-1996 \
    main

echo "========================================================================================================================"
echo "= unrealengine-1-1997                                                                                                  ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    unrealengine-1-1997 \
    main

echo "========================================================================================================================"
echo "= windows-10                                                                                                           ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    windows-10 \
    main

echo "========================================================================================================================"
echo "= windows-nt-350                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    windows-nt-350 \
    main

echo "========================================================================================================================"
echo "= windows-nt-400                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    windows-nt-400 \
    main

echo "========================================================================================================================"
echo "= windows-nt-600                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    windows-nt-600 \
    main

echo "========================================================================================================================"
echo "= windows-research-kernel                                                                                              ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    windows-research-kernel \
    main

echo "========================================================================================================================"
echo "= xbox                                                                                                                 ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    xbox \
    main
