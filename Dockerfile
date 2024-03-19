# FROM nvidia/cuda:12.3.2-devel-ubuntu22.04
# FROM tensorflow/tensorflow:devel-gpu
FROM ubuntu:22.04

WORKDIR /root/workspace

# ビルド時にタイムゾーン選択に邪魔されないようにするため
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt update \
    && apt upgrade -y \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt update \
    && apt install -y \
    nano \
    net-tools \
    build-essential \
    python3.11 python3-pip 

RUN echo "alias python=python3.11" >> ~/.bashrc \
    && echo 'alias pip="python3.11 -m pip"' >> ~/.bashrc
