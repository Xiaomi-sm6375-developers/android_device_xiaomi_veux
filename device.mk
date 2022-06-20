#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
$(call inherit-product, device/xiaomi/sm6375-common/common.mk)

DEVICE_PATH := device/xiaomi/laurel_sprout

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlays
PRODUCT_PACKAGES += \
    FrameworkOverlayVEUX \
    LineageSDKOverlayVEUX \
    SettingsOverlayVEUX \
    SystemUIOverlayVEUX \
    WifiOverlayVEUX

PRODUCT_PACKAGES += \
    SettingsProviderOverlay2201116SG \
    SettingsProviderOverlay2201116SC \
    SettingsProviderOverlay2201116SI \
    SettingsProviderOverlay2201116SR \
    SettingsProviderOverlay2201116PG \
    SettingsProviderOverlay2201116PI

PRODUCT_PACKAGES += \
    EuiccOverlay2201116SR \
    SettingsOverlay2201116SR

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/veux/veux-vendor.mk)