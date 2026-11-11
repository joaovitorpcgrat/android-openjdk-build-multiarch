#!/bin/bash
set -e

if [[ "$TARGET_JDK" == "arm" ]]; then
    git clone --depth 1 https://github.com/openjdk/aarch32-port-jdk8u openjdk

elif [[ "$BUILD_IOS" == "1" ]]; then
    git clone --depth 1 https://github.com/corretto/corretto-8 openjdk

else
    git clone --depth 1 \
      --branch aarch64-shenandoah-jdk8u272-b10 \
      https://github.com/PojavLauncherTeam/openjdk-multiarch-jdk8u openjdk
fi
