FROM ubuntu

ENV TERM xterm-256color

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libncurses5 \
        tar \
        wget \
    && savedPackages="libncurses5" \
    && apt-mark auto '.*' > /dev/null \
    && apt-mark manual $savedPackages \
    && rm -rf /var/cache/apt/* /var/lib/apt/lists/*

RUN useradd -m adom
WORKDIR /home/adom
VOLUME /home/adom/.adom.data
USER adom

RUN wget https://www.adom.de/home/download/current/adom_linux_ubuntu_64_3.3.3.tar.gz --no-check-certificate -O adom.tgz
RUN tar -xz --strip-components 1 -f adom.tgz

ENTRYPOINT ["./adom"]
