#
# Copyright 2017 The Android Open Source Project
#
# Copyright (C) 2018-2020 OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a20

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7884B

# Kernel: Basic
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos7884B androidboot.selinux=permissive

# Kernel: Base flags
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE            := 0x10000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_RAMDISK_OFFSET         := 0x01000000
BOARD_KERNEL_TAGS_OFFSET     := 0x00000100

# Kernel: mkbootimg args
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Prebuilt: Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_KERNEL_IMAGE_NAME := Image

# Prebuilt: DTB
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Prebuilt: DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true

# Platform
TARGET_BOARD_PLATFORM := exynos7884B
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Cryptfs
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE := true

# Recovery
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_LARGE_FILESYSTEM := true

# A/B
AB_OTA_UPDATER := false

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4320133120
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528
BOARD_VENDORIMAGE_PARTITION_SIZE := 570425344
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems: data/vendor/system
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4

# Support of F2FS/EXT4 (userimage/data)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Target copy out
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration: Basic
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# TWRP Configuration: Others
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
