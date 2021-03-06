# CarrierSettings
#ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
#$(call inherit-product, vendor/extra/config/carrier_settings.mk)
#endif

# Apps
PRODUCT_PACKAGES += \
    Drive \
    Maps \
    PrebuiltGmail \
    TipsPrebuilt

# Enable Google Play system updates for nio
ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
include vendor/extra/config/apex.mk
endif

# NGA
ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    NgaResources
endif

# Overlays
PRODUCT_PACKAGES += \
    GoogleConfigOverlayExtra \
    NexusLauncherOverlay \
    PixelConfigOverlayCommonExtra \
    SystemUIGoogleOverlayExtra

# Permissions
PRODUCT_PACKAGES += \
    pixel_tips

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
