FROM development-toolchain:latest

WORKDIR /build

RUN apt \
        install \
            --yes \
            --no-install-recommends \
            --no-install-suggests \
            cmake \
            ninja-build

COPY ./usr/bin/cmake_worker.sh /usr/bin/cmake_worker.sh
