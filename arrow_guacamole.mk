#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit common ArrowOS configurations
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1911
PRODUCT_BRAND := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 12 SKQ1.211113.001 P.202210120815 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7Pro/OnePlus7Pro:12/SKQ1.211113.001/P.202210120815:user/release-keys

# ArrowOS additions
DEVICE_MAINTAINER := lamjiidii1
