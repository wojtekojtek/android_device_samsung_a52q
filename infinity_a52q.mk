#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/a52q/device.mk)

TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Infinity stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Enable utrueing of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := infinity_a52q
PRODUCT_DEVICE := a52q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A525F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

# Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a52qnsxx/a52q:11/RP1A.200720.012/A525FXXUAFXL2:user/release-keys" \
    BuildDesc="a52qnsxx-user 11 RP1A.200720.012 A525FXXUAFXL2 release-keys"

# Security patch
VENDOR_SECURITY_PATCH := 2024-11-01

# Infinity X
INFINITY_MAINTAINER := "wojtekojtek"
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=Samsung A52 4G \
    ro.infinity.soc=Snapdragon 720G \
    ro.infinity.battery=4500 mAh \
    ro.infinity.display=1080 x 2400, 90 Hz \
    ro.infinity.camera=64MP + 12MP + 5MP + 5MP
