#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from DiLink4.0 device
$(call inherit-product, device/byd/DiLink4/device.mk)

PRODUCT_DEVICE := DiLink4
PRODUCT_NAME := omni_DiLink4
PRODUCT_BRAND := BYD-AUTO
PRODUCT_MODEL := OCMOD TWRP MODE
PRODUCT_MANUFACTURER := byd

PRODUCT_GMS_CLIENTID_BASE := android-byd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lito-user 10 QKQ1.210218.001 build09230125 release-keys"

BUILD_FINGERPRINT := qti/lito/lito:10/QKQ1.210218.001/build09230125:user/release-keys
