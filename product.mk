# CarrierSettings
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
$(call inherit-product, vendor/extra/config/carrier_settings.mk)
endif

# Enable Google Play system updates for nio
ifneq ($(filter %nio %river,$(TARGET_PRODUCT)),)
include vendor/extra/config/apex.mk
endif

# NGA
ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    NgaResources
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
