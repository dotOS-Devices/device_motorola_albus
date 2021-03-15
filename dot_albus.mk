# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from albus device
$(call inherit-product, device/motorola/albus/device.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/dot/config/common.mk)
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := albus
PRODUCT_NAME := dot_albus
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto Z2 Play" \
    PRIVATE_BUILD_DESC="albus-user 9 PPS29.133-30 ab8b4 release-keys"

# FINGERPRINT
BUILD_FINGERPRINT := google/walleye/walleye:11/RPB3.200720.005/6705141:user/release-keys 
VENDOR_BUILD_FINGERPRINT := google/walleye/walleye:11/RPB3.200720.005/6705141:user/release-keys
