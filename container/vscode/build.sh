#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd -P )"
docker build -t vscode  $DIR
