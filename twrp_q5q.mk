#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from q5q device
$(call inherit-product, device/samsung/q5q/device.mk)

PRODUCT_DEVICE := q5q
PRODUCT_NAME := twrp_q5q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F946B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="q5qxxx-user 13 TP1A.220624.014 F946BXXS1BWL7 release-keys"

BUILD_FINGERPRINT := samsung/q5qxxx/q5q:13/TP1A.220624.014/F946BXXS1BWL7:user/release-keys
