# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_kitakami_ivy_defconfig

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/ivy/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/sony/kitakami/platform.mk)
$(call inherit-product, vendor/sony/ivy/ivy-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    device/sony/ivy/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/sony/ivy/rootdir/system/etc/BCM4356.hcd:system/etc/firmware/BCM43xx.hcd \
    device/sony/ivy/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/sony/ivy/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/ivy/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/ivy/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/ivy/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/ivy/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.ivy \
    init.ivy \
    ueventd.ivy

# Lights
PRODUCT_PACKAGES += \
    lights.ivy

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.ivy

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.ivy

PRODUCT_NAME := aosp_e6553
PRODUCT_DEVICE := ivy
PRODUCT_MODEL := Xperia Z3+ (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1C9
