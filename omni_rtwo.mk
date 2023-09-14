#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

PRODUCT_DEVICE := rtwo
PRODUCT_NAME := omni_rtwo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rtwo_ge-user 13 T1TRS33.43-20-28-2 888045-8d5819 release-keys"

BUILD_FINGERPRINT := motorola/rtwo_ge/rtwo:13/T1TRS33.43-20-28-2/888045-8d5819:user/release-keys
