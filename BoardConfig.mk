# Copyright (C) 2012 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from new common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/glacier/BoardConfigVendor.mk

# inherit bcmdhd config
-include device/htc/msm7x30-common/bcmdhd.mk

TARGET_BOOTLOADER_BOARD_NAME := glacier

# Trackpad
BOARD_USE_LEGACY_TRACKPAD := true

# Camera
BOARD_HAVE_HTC_FFC := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Adreno
BOARD_EGL_NEEDS_LEGACY_FB := false
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Audio
BOARD_USES_QCOM_AUDIO_VOIPMUTE := false
BOARD_USES_QCOM_AUDIO_RESETALL := false

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := glacier
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x04000000
BOARD_KERNEL_PAGE_SIZE := 4096
BUILD_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
TARGET_KERNEL_CONFIG := evervolv_glacier_defconfig
KERNEL_TOOLCHAIN_PREFIX:=$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
