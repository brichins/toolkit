FROM debian:stretch

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
      tree \
      wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --system --uid 1001 toolkit
WORKDIR /home/toolkit
USER 1001
