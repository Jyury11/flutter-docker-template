#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd -P )"

mkdir -p $DIR/user

sudo docker run \
  --net=bridge \
  --shm-size=4096m \
  --rm \
  -t \
  -e DISPLAY \
  -v /tmp/.X11-unix/X0:/tmp/.X11-unix/X0 \
  -e PULSE_COOKIE=/tmp/pulse/cookie \
  -e PULSE_SERVER=unix:/tmp/pulse/native \
  -v /run/$USER/1000/pulse/native:/tmp/pulse/native \
  -v ~/.config/pulse/cookie:/tmp/pulse/cookie:ro \
  -e XMODIFIERS \
  -e GTK_IM_MODULE \
  -e QT_IM_MODULE \
  -e DefalutIMModule=fcitx \
  -e DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus \
  -v /run/$USER/1000/bus:/run/user/1000/bus \
  --privileged \
  -v $DIR/../user:/home/user \
  -v /dev/bus/usb:/dev/bus/usb \
  -v $DIR/../workspace/:/home/user/workspace \
  -u `id -u` \
  flutter bash
