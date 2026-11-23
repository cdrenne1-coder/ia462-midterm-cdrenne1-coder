#!/bin/bash
cd "$(dirname "$0")" || exit 1
docker run -d \
  --name midterm-hardened \
  -p 5000:5000 \
  --read-only \
  --tmpfs /tmp:rw,noexec,nosuid,size=16m \
  --cap-drop ALL \
  --security-opt no-new-privileges:true \
  --security-opt seccomp=seccomp-profile.json \
  ia462-midterm:v1
