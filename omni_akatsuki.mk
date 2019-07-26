# Copyright 2019 The Android Open Source Project
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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080p
# TODO Test this WRT display corruption
#TARGET_BOOTANIMATION_SIZE := 1440p

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit device parts
# $(call inherit-product, device/sony/akatsuki/aosp_h8416.mk)
# WARNING: DSDS
$(call inherit-product, device/sony/akatsuki/aosp_h9436.mk)

# Override Product Name
PRODUCT_NAME := omni_akatsuki
PRODUCT_MODEL := Xperia XZ3

# Assert ota packages to be equal to ro.product.device or ro.build.product:
TARGET_OTA_ASSERT_DEVICE := akatsuki

# TWRP prop to fix touch by blanking the screen on boot
TW_SCREEN_BLANK_ON_BOOT := true

# Inherit rom parts
$(call inherit-product, device/sony/common/omni.mk)
