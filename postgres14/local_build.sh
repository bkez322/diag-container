#!/bin/bash
set -exv

BASE_IMG="diag-container-pg14"
QUAY_IMAGE="quay.io/anjaasta/${BASE_IMG}"
IMG="${BASE_IMG}:latest"

GIT_HASH=$(git rev-parse --short=7 HEAD)

# build the image
docker build  --no-cache \
              --force-rm \
              -t ${IMG}  \
              -f ./Dockerfile .