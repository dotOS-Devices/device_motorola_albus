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

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

## Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_albus
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := albus
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto Z2 Play

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="albus" \
    PRODUCT_NAME="albus" \
    PRIVATE_BUILD_DESC="albus-user 9 PPS29.133-30 ab8b4 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/crosshatch/crosshatch:11/RQ3A.210805.001.A1/7474174:user/release-keys"
