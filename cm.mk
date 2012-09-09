# Release name
PRODUCT_RELEASE_NAME := MID08

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/manta/mid08/full_mid08.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mid08
PRODUCT_NAME := cm_mid08
PRODUCT_BRAND := Manta
PRODUCT_MODEL := MID08
PRODUCT_MANUFACTURER := Manta

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mid08 BUILD_FINGERPRINT="Manta/mid08/mid08:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="mid08-user 4.0.4 IMM76I 330937 release-keys"
