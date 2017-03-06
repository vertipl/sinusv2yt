FROM debian:jessie
MAINTAINER verti vertical0520@gmail.com
ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh && \
    apt-get -q update && \
    apt-get -q install -y \
    x11vnc \
    xinit \
    xvfb \
    unzip \
    libxcursor1 \
    bzip2 \
    screen \
    wget \
    unzip \
    ca-certificates  \
    libglib2.0-0 && \
    mkdir /opt/ts3soundboard/ && \
    cd /opt/ts3soundboard/ && \
    wget verti.ovh/sinusv2.zip && \
    unzip sinusv2.zip && \
    wget https://yt-dl.org/downloads/2017.01.18/youtube-dl -O /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

VOLUME ["/sinus"]
EXPOSE 8087
ENTRYPOINT ["/entrypoint.sh"]
