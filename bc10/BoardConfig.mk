# config.mk
# 
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
USE_CAMERA_STUB := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
AVE_HTC_AUDIO_DRIVER := false
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := omap3
USE_CUSTOM_RUNTIME_HEAP_MAX := "64M"
USE_CUSTOM_SURFACEFLINGER_HEAP_MAX := 16
WITH_JIT := true
JS_ENGINE := v8
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
