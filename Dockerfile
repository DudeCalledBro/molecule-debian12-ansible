FROM docker.io/debian:12

LABEL org.opencontainers.image.authors="Niclas Spreng"
LABEL org.opencontainers.image.description="Molecule Container Debian 12"
LABEL org.opencontainers.image.source=https://github.com/DudeCalledBro/molecule-debian12-ansible

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qy \
    && apt-get install -qy --no-install-recommends \
        aptitude \
        build-essential \
        iproute2 \
        libffi-dev \
        libssl-dev \
        procps \
        python3-apt \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        sudo \
        systemd \
        systemd-sysv \
        vim \
        wget \
    && apt-get autoremove -qy \
    && apt-get clean -qy \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

# Make sure systemd doesn't start agettys on tty[1-6].
RUN rm -f /lib/systemd/system/multi-user.target.wants/getty.target

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
