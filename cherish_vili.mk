#
# Copyright (C) 2021 The CherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vili device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

#Inherit Pixel Launcher Extended
$(call inherit-product, vendor/PixelLauncherExtended/PixelLauncher.mk)

# Inherit some Cherish build stuff.
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS=true
PROCESSOR_MODEL := sm8350
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := cherish_vili


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili-user 12 RKQ1.211001.001 V13.0.21.0.SKDEUXM release-keys"

BUILD_FINGERPRINT := "Xiaomi/vili/vili:12/RKQ1.211001.001/V13.0.21.0.SKDEUXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer= thatmalayali
CHERISH_BUILD_TYPE := OFFICIAL

#Adding Pixel Launcher Extended props
PIXEL_LAUNCHER_VARIANT := fullmod2z
ICONS_VARIANT := lawnicons
