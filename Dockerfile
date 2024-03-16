FROM ubuntu:22.04

WORKDIR /root/workspace

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt update \
    && apt install -y \
    python3.11 python3-pip \
    nano \
    net-tools
RUN echo "alias python=python3.11" >> ~/.bashrc \
    && echo 'alias pip="python3.11 -m pip"' >> ~/.bashrc
