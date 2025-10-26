#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
include device/xiaomi/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/veux

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := veux
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := veux_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/veux
TARGET_KERNEL_NO_GCC := true