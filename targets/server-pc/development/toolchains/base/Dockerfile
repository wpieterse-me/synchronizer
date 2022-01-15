FROM ubuntu@sha256:7cc0576c7c0ec2384de5cbf245f41567e922aab1b075f3e8ad565f508032df17 AS base-environment

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Africa/Johannesburg

RUN apt \
        update

RUN apt \
        install \
            --yes \
            curl \
            tar \
            xz-utils \
            ninja-build \
            cmake

RUN apt \
        upgrade \
            --yes

RUN mkdir \
        --parents \
        /bootstrap/downloads

RUN mkdir \
        --parents \
        /bootstrap/tools/llvm-distribution

RUN mkdir \
        --parents \
        /bootstrap/source/llvm

RUN curl \
        --location \
        --output /bootstrap/downloads/llvm-distribution.tar.xz \
        https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/clang+llvm-13.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz

RUN tar \
        --extract \
        --verbose \
        --strip-components=1 \
        --file=/bootstrap/downloads/llvm-distribution.tar.xz \
        --directory=/bootstrap/tools/llvm-distribution

ENV CC=/bootstrap/tools/llvm-distribution/bin/clang
ENV CPP=/bootstrap/tools/llvm-distribution/bin/clang++
ENV LD=/bootstrap/tools/llvm-distribution/bin/ld.lld

RUN curl \
        --location \
        --output /bootstrap/downloads/llvm-source.tar.gz \
        https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-13.0.0.tar.gz

RUN tar \
        --extract \
        --verbose \
        --strip-components=1 \
        --file=/bootstrap/downloads/llvm-source.tar.gz \
        --directory=/bootstrap/source/llvm

RUN ls /bootstrap/source/llvm
