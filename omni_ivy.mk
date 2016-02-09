# Copyright 2016 The Android Open Source Project
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

# Inherit AOSP Kitakami common device parts
$(call inherit-product, device/sony/ivy/aosp_e6553.mk)

# Inherit Omni Kitakami common device parts
$(call inherit-product, device/sony/kitakami-common/device_omni.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Override Product Name for OmniROM
PRODUCT_NAME := omni_ivy
PRODUCT_MODEL := Xperia Z3+

# Assert
TARGET_OTA_ASSERT_DEVICE := ivy,E6553

TW_THEME := portrait_hdpi
