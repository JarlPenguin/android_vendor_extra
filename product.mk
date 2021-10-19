# Apex
$(call inherit-product, vendor/extra/config/apex.mk)

# CarrierSettings
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
$(call inherit-product, vendor/extra/config/carrier_settings.mk)
endif

# Enable Google Play system updates for river
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
MODULE_BUILD_FROM_SOURCE := false
MAINLINE_INCLUDE_WIFI_MODULE := true
include vendor/partner_modules/build/mainline_modules.mk
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
