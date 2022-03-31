FROM ubuntu@sha256:723c26a4928b46145c18c35eb667cfc5f336596f0aead95dcbf54adc45a53400

ARG USER_ID
ARG GROUP_ID

RUN apt                                                                 \
        update &&                                                       \
    apt                                                                 \
        install                                                         \
            --yes                                                       \
            ssh                                                         \
            git &&                                                      \
    apt                                                                 \
        clean                                                           \
            autoclean &&                                                \
    apt                                                                 \
        autoremove                                                      \
            --yes &&                                                    \
    rm                                                                  \
        -rf                                                             \
            /var/lib/{apt,dpkg,cache,log}/ &&                           \
    addgroup                                                            \
        --gid ${GROUP_ID}                                               \
        dev &&                                                          \
    adduser                                                             \
        --disabled-password                                             \
        --gecos ''                                                      \
        --uid ${USER_ID}                                                \
        --gid ${GROUP_ID}                                               \
        dev &&                                                          \
    mkdir                                                               \
        -p                                                              \
        /home/dev/.ssh/ &&                                              \
    ssh-keyscan                                                         \
        -H                                                              \
        github.com >> /home/dev/.ssh/known_hosts &&                     \
    ssh-keyscan                                                         \
        -H                                                              \
        gitlab.com >> /home/dev/.ssh/known_hosts &&                     \
    ssh-keyscan                                                         \
        -H                                                              \
        -p 2022                                                         \
        source.developers.google.com >> /home/dev/.ssh/known_hosts &&   \
    cat                                                                 \
        /home/dev/.ssh/known_hosts &&                                   \
    chown                                                               \
        dev:dev                                                         \
        -R                                                              \
        /home/dev &&                                                    \
    mkdir                                                               \
        -p                                                              \
        /work &&                                                        \
    chown                                                               \
        dev:dev                                                         \
        -R                                                              \
        /work

WORKDIR /work

USER dev
