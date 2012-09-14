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

# Use the non-open-source part, if present
-include vendor/manta/mid08/BoardConfigVendor.mk

# Use the part that is common between all allwinner
include device/allwinner/a13/BoardConfig.mk

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/manta/mid08/recovery_keys.c

TARGET_PREBUILT_KERNEL := device/allwinner/a13/kernel
#TARGET_KERNEL_CONFIG := sun5i_manta_defconfig
#TARGET_KERNEL_SOURCE := $(ANDROID_BUILD_TOP)/kernel/
#TARGET_KERNEL_MODULES_EXT := $(ANDROID_BUILD_TOP)/vendor/allwinner/a13/proprietary/lib/modules

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true