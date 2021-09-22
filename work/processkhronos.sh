#!/bin/bash

. /shared/development/shared

PRIVATE_REMOTE_ROOT_PATH=https://github.com/KhronosGroup
PRIVATE_SOURCE_ROOT_PATH=${DEVELOPMENT_PATH}/github.com/KhronosGroup
PRIVATE_BUILD_ROOT_PATH=${BUILDS_OTHER_PATH}/github.com/KhronosGroup

echo "########################################################################################################################"
echo "#                                                                                                                      #"
echo "# github.com/KhronosGroup                                                                                              #"
echo "#                                                                                                                      #"
echo "########################################################################################################################"
echo ""

echo "========================================================================================================================"
echo "= Vulkan-Hpp                                                                                                           ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    Vulkan-Hpp \
    master

do_cmake \
    development_github-com_khronosgroup_vulkan-hpp \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.Vulkan-Hpp \
    ${PRIVATE_SOURCE_ROOT_PATH}/Vulkan-Hpp \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/Vulkan-Hpp \
    ""

echo "========================================================================================================================"
echo "= Vulkan-Samples                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    Vulkan-Samples \
    master

do_cmake \
    development_github-com_khronosgroup_vulkan-samples \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.Vulkan-Samples \
    ${PRIVATE_SOURCE_ROOT_PATH}/Vulkan-Samples \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/Vulkan-Samples \
    ""

echo "========================================================================================================================"
echo "= Vulkan-ValidationLayers                                                                                              ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    Vulkan-ValidationLayers \
    master

do_cmake \
    development_github-com_khronosgroup_vulkan-validationlayers \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.Vulkan-ValidationLayers \
    ${PRIVATE_SOURCE_ROOT_PATH}/Vulkan-ValidationLayers \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/Vulkan-ValidationLayers \
    ""

echo "========================================================================================================================"
echo "= Vulkan-Loader                                                                                                        ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    Vulkan-Loader \
    master

do_cmake \
    development_github-com_khronosgroup_vulkan-loader \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.Vulkan-Loader \
    ${PRIVATE_SOURCE_ROOT_PATH}/Vulkan-Loader \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/Vulkan-Loader \
    ""

echo "========================================================================================================================"
echo "= glslang                                                                                                              ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    glslang \
    master

do_cmake \
    development_github-com_khronosgroup_glslang \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.glslang \
    ${PRIVATE_SOURCE_ROOT_PATH}/glslang \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/glslang \
    ""

echo "========================================================================================================================"
echo "= OpenCL-CLHPP                                                                                                         ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    OpenCL-CLHPP \
    master

do_cmake \
    development_github-com_khronosgroup_opencl-clhpp \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.OpenCL-CLHPP \
    ${PRIVATE_SOURCE_ROOT_PATH}/OpenCL-CLHPP \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/OpenCL-CLHPP \
    ""

echo "========================================================================================================================"
echo "= OpenCL-Headers                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    OpenCL-Headers \
    master

do_cmake \
    development_github-com_khronosgroup_opencl-headers \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.OpenCL-Headers \
    ${PRIVATE_SOURCE_ROOT_PATH}/OpenCL-Headers \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/OpenCL-Headers \
    ""

echo "========================================================================================================================"
echo "= Vulkan-Headers                                                                                                       ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    Vulkan-Headers \
    master

do_cmake \
    development_github-com_khronosgroup_vulkan-headers \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.Vulkan-Headers \
    ${PRIVATE_SOURCE_ROOT_PATH}/Vulkan-Headers \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/Vulkan-Headers \
    ""

echo "========================================================================================================================"
echo "= OpenCL-ICD-Loader                                                                                                    ="
echo "========================================================================================================================"
echo ""

update_git_repository \
    ${PRIVATE_REMOTE_ROOT_PATH} \
    ${PRIVATE_SOURCE_ROOT_PATH} \
    OpenCL-ICD-Loader \
    master

do_cmake \
    development_github-com_khronosgroup_opencl-icd-loader \
    ${PRIVATE_SOURCE_ROOT_PATH}/Dockerfile.OpenCL-ICD-Loader \
    ${PRIVATE_SOURCE_ROOT_PATH}/OpenCL-ICD-Loader \
    "/source" \
    ${PRIVATE_BUILD_ROOT_PATH}/OpenCL-ICD-Loader \
    ""
