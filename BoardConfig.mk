#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Inherit from common device
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili

# Camera
MALLOC_SVELTE_FOR_LIBC32 := true
MALLOC_SVELTE := true

# Firmware
-include vendor/xiaomi/vili-firmware/BoardConfigVendor.mk

# HIDL
ODM_MANIFEST_SKUS := \
    vili \
    vilijp

NFC_ESE_MANIFEST := $(DEVICE_PATH)/hidl/nfc_ese.xml

ODM_MANIFEST_VILI_FILES := $(NFC_ESE_MANIFEST)
ODM_MANIFEST_VILIJP_FILES := $(NFC_ESE_MANIFEST)

# Kernel
TARGET_KERNEL_CONFIG += vendor/vili_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
  hwid.ko

BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := vili

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Include proprietary-files
include vendor/xiaomi/vili/BoardConfigVendor.mk
