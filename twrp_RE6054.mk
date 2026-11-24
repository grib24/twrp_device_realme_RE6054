#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/realme/RE6054/device.mk)

PRODUCT_DEVICE := RE6054
PRODUCT_NAME := twrp_RE6054
PRODUCT_BRAND := realme
PRODUCT_MODEL := ussi_arm64_full
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := RE6054

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ussi_arm64_full-user 16 BP2A.250605.031.A3 10 release-keys"
BUILD_FINGERPRINT := realme/RMX3930/RE6054:16/BP2A.250605.031.A3/U.R4T2.1783691494:user/release-keys

PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)/prebuilt

PRODUCT_PACKAGES += \
    android.security.apc-ndk_platform \
    android.system.keystore2-V1-ndk_platform \
    android.security.authorization-ndk_platform \
    android.security.maintenance-ndk_platform \
    android.hardware.security.keymint-V1-ndk_platform
