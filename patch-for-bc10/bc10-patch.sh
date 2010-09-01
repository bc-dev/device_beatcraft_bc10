#!/bin/bash
echo "Start bc10-patch.sh"
echo "Start backup orginal files ... "
echo "cd bc10-android-dir"
cd ${HOME}/bc10
pwd
echo "Start Section1"
echo "frameworks/"

echo ".1"
if [ -e "frameworks/base/core/java/android/view/RawInputEvent.java.orig" ];then
    echo "Exist RawInputEvent.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/core/java/android/view/RawInputEvent.java .orig"
    cp frameworks/base/core/java/android/view/RawInputEvent.java frameworks/base/core/java/android/view/RawInputEvent.java.orig
fi

echo ".2"
if [ -e "frameworks/base/include/ui/EventHub.h.orig" ];then
    echo "Exist EventHub.h.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/include/ui/EventHub.h .orig"
    cp frameworks/base/include/ui/EventHub.h frameworks/base/include/ui/EventHub.h.orig
fi

echo ".3"
if [ -e "frameworks/base/libs/ui/EventHub.cpp.orig" ];then
    echo "Exist EventHub.cpp.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/libs/ui/EventHub.cpp .orig"
    cp frameworks/base/libs/ui/EventHub.cpp frameworks/base/libs/ui/EventHub.cpp.orig
fi

echo ".4"
if [ -e "frameworks/base/services/java/com/android/server/InputDevice.java.orig" ];then
    echo "Exist frameworks/base/services/java/com/android/server/InputDevice.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/InputDevice.java .orig"
    cp frameworks/base/services/java/com/android/server/InputDevice.java frameworks/base/services/java/com/android/server/InputDevice.java.orig
fi

echo ".5"
if [ -e "frameworks/base/services/java/com/android/server/KeyInputQueue.java.orig" ];then
    echo "Exist KeyInputQueue.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/KeyInputQueue.java .orig"
    cp frameworks/base/services/java/com/android/server/KeyInputQueue.java frameworks/base/services/java/com/android/server/KeyInputQueue.java.orig
fi

echo ".6"
if [ -e "frameworks/base/services/java/com/android/server/WindowManagerService.java.orig" ];then
    echo "Exist WindowManagerService.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/WindowManagerService.java .orig"
    cp frameworks/base/services/java/com/android/server/WindowManagerService.java frameworks/base/services/java/com/android/server/WindowManagerService.java.orig
fi

echo ".7"
if [ -e "frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig" ];then
    echo "Exist NativeDaemonConnector.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig"
    cp frameworks/base/services/java/com/android/server/NativeDaemonConnector.java frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig
fi

echo ".8"
if [ -e "frameworks/base/libs/rs/Android.mk.orig" ];then
    echo "Exist libs/rs/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/libs/rs/Android.mk .orig"
    cp frameworks/base/libs/rs/Android.mk frameworks/base/libs/rs/Android.mk.orig
fi

echo ".9"
if [ -e "frameworks/base/graphics/jni/Android.mk.orig" ];then
    echo "Exist graphics/jni/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/graphics/jni/Android.mk .orig"
    cp frameworks/base/graphics/jni/Android.mk frameworks/base/graphics/jni/Android.mk.orig
fi

echo ".10"
if [ -e "frameworks/base/media/libstagefright/omx/Android.mk.orig" ];then
    echo "Exist media/libstagefright/omx/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/media/libstagefright/omx/Android.mk .orig"
    cp frameworks/base/media/libstagefright/omx/Android.mk frameworks/base/media/libstagefright/omx/Android.mk.orig
fi

echo ".11"
if [ -e "frameworks/base/media/libstagefright/omx/OMXMaster.cpp.orig" ];then
    echo "Exist media/libstagefright/omx/OMXMaster.cpp.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/media/libstagefright/omx/OMXMaster.cpp .orig"
    cp frameworks/base/media/libstagefright/omx/OMXMaster.cpp frameworks/base/media/libstagefright/omx/OMXMaster.cpp.orig
fi



cd frameworks/base/camera
pwd
echo "Section 1.50"
echo "libcameraservice"
if [ -e "libcameraservice.orig.tar.gz" ];then
    echo "Exist libcameraservice.orig.tar.gz"
    echo "delete libcameraservice/"
    rm -fr libcameraservice
else
    echo "compress libcameraservice.tar.gz"
    tar zcf libcameraservice.orig.tar.gz libcameraservice
    echo "delete libcameraservice"
    rm -fr libcameraservice
fi
echo "End Section1"


sleep 2
echo "cd bc10-android-dir"
cd ${HOME}/bc10
pwd

echo "Start Section2"
echo "Section2 copy system"
echo ".1"
if [ -e "system/core/init/devices.c.orig" ];then
    echo "Exist system/core/init/devices.c.orig"
    echo "Skip"
else 
    echo "Copy system/core/init/device.c .orig"
    cp system/core/init/devices.c system/core/init/devices.c.orig
fi
###    echo "Volume.cpp"
###    cp system/vold/Volume.cpp system/vold/Volume.cpp.orig


echo "libpixelflinger"
echo ".50"
cd system/core
pwd
if [ -e "libpixelflinger.orig.tar.gz" ];then
    echo "Exist libpixelflinger.orig.tar.gz"
    echo "delete libpixelflinger/"
    rm -fr libpixelflinger
else
    echo "Compress libpixelflinger"
    tar zcf libpixelflinger.orig.tar.gz libpixelflinger
    echo "delete libpixelflinger"
    rm -fr libpixelflinger
fi
pwd
echo "End Section2"


sleep 2
echo "cd bc10-android-dir"
cd ${HOME}/bc10


echo "Start Section3"
echo "Section3 copy original hardware/ files "
cd hardware/ti/
pwd
echo .1
if [ -e "omap3.orig.tar.gz" ];then
    echo "Exist omap3.orig.tar.gz"
    echo "delete omap3/"
    rm -fr omap3
else
    echo "Compress omap3-orig"
    tar zcf omap3.orig.tar.gz omap3
    echo "delete omap3/"
    rm -fr omap3
fi

##echo "End Section3"
##cd hardware/ti/omap3
##pwd
##echo "libgralloc"
##if [  -e "libgralloc.orig.tar.gz" ];then
##    echo "exist libgralloc.orig.tar.gz"
##    echo "delete libgralloc"
##    rm -fr libgralloc
##fi
##if [ ! -e "libgralloc/" ];then
##
##    echo "No exit libgralloc/"
##    echo "skip libgralloc"
##else
##    echo "compress ti/oma3/libgralloc"
##    tar zcf libgralloc.orig.tar.gz libgralloc
##    echo "delete libgralloc"
##    rm -fr libgralloc
##fi
##
##echo "libopencorehw"
##if [ -e "libopencorehw.orig.tar.gz" ];then
##    echo "exist libopencorehw.orig.tar.gz"
##    echo "delete libopencorehw"
##    rm -fr libopencorehw
##else
##    echo "compress libopencorehw"
##    tar zcf libopencorehw.orig.tar.gz libopencorehw 
##    echo "delete libopencorehw"
##    rm -fr libopencorehw
##fi
##
##echo "liboverlay"
##if [ -e "liboverlay.orig.tar.gz" ];then
##    echo "exist liboverlay.orig.tar.gz"
##    echo "delete liboverlay"
##    rm -fr liboverlay
##else
##    echo "compress ti/oma3/liboverlay"
##    tar zcf liboverlay.orig.tar.gz liboverlay
##    echo "delete liboverlay"
##    rm -fr liboverlay
##fi
##
##echo "libstagefrighthw"
##if [ -e "libstagefrighthw.orig.tar.gz" ];then
##    echo "exist libstagefrighthw.orig.tar.gz"
##    echo "delete libstagefrighthw"
##    rm -fr libstagefrighthw
##else
##    echo "compress libstagefrighthw"
##    tar zcf libstagefrighthw.orig.tar.gz libstagefrighthw 
##    echo "delete libstagefrighthw"
##    rm -fr libstagefrighthw
##fi
sleep 2

cd ${HOME}/bc10
cd hardware
pwd
echo ".2"
echo " copy orignal libhardware/include/hardware/overlay.h"
if [ -e "libhardware/include/hardware/overlay.h.orig" ];then
    echo "Exist .orig"
    echo "Skip .2"
else
    echo "libhardware/include/hardware/overlay.h"
    cp libhardware/include/hardware/overlay.h libhardware/include/hardware/overlay.h.orig 
fi

echo "End Section3"

sleep 2

echo "End backup. "


echo "Next ............"
sleep 3

echo "Start copy chaged files from device/beatcraft/patch-for-bc10/ "
echo "cd bc10-android-dir"
cd ${HOME}/bc10
pwd
echo "Section C1 frameworks"
echo ".1"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/core/java/android/view/RawInputEvent.java frameworks/base/core/java/android/view/RawInputEvent.java    

echo ".2"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/include/ui/EventHub.h frameworks/base/include/ui/EventHub.h

echo ".3"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/libs/ui/EventHub.cpp frameworks/base/libs/ui/EventHub.cpp

echo ".4"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/services/java/com/android/server/InputDevice.java frameworks/base/services/java/com/android/server/InputDevice.java

echo ".5"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/services/java/com/android/server/KeyInputQueue.java frameworks/base/services/java/com/android/server/KeyInputQueue.java

echo ".6"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/services/java/com/android/server/WindowManagerService.java frameworks/base/services/java/com/android/server/WindowManagerService.java

echo ".7"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java frameworks/base/services/java/com/android/server/NativeDaemonConnector.java

echo ".8"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/libs/rs/Android.mk.patched frameworks/base/libs/rs/Android.mk

echo ".9"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/graphics/jni/Android.mk.patched frameworks/base/graphics/jni/Android.mk

echo ".10"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/media/libstagefright/omx/Android.mk.patched frameworks/base/media/libstagefright/omx/Android.mk

echo ".11"
    cp device/beatcraft/patch-for-bc10/patch/frameworks/base/media/libstagefright/omx/OMXMaster.cpp frameworks/base/media/libstagefright/omx/OMXMaster.cpp
echo ".50"
    tar zxf device/beatcraft/patch-for-bc10/patch/libcameraservice.tar.gz -C frameworks/base/camera/


echo "Section C2 copy changed files to system"
echo .1
    cp device/beatcraft/patch-for-bc10/patch/system/core/init/devices.c system/core/init/devices.c
###    cp device/beatcraft/patch-for-bc10/patch/system/vold/Volume.cpp system/vold/Volume.cpp
echo .50
echo "lay out changed libpixelflinger/"
    tar zxf device/beatcraft/patch-for-bc10/patch/libpixelflinger.tar.gz -C system/core/


echo "Section C3 copy changed files to hardware/"
echo ".1"
echo "ti/omap3"
##   cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3 hardware/ti/omap3
    tar zxf device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3.tar.gz -C hardware/ti/

##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libgralloc hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libopencorehw hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/liboverlay hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libstagefrighthw hardware/ti/omap3/
echo ".2"
echo "libhardware/"
    cp device/beatcraft/patch-for-bc10/patch/hardware/libhardware/include/hardware/overlay.h hardware/libhardware/include/hardware/overlay.h 

echo "Section Ex1 copy frameworks/base/data/sounds/Android.mk"
    cp frameworks/base/data/sounds/AudioPackage4.mk frameworks/base/data/sounds/Android.mk

echo "Section Ex2 copy bionic/libc/common/linux/omap_resizer.h"
    cp device/beatcraft/patch-for-bc10/patch/bionic/libc/kernel/common/linux/omap_resizer.h bionic/libc/kernel/common/linux/omap_resizer.h

echo "End copy files"
echo "Whole process is completed !"
