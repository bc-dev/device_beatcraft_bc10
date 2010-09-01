LOCAL_PATH := $(call my-dir)

ALSA_CONF_FILE := out/target/product/$(TARGET_PRODUCT)/system/etc

file := $(ALSA_CONF_FILE)/asound.conf
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/asound.conf | $(ACP)
	$(transform-prebuilt-to-target)

# keyboard layouts
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/qwerty.kl:system/usr/keylayout/qwerty.kl

# board specific init.rc
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.rc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.omap3.rc:root/init.omap3.rc

# vold.conf
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

# init.omap3.sh
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.omap3.sh:system/etc/init.omap3.sh

