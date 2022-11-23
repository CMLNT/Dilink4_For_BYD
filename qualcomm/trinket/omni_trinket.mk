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

# Inherit from trinket device
$(call inherit-product, device/qualcomm/trinket/device.mk)

PRODUCT_DEVICE := trinket
PRODUCT_NAME := omni_trinket
PRODUCT_BRAND := qti
PRODUCT_MODEL := trinket for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200816.002 1 release-key"

BUILD_FINGERPRINT := qti/trinket/trinket:10/QKQ1.200816.002/1:user/release-key
