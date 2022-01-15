FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Africa/Johannesburg

RUN apt update \
    && apt upgrade --yes \
    && apt dist-upgrade --yes

COPY ./scripts/do-base.sh /scripts/do-base.sh
RUN /scripts/do-base.sh

COPY ./scripts/do-x.sh /scripts/do-x.sh
RUN /scripts/do-x.sh

COPY ./scripts/do-compiler-gcc.sh /scripts/do-compiler-gcc.sh
RUN /scripts/do-compiler-gcc.sh

COPY ./scripts/do-compiler-llvm.sh /scripts/do-compiler-llvm.sh
RUN /scripts/do-compiler-llvm.sh

COPY ./scripts/do-compiler-intel.sh /scripts/do-compiler-intel.sh
RUN /scripts/do-compiler-intel.sh

COPY ./scripts/do-build-make.sh /scripts/do-build-make.sh
RUN /scripts/do-build-make.sh

COPY ./scripts/do-build-cmake.sh /scripts/do-build-cmake.sh
RUN /scripts/do-build-cmake.sh

COPY ./scripts/do-build-bazel.sh /scripts/do-build-bazel.sh
RUN /scripts/do-build-bazel.sh

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES all

COPY ./scripts/do-cuda-pre.sh /scripts/do-cuda-pre.sh
RUN /scripts/do-cuda-pre.sh

COPY ./etc/ld.so.conf.d/nvidia.conf /etc/ld.so.conf.d/nvidia.conf

ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

COPY ./scripts/do-cuda-post.sh /scripts/do-cuda-post.sh
RUN /scripts/do-cuda-post.sh

ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs

COPY ./scripts/do-cl.sh /scripts/do-cl.sh
RUN /scripts/do-cl.sh

COPY ./scripts/do-cl-intel.sh /scripts/do-cl-intel.sh
RUN /scripts/do-cl-intel.sh

COPY ./scripts/do-cl-nvidia.sh /scripts/do-cl-nvidia.sh
RUN /scripts/do-cl-nvidia.sh
COPY ./etc/OpenCL/vendors/nvidia.icd /etc/OpenCL/vendors/nvidia.icd

COPY ./scripts/do-vulkan.sh /scripts/do-vulkan.sh
RUN /scripts/do-vulkan.sh

COPY ./scripts/do-vulkan-intel.sh /scripts/do-vulkan-intel.sh
RUN /scripts/do-vulkan-intel.sh

COPY ./scripts/do-vulkan-nvidia.sh /scripts/do-vulkan-nvidia.sh
RUN /scripts/do-vulkan-nvidia.sh

COPY ./scripts/worker-make.sh /scripts/worker-make.sh
COPY ./scripts/worker-cmake.sh /scripts/worker-cmake.sh
COPY ./scripts/worker-bazel.sh /scripts/worker-bazel.sh
