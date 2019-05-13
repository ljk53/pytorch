#!/bin/sh

#NAME=build_android/lib/liblite_executor.so
NAME=build_android/lib/libmobile_torch.so
#NAME=build_lite/lib/liblite_executor.so
#NAME=build_android/lib/libcaffe2.a
STRIP=${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/arm-linux-androideabi/bin/strip
#STRIP=/bin/strip

${STRIP} ${NAME} -o ${NAME}.s
${HOME}/fbsource/fbandroid/scripts/appview/bloaty_bin --debug-file=${NAME} --csv -n 0 -d segments,sections,compileunits,symbols ${NAME}.s
