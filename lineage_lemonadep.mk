#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
DEVICE_CODENAME := lemonadep
DEVICE_PATH := device/oneplus/lemonadep
COMMON_PATH := device/oneplus/sm8350-common
VENDOR_PATH := vendor/oneplus/lemonadep
COMMON_VENDOR_PATH := vendor/oneplus/sm8350-common
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit some common stuff
ROM_VENDOR := lineage
ifdef ROM_VENDOR
$(call inherit-product, vendor/$(ROM_VENDOR)/config/common_full_phone.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

# Inherit device configuration
ifdef ROM_VENDOR
PRODUCT_NAME := $(ROM_VENDOR)_$(DEVICE_CODENAME)
else
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
endif
PRODUCT_DEVICE := $(DEVICE_CODENAME)
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2125

# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# GMS
WITH_GMS := true

# Mist OS Flags
MIST_BUILD_TYPE := UNOFFICIAL
MISTOS_MAINTAINER := GamerBoy1234294

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Build props
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9Pro-user 14 UKQ1.230924.001 R.1d5a0be-1-4ffee release-keys" \
    BuildFingerprint=OnePlus/OnePlus9Pro/OnePlus9Pro:14/UKQ1.230924.001/R.1d5a0be-1-4ffee:user/release-keys \
    DeviceName=OnePlus9Pro \
    DeviceProduct=OnePlus9Pro \
    SystemDevice=OnePlus9Pro \
    SystemName=OnePlus9Pro
