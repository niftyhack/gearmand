FROM debian:10.3-slim AS build

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade --yes && \
    apt-get dist-upgrade --yes && \
    apt-get install --yes --no-install-recommends \
        aptitude \
        automake \
        build-essential \
        ca-certificates \
        git \
        gperf \
        libboost-all-dev \
        libevent-dev \
        libmariadb-dev \
        libmariadb-dev-compat \
        libsqlite3-dev \
        libtool \
        python-sphinx \
        uuid-dev \
        wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt

ENTRYPOINT ["/bin/bash"]
