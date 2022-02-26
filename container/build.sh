#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd -P )"
sh $DIR/ubuntu-base/build.sh
sh $DIR/vscode/build.sh
sh $DIR/flutter/build.sh
