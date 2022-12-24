# CarrierSettings
#ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
#$(call inherit-product, vendor/extra/config/carrier_settings.mk)

# Include Carrier Runtime Configuration
#PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/hentai/CarrierSettings/overlay
#endif

# Apps
PRODUCT_PACKAGES += \
    Drive \
    Maps \
    PrebuiltGmail \
    TipsPrebuilt

# Enable Google Play system updates for nio
ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
MAINLINE_INCLUDE_ART_MODULE := true
MAINLINE_INCLUDE_BT_MODULE := true
MAINLINE_INCLUDE_UWB_MODULE := true
MAINLINE_INCLUDE_WIFI_MODULE := true
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
    NetworkStackOverlayExtra \
    NexusLauncherOverlay \
    PixelConfigOverlayCommonExtra \
    SystemUIGoogleOverlayExtra

# Permissions
PRODUCT_PACKAGES += \
    pixel_tips

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
