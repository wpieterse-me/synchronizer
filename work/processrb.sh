#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/RobertBeckebans
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/RobertBeckebans
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/RobertBeckebans

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/RobertBeckebans                                                                                           #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= RBDOOM-3-BFG                                                                                                         ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    RBDOOM-3-BFG \
    master

do_cmake \
    development_github-com_robertbeckebans_rbdoom-3-bfg \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.RBDOOM-3-BFG \
    ${PRIVATE_SOURCE_ROOT_PATH}/RBDOOM-3-BFG \
    "/source/neo" \
    ${PRIVATE_BUILD_ROOT_PATH}/RBDOOM-3-BFG \
    "-DSDL2=ON -DOpenGL_GL_PREFERENCE=GLVND"
