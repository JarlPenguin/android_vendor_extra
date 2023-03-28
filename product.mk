# CarrierSettings
#ifneq ($(filter %nio %surya,$(TARGET_PRODUCT)),)
#$(call inherit-product, vendor/extra/config/carrier_settings.mk)

# Include Carrier Runtime Configuration
#PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/extra/CarrierSettings/overlay
#endif

# Enable Google Play system updates for nio
ifneq ($(filter %nio %surya,$(TARGET_PRODUCT)),)
MAINLINE_INCLUDE_ART_MODULE := true
MAINLINE_INCLUDE_BT_MODULE := false
MAINLINE_INCLUDE_UWB_MODULE := true
MAINLINE_INCLUDE_WIFI_MODULE := true
include vendor/extra/config/apex.mk
endif

# Permissions
PRODUCT_PACKAGES += \
    quick_tap

# Overlays
PRODUCT_PACKAGES += \
    GoogleConfigOverlayExtra \
    NetworkStackOverlayExtra \
    PixelConfigOverlayCommonExtra

ifneq ($(filter %nio,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    NexusLauncherOverlayNio \
    SystemUIGoogleOverlayNio
endif

ifneq ($(filter %surya,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    NexusLauncherOverlaySurya \
    SystemUIGoogleOverlaySurya
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
