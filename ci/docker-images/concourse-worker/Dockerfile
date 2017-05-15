FROM openjdk:8-jdk

MAINTAINER You <yourmail@compa.ny>

ENV DEBIAN_FRONTEND noninteractive

# NodeJS
RUN apt update -y \
    && apt install curl python-software-properties -y \
    && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt install nodejs -y

# Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt update -y \
    && apt install google-chrome-beta -y

#Firefox
RUN touch /etc/apt/sources.list.d/debian-mozilla.list \
    && echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" > /etc/apt/sources.list.d/debian-mozilla.list \
    && wget mozilla.debian.net/pkg-mozilla-archive-keyring_1.1_all.deb \
    && dpkg -i pkg-mozilla-archive-keyring_1.1_all.deb \
    && apt update -y \
    && apt install -t jessie-backports firefox -y

RUN apt install xvfb -y