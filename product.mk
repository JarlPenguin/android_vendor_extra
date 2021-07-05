# Apex
$(call inherit-product, vendor/extra/config/apex.mk)

# Enable Google Play system updates for river
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
MAINLINE_INCLUDE_WIFI_MODULE := true
include vendor/partner_modules/build/mainline_modules.mk
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
