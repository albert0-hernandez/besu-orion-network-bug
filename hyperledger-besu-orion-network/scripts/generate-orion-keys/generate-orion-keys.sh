#!/bin/bash
FOLDER=${1:-$(pwd)}
docker run -i --rm --mount type=bind,source="$FOLDER",target=/data pegasyseng/orion:latest -g /data/orion