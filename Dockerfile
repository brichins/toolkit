FROM debian:latest

LABEL name="toolkit" \
      version="0.0.1"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
      ca-certificates \
      curl \
      dnsutils \
      git \
      htop \
      httping \
      iperf3 \
      less \
      netcat \
      nmon \
      socat \
      telnet \
      wget && \
    rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --system toolkit
WORKDIR /home/toolkit
USER toolkit
