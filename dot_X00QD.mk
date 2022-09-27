#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit from X00QD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00QD
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := Zenfone 5
PRODUCT_NAME := dot_X00QD
PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR_PRODUCT_NAME := X00QD
TARGET_VENDOR_DEVICE_NAME := X00QD

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X00QD \
    PRODUCT_NAME=WW_X00QD \
    PRIVATE_BUILD_DESC="WW_Phone-user 9 PPR1.180610.009 16.0615.2006.131-0 release-keys"

BUILD_FINGERPRINT := asus/WW_Phone/ASUS_X00QD:9/PPR1.180610.009/16.0615.2006.131-0:user/release-keys
