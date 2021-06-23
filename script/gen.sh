#!/bin/sh
cd "$ROOT/src"
mkdir -p out/arm64/
cat .build/android_arm/args.gn | sed "s#target_cpu = \"arm\"#target_cpu = \"arm64\"#" | sed "s#android_default_version_name = \"Git\"#android_default_version_name = \"Git$(date '+%y%m%d')Gen${BUILD_VERSION}\"#" > out/arm64/args.gn
sed -i "s#android_default_version_code = \"1\"#android_default_version_code = \"$(date '+%y%m%d')2\"#" out/arm64/args.gn
gn gen out/arm64/
