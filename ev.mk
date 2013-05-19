# Inherit from glacier device
$(call inherit-product, device/htc/glacier/device.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/liquid/config/common_gsm.mk)
$(call inherit-product, vendor/liquid/config/common_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := liquid_glacier
PRODUCT_DEVICE := glacier
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := myTouch 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_FINGERPRINT=tmous/htc_glacier/glacier:4.2.2/JDQ39/95282.1:user/release-keys PRIVATE_BUILD_DESC="2.19.531.1 CL95282 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Glacialis
PRODUCT_VERSION_DEVICE_SPECIFIC := p1
