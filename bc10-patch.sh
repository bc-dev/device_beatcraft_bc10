#!/bin/bash
### This script is android-2.2_r1.1 for bc10
###
### file number is .1, .2, .3, .4, ....
### tar  number is .50, .51, ....
### Section EX is adding new files.
#
#   11/16/2010 : v1.1
#   08/31/2010 : initial commit
#

### Settings 
ANDROID_DIR=${HOME}/bc10
SETUP_DIR=${HOME}/patch_to_android-2.2_r1.1_for_b10
PATCH_DIR=${SETUP_DIR}/patches-for-bc10
###

### 
echo "android-2.2_r1.1 patches for bc10"
echo "Start bc10-patch.sh"
echo "Backup original file(s) is B+number Copy new file(s) is C+number"
sleep 1

echo "Start Backup orginal files ... "


echo "Start Section B1 "
echo "Backup frameworks files "
VAR=B1
cd ${ANDROID_DIR}
pwd
echo "$VAR.1"
if [ -e "frameworks/base/core/java/android/view/RawInputEvent.java.orig" ];then
    echo "Exist RawInputEvent.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/core/java/android/view/RawInputEvent.java .orig"
    cp frameworks/base/core/java/android/view/RawInputEvent.java \
       frameworks/base/core/java/android/view/RawInputEvent.java.orig
fi

echo "$VAR.2"
if [ -e "frameworks/base/include/ui/EventHub.h.orig" ];then
    echo "Exist EventHub.h.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/include/ui/EventHub.h .orig"
    cp frameworks/base/include/ui/EventHub.h \
       frameworks/base/include/ui/EventHub.h.orig
fi

echo "$VAR.3"
if [ -e "frameworks/base/libs/ui/EventHub.cpp.orig" ];then
    echo "Exist EventHub.cpp.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/libs/ui/EventHub.cpp .orig"
    cp frameworks/base/libs/ui/EventHub.cpp \
       frameworks/base/libs/ui/EventHub.cpp.orig
fi

echo "$VAR.4"
if [ -e "frameworks/base/services/java/com/android/server/InputDevice.java.orig" ];then
    echo "Exist frameworks/base/services/java/com/android/server/InputDevice.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/InputDevice.java .orig"
    cp frameworks/base/services/java/com/android/server/InputDevice.java \
       frameworks/base/services/java/com/android/server/InputDevice.java.orig
fi

echo "$VAR.5"
if [ -e "frameworks/base/services/java/com/android/server/KeyInputQueue.java.orig" ];then
    echo "Exist KeyInputQueue.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/KeyInputQueue.java .orig"
    cp frameworks/base/services/java/com/android/server/KeyInputQueue.java \
       frameworks/base/services/java/com/android/server/KeyInputQueue.java.orig
fi

echo "$VAR.6"
if [ -e "frameworks/base/services/java/com/android/server/WindowManagerService.java.orig" ];then
    echo "Exist WindowManagerService.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/WindowManagerService.java .orig"
    cp frameworks/base/services/java/com/android/server/WindowManagerService.java \
       frameworks/base/services/java/com/android/server/WindowManagerService.java.orig
fi

echo "$VAR.7"
if [ -e "frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig" ];then
    echo "Exist NativeDaemonConnector.java.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig"
    cp frameworks/base/services/java/com/android/server/NativeDaemonConnector.java \
       frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig
fi

echo "$VAR.8"
if [ -e "frameworks/base/libs/rs/Android.mk.orig" ];then
    echo "Exist libs/rs/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/libs/rs/Android.mk .orig"
    cp frameworks/base/libs/rs/Android.mk \
       frameworks/base/libs/rs/Android.mk.orig
fi

echo "$VAR.9"
if [ -e "frameworks/base/graphics/jni/Android.mk.orig" ];then
    echo "Exist graphics/jni/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/graphics/jni/Android.mk .orig"
    cp frameworks/base/graphics/jni/Android.mk \
       frameworks/base/graphics/jni/Android.mk.orig
fi

echo "$VAR.10"
if [ -e "frameworks/base/media/libstagefright/omx/Android.mk.orig" ];then
    echo "Exist media/libstagefright/omx/Android.mk.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/media/libstagefright/omx/Android.mk .orig"
    cp frameworks/base/media/libstagefright/omx/Android.mk \
       frameworks/base/media/libstagefright/omx/Android.mk.orig
fi

echo "$VAR.11"
if [ -e "frameworks/base/media/libstagefright/omx/OMXMaster.cpp.orig" ];then
    echo "Exist media/libstagefright/omx/OMXMaster.cpp.orig"
    echo "Skip"
else
    echo "Copy frameworks/base/media/libstagefright/omx/OMXMaster.cpp .orig"
    cp frameworks/base/media/libstagefright/omx/OMXMaster.cpp \
       frameworks/base/media/libstagefright/omx/OMXMaster.cpp.orig
fi

# echo ".12"
# if [ -e "frameworks/base/packages/SettingsProvider/res/values/defaults.xml.orig" ];then
#     echo "Exist packages/SettingsProvider/res/values/defaults.xml.orig"
#     echo "Skip"
# else
#     echo "Copy frameworks/base/packages/SettingsProvider/res/values/defaults.xml .orig"
#     cp frameworks/base/packages/SettingsProvider/res/values/defaults.xml frameworks/base/packages/SettingsProvider/res/values/defaults.xml.orig
#     # giped for avoid duplicate define error when makeing
#    gzip frameworks/base/packages/SettingsProvider/res/values/defaults.xml.orig
# fi


cd ${ANDROID_DIR}/frameworks/base/camera
pwd
echo "$VAR.50"
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
echo "End Section B1"

sleep 2

echo "Start Section B2 "
echo "Backup system files "
VAR=B2
cd ${ANDROID_DIR}
pwd
echo "$VAR.1"
if [ -e "system/core/init/devices.c.orig" ];then
    echo "Exist system/core/init/devices.c.orig"
    echo "Skip"
else 
    echo "Copy system/core/init/device.c .orig"
    cp system/core/init/devices.c \
       system/core/init/devices.c.orig
fi
###    echo "Volume.cpp"
###    cp system/vold/Volume.cpp system/vold/Volume.cpp.orig

echo "libpixelflinger"
echo "$VAR.50"
cd ${ANDROID_DIR}/system/core
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
echo "End Section B2"

sleep 2

echo "Start Section B3 "
echo "Backup hardware files "
VAR=B3
cd ${ANDROID_DIR}
pwd
cd hardware/ti/
pwd

echo "$VAR.50"
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
sleep 1

cd ${ANDROID_DIR}
pwd
cd hardware
pwd
echo "$VAR.1"
if [ -e "libhardware/include/hardware/overlay.h.orig" ];then
    echo "Exist overlay.h.orig"
    echo "Skip"
else
    echo "copy orignal libhardware/include/hardware/overlay.h"
    cp libhardware/include/hardware/overlay.h \
       libhardware/include/hardware/overlay.h.orig 
fi

echo "$VAR.2"
echo "copy orignal libhardware/Android.mk"
if [ -e "libhardware/Android.mk.orig" ];then
    echo "Exist libhardware/Android.mk.orig"
    echo "Skip"
else
    echo "copy orignal libhardware/Android.mk"
    cp libhardware/Android.mk \
       libhardware/Android.mk.orig
fi

echo "$VAR.3"
if [ -e "libhardware_legacy/gps/Android.mk.orig" ];then
    echo "Exist libhardware_legacy/gps/Android.mk.orig"
    echo "Skip"
else
    echo "copy orignal libhardware_legacy/gps/Android.mk"
    cp libhardware_legacy/gps/Android.mk \
       libhardware_legacy/gps/Android.mk.orig
fi
 
echo "$VAR.4"
if [ -e "libhardware_legacy/gps/gps.cpp.orig" ];then
    echo "Exist libhardware_legacy/gps/gps.cpp.orig"
    echo "Skip"
else
    echo "copy orignal libhardware_legacy/gps/gps.cpp"
    cp libhardware_legacy/gps/gps.cpp \
       libhardware_legacy/gps/gps.cpp.orig
fi
echo "End Section B3"

sleep 2

echo "Start Section B4 "
echo "Backup device files "
VAR=B4
cd ${ANDROID_DIR}
pwd
cd device/common
pwd
echo "$VAR.1"
if [ -e "gps/gps.conf_AS_SUPL.orig" ];then
    echo "Exist gps.conf_AS_SUPL.orig"
    echo "Skip"
else
    echo " copy orignal gps/gps.conf_AS_SUPL"
    cp gps/gps.conf_AS_SUPL \
       gps/gps.conf_AS_SUPL.orig
fi

echo "$VAR.2"
if [ -e "gps/gps.conf_EU_SUPL.orig" ];then
    echo "Exist gps.conf_EU_SUPL.orig"
    echo "Skip"
else
    echo " copy orignal gps/gps.conf_EU_SUPL"
    cp gps/gps.conf_EU_SUPL \
       gps/gps.conf_EU_SUPL.orig
fi

echo "$VAR.3"
if [ -e "gps/gps.conf_US_SUPL.orig" ];then
    echo "Exist gps.conf_US_SUPL.orig"
    echo "Skip"
else
    echo " copy orignal gps/gps.conf_US_SUPL"
    cp gps/gps.conf_US_SUPL \
       gps/gps.conf_US_SUPL.orig
fi
echo "End Section B4"
echo "End backup. "

sleep 2

echo "Next Copy new files ? (y or Y/else) else is skipped Copy files "
read key
if [ "$key" = "y" -o  "$key" = "Y" ];then
echo "Next ............"
echo "Start copy chaged files from patch-for-bc10/ "
echo "Section C1 "
echo "Copy new frameworks files"
VAR=C1
echo "$VAR.1"
    cp ${PATCH_DIR}/frameworks/base/core/java/android/view/RawInputEvent.java \
       ${ANDROID_DIR}/frameworks/base/core/java/android/view/RawInputEvent.java    

echo "$VAR.2"
    cp ${PATCH_DIR}/frameworks/base/include/ui/EventHub.h \
       ${ANDROID_DIR}/frameworks/base/include/ui/EventHub.h

echo "$VAR.3"
    cp ${PATCH_DIR}/frameworks/base/libs/ui/EventHub.cpp \
       ${ANDROID_DIR}/frameworks/base/libs/ui/EventHub.cpp

echo "$VAR.4"
    cp ${PATCH_DIR}/frameworks/base/services/java/com/android/server/InputDevice.java \
       ${ANDROID_DIR}/frameworks/base/services/java/com/android/server/InputDevice.java

echo "$VAR.5"
    cp ${PATCH_DIR}/frameworks/base/services/java/com/android/server/KeyInputQueue.java \
       ${ANDROID_DIR}/frameworks/base/services/java/com/android/server/KeyInputQueue.java

echo "$VAR.6"
    cp ${PATCH_DIR}/frameworks/base/services/java/com/android/server/WindowManagerService.java \
       ${ANDROID_DIR}/frameworks/base/services/java/com/android/server/WindowManagerService.java

echo "$VAR.7"
    cp ${PATCH_DIR}/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java \
       ${ANDROID_DIR}/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java

echo "$VAR.8"
    cp ${PATCH_DIR}/frameworks/base/libs/rs/Android.mk.patched \
       ${ANDROID_DIR}/frameworks/base/libs/rs/Android.mk

echo "$VAR.9"
    cp ${PATCH_DIR}/frameworks/base/graphics/jni/Android.mk.patched \
       ${ANDROID_DIR}/frameworks/base/graphics/jni/Android.mk

echo "$VAR.10"
    cp ${PATCH_DIR}/frameworks/base/media/libstagefright/omx/Android.mk.patched \
       ${ANDROID_DIR}/frameworks/base/media/libstagefright/omx/Android.mk

echo "$VAR.11"
    cp ${PATCH_DIR}/frameworks/base/media/libstagefright/omx/OMXMaster.cpp \
       ${ANDROID_DIR}/frameworks/base/media/libstagefright/omx/OMXMaster.cpp

echo "$VAR.12"
    cp ${PATCH_DIR}/frameworks/base/packages/SettingsProvider/res/values/defaults.xml \
       ${ANDROID_DIR}/frameworks/base/packages/SettingsProvider/res/values/defaults.xml

echo "$VAR.50"
    tar zxf ${PATCH_DIR}/libcameraservice.tar.gz -C \
            ${ANDROID_DIR}/frameworks/base/camera/
echo "End Section C1"
sleep 1

echo "Section C2 "
echo "Copy new system files"
VAR=C2
echo "$VAR.1"
    cp ${PATCH_DIR}/system/core/init/devices.c \
       ${ANDROID_DIR}/system/core/init/devices.c
###    cp device/beatcraft/patch-for-bc10/patch/system/vold/Volume.cpp system/vold/Volume.cpp
echo "$VAR.50"
    tar zxf ${PATCH_DIR}/libpixelflinger.tar.gz -C \
            ${ANDROID_DIR}/system/core/
echo "End Section C2"
sleep 1

echo "Section C3 "
echo "Copy new hardware files "
VAR=C3
echo "$VAR.50"
##   cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3 hardware/ti/omap3
    tar zxf ${PATCH_DIR}/hardware/ti/omap3.tar.gz -C \
            ${ANDROID_DIR}/hardware/ti/

##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libgralloc hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libopencorehw hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/liboverlay hardware/ti/omap3/
##    cp -fr device/beatcraft/patch-for-bc10/patch/hardware/ti/omap3/libstagefrighthw hardware/ti/omap3/
echo "$VAR.1"
    cp ${PATCH_DIR}/hardware/libhardware/include/hardware/overlay.h \
       ${ANDROID_DIR}/hardware/libhardware/include/hardware/overlay.h 

echo "$VAR.2"
    cp ${PATCH_DIR}/hardware/libhardware/Android.mk \
       ${ANDROID_DIR}/hardware/libhardware/Android.mk

echo "$VAR.3"
    cp ${PATCH_DIR}/hardware/libhardware_legacy/gps/Android.mk \
       ${ANDROID_DIR}/hardware/libhardware_legacy/gps/Android.mk

echo "$VAR.4"
    cp ${PATCH_DIR}/hardware/libhardware_legacy/gps/gps.cpp \
       ${ANDROID_DIR}/hardware/libhardware_legacy/gps/gps.cpp
echo "End Section C3"
sleep 1

echo "Section C4 "
echo "Copy new device files"
VAR=C4
echo "$VAR.1"
    cp ${PATCH_DIR}/device/common/gps/gps.conf_AS_SUPL \
       ${ANDROID_DIR}/device/common/gps/gps.conf_AS_SUPL

echo "$VAR.2"
    cp ${PATCH_DIR}/device/common/gps/gps.conf_EU_SUPL \
       ${ANDROID_DIR}/device/common/gps/gps.conf_EU_SUPL

echo "$VAR.3"
    cp ${PATCH_DIR}/device/common/gps/gps.conf_US_SUPL \
       ${ANDROID_DIR}/device/common/gps/gps.conf_US_SUPL

echo "End Section C4"
sleep 1

echo "Section Ex is copying files for bc10."
echo "Section Ex1 "
echo "Copy frameworks/base/data/sounds/Android.mk"
    cp ${ANDROID_DIR}/frameworks/base/data/sounds/AudioPackage4.mk \
       ${ANDROID_DIR}/frameworks/base/data/sounds/Android.mk

echo "Section Ex2 "
echo "Copy bionic/libc/common/linux/omap_resizer.h"
    cp ${PATCH_DIR}/bionic/libc/kernel/common/linux/omap_resizer.h \
       ${ANDROID_DIR}/bionic/libc/kernel/common/linux/omap_resizer.h

echo "Section EX3 "
echo "Copy libhardware/modules/sensors"
    tar zxf ${PATCH_DIR}/hardware/libhardware/modules/sensors.tar.gz -C \
            ${ANDROID_DIR}/hardware/libhardware/modules/

echo "Section EX4 "
echo "Copy libhardware_legacy/gps/gps_bc10.c"
    cp ${PATCH_DIR}/hardware/libhardware_legacy/gps/gps_bc10.c \
       ${ANDROID_DIR}/hardware/libhardware_legacy/gps/gps_bc10.c
 

echo "Section EX5 "
echo "Copy device/beatcraft/bc10 "
    tar zxf ${PATCH_DIR}/beatcraft.tar.gz -C \
            ${ANDROID_DIR}/device/
echo "End Section EX"
sleep 1
echo "End copy files"
else
    echo "Skip to copy new files" 
fi

echo "Whole process is completed !"
