ARG UBUNTU_VERSION=20.04
ARG CUDA=11.6.0

FROM nvidia/cuda:${CUDA}-devel-ubuntu${UBUNTU_VERSION}

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

ENV DEBIAN_FRONTEND=noninteractive

USER root
