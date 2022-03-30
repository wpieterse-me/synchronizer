#!/bin/bash

function Process {
    local REMOTE=""
    local NAME=""
    local BRANCH=""

    if [[ ${PARAMETER_DISABLE_CLONE} -eq 0 ]];
    then
        while [[ $# -ne 0 ]];
        do
            case $1 in
                --remote=*|--name=*|--branch=*)
                    arg="$1"
                    shift
                    set -- "${arg%%=*}" "${arg#*=}" "$@"
                    continue
                    ;;
                --remote)
                    if [[ $# -lt 2 ]];
                    then
                        echo "Process: No argument after --remote"
                        exit 1
                    fi

                    shift
                    REMOTE="$1"
                    ;;
                --name)
                    if [[ $# -lt 2 ]];
                    then
                        echo "Process: No argument after --name"
                        exit 1
                    fi

                    shift
                    NAME="$1"
                    ;;
                --branch)
                    if [[ $# -lt 2 ]];
                    then
                        echo "Process: No argument after --branch"
                        exit 1
                    fi

                    shift
                    BRANCH="$1"
                    ;;
                *)
                    echo "Process: Unknown argument $1."
                    exit 1
                    ;;
            esac

            shift
        done

        pushd /work > /dev/null

        if [ ! -d "${NAME}" ];
        then
            echo "*** INITIAL CLONE ******************************************************************************************************"
            echo ""

            git                                                         \
                clone                                                   \
                "${REMOTE}/${NAME}.git" \
                --recurse-submodules

            echo ""
        fi

        pushd "/work/${NAME}"  > /dev/null

        git                 \
            config          \
            pager.log false

        echo "*** CLEAN **************************************************************************************************************"
        echo ""
        echo "Cleaning"

        git         \
            clean   \
            -dxf

        echo ""
        echo "*** RESET **************************************************************************************************************"
        echo ""

        git                             \
            reset                       \
            --hard ${BRANCH}

        echo ""
        echo "*** CHECKOUT ***********************************************************************************************************"
        echo ""

        git                         \
            checkout                \
            ${BRANCH}

        echo ""
        echo "*** PULL ***************************************************************************************************************"
        echo ""

        git                         \
            pull                    \
            --recurse-submodules    \
            --all

        echo ""
        echo "*** LOG ****************************************************************************************************************"
        echo ""

        git     \
            log \
            -n1

        echo ""

        popd > /dev/null

        popd > /dev/null
    fi
}

Process $@
