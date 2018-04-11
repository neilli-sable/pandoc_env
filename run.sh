#!/bin/bash
docker run \
-h pandoc_env.local \
-it \
--rm \
--name pandoc_env \
-v `readlink -f ./build`:/root/build \
-v `readlink -f ./src`:/root/src \
pandoc_env
