#!/bin/bash

function Process {
    local REMOTE_UPSTREAM=""
    local REMOTE_ORIGIN=""
    local NAME=""
    local BRANCH=""

    while [[ $# -ne 0 ]];
    do
        case $1 in
            --remote_upstream=*|--remote_origin=*|--name=*|--branch=*)
                arg="$1"
                shift
                set -- "${arg%%=*}" "${arg#*=}" "$@"
                continue
                ;;
            --remote_upstream)
                if [[ $# -lt 2 ]];
                then
                    echo "Process: No argument after --remote_upstream"
                    exit 1
                fi

                shift
                REMOTE_UPSTREAM="$1"
                ;;
            --remote_origin)
                if [[ $# -lt 2 ]];
                then
                    echo "Process: No argument after --remote_origin"
                    exit 1
                fi

                shift
                REMOTE_ORIGIN="$1"
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

    ssh-add \
        -l > /dev/null

    pushd /work > /dev/null

    if [ ! -d "${NAME}" ];
    then
        echo "*** INITIAL CLONE ******************************************************************************************************"
        echo ""

        git                                     \
            clone                               \
                --recurse-submodules            \
                --jobs=16                       \
                "${REMOTE_ORIGIN}/${NAME}.git"

        echo ""
    fi

    pushd "/work/${NAME}"  > /dev/null

    git                     \
        config              \
            pager.log false

    echo ""
    echo "*** RESET REMOTES ******************************************************************************************************"
    echo ""

    git                     \
        remote              \
            remove upstream

    git                     \
        remote              \
            remove origin

    git                                             \
        remote                                      \
            add                                     \
                upstream                            \
                "${REMOTE_UPSTREAM}/${NAME}.git"

    git                                         \
        remote                                  \
            add                                 \
                origin                          \
                "${REMOTE_ORIGIN}/${NAME}.git"

    git                     \
        remote              \
            show upstream

    git                     \
        remote              \
            show origin

    echo ""
    echo "*** FETCH **************************************************************************************************************"
    echo ""

    git                             \
        fetch                       \
            --recurse-submodules    \
            --jobs=16               \
            --multiple              \
            upstream 

    echo ""
    echo "*** CLEAN **************************************************************************************************************"
    echo ""

    git             \
        clean       \
            -dx     \
            --force

    echo ""
    echo "*** RESET **************************************************************************************************************"
    echo ""

    git                 \
        reset           \
            --hard      \
            ${BRANCH}

    echo ""
    echo "*** CHECKOUT ***********************************************************************************************************"
    echo ""

    git                 \
        checkout        \
            ${BRANCH}

    echo ""
    echo "*** PULL ***************************************************************************************************************"
    echo ""

    git                             \
        pull                        \
            --recurse-submodules    \
            --jobs=16               \
            upstream                \
            ${BRANCH} 

    echo ""
    echo "*** PUSH ***************************************************************************************************************"
    echo ""

    git             \
        push        \
            --all   \
            origin

    echo ""

    popd > /dev/null

    popd > /dev/null
}

Process $@
