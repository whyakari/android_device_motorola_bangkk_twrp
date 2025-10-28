#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

PRODUCT_DEVICE := bangkk
PRODUCT_NAME := twrp_bangkk
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5g
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bangkk_g-user 11 V1TC35H.88-16 c3b1cd release-keys"

BUILD_FINGERPRINT := motorola/bangkk_g/bangkk:11/V1TC35H.88-16/c3b1cd:user/release-keys
