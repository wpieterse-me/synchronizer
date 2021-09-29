#!/bin/bash

PACKAGE_CA_CERTIFICATES="ca-certificates"
PACKAGE_SOFTWARE_PROPERTIES_COMMON="software-properties-common"
PACKAGE_APT_TRANSPORT_HTTPS="apt-transport-https"
PACKAGE_CURL="curl"
PACKAGE_WGET="wget"
PACKAGE_GNUPG="gnupg"
PACKAGE_GNUPG2="gnupg2"
PACKAGE_LIBTINFO5="libtinfo5"
PACKAGE_LIBNCURSESW5="libncursesw5"
PACKAGE_BUILD_ESSENTIAL="build-essential"

function Process {
    apt                                             \
        install                                     \
            --yes                                   \
            --no-install-recommends                 \
            --no-install-suggests                   \
            "${PACKAGE_CA_CERTIFICATES}"            \
            "${PACKAGE_SOFTWARE_PROPERTIES_COMMON}" \
            "${PACKAGE_APT_TRANSPORT_HTTPS}"        \
            "${PACKAGE_CURL}"                       \
            "${PACKAGE_WGET}"                       \
            "${PACKAGE_GNUPG}"                      \
            "${PACKAGE_GNUPG2}"                     \
            "${PACKAGE_LIBTINFO5}"                  \
            "${PACKAGE_LIBNCURSESW5}"               \
            "${PACKAGE_BUILD_ESSENTIAL}"
}

Process $@
