#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X4000 device
$(call inherit-product, device/xreal/X4000/device.mk)

PRODUCT_DEVICE := X4000
PRODUCT_NAME := omni_X4000
PRODUCT_BRAND := XREAL
PRODUCT_MODEL := X4000
PRODUCT_MANUFACTURER := xreal

PRODUCT_GMS_CLIENTID_BASE := android-xreal

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X4000-user 12 SKQ1.231214.001 X4000_X112_240621_ROW release-keys"

BUILD_FINGERPRINT := XREAL/X4000/X4000:12/SKQ1.231214.001/X4000_X112_240621_ROW:user/release-keys
