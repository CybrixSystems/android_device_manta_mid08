# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to mid08 devices
#
# Anything that is generic to all manta products should go in the common directory
#
# Everything in this directory will become public

$(call inherit-product, device/allwinner/a13/device.mk)
$(call inherit-product-if-exists, vendor/manta/mid08/mid08-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/manta/mid08/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#
PRODUCT_COPY_FILES := \
	device/manta/mid08/ramdisk/modules/sw-keyboard.ko:/root/lib/modules/sw-keyboard.ko \
	device/manta/mid08/ramdisk/modules/ft5x_ts.ko:/root/lib/modules/ft5x_ts.ko \
	device/manta/mid08/ramdisk/init.rc:root/init.rc \
	device/manta/mid08/ramdisk/initlogo.rle:root/initlogo.rle \
	device/manta/mid08/ramdisk/init.sun5i.rc:root/init.sun5i.rc \
	device/manta/mid08/ramdisk/init.sun5i.usb.rc:root/init.sun5i.usb.rc \
	device/manta/mid08/ramdisk/ueventd.sun5i.rc:root/ueventd.sun5i.rc    


PRODUCT_COPY_FILES += \
	device/manta/mid08/config/camera.cfg:system/etc/camera.cfg \
	device/manta/mid08/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/manta/mid08/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
# 	device/manta/mid08/init.sun5i.modules.rc:root/init.sun5i.modules.rc \

