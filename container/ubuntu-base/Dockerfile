FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV LANG ja_JP.UTF-8

ARG username=user
ARG UID=1000
ARG USER_GID=$USER_UID

RUN sed -i.org -e 's|ports.ubuntu.com|jp.archive.ubuntu.com|g' /etc/apt/sources.list \
  && apt-get update && apt-get install -y \
  tzdata \
  locales \
  fonts-noto-cjk \
  pulseaudio \
  fcitx-mozc \
  dbus-x11 \
  sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && ln -s -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && dpkg-reconfigure tzdata \
  && locale-gen ja_JP.UTF-8

RUN echo "root:root" | chpasswd && \
  adduser --disabled-password --gecos "" "${username}" && \
  echo "${username}:${username}" | chpasswd && \
  echo "%${username}    ALL=(ALL)   NOPASSWD:    ALL" >> /etc/sudoers.d/${username} && \
  chmod 0440 /etc/sudoers.d/${username}
