# Apps
PRODUCT_PACKAGES += \
    Drive \
    GCS \
    MaestroPrebuilt \
    Maps \
    OdadPrebuilt \
    PrebuiltGmail

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
MAINLINE_INCLUDE_BT_MODULE := true
MAINLINE_INCLUDE_UWB_MODULE := true
MAINLINE_INCLUDE_WIFI_MODULE := true
include vendor/extra/config/apex.mk
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
    com.google.android.odad

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
