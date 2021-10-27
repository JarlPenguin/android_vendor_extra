# Apex
$(call inherit-product, vendor/extra/config/apex.mk)

# CarrierSettings
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
$(call inherit-product, vendor/extra/config/carrier_settings.mk)
endif

# Enable Google Play system updates for river
ifneq ($(filter %river,$(TARGET_PRODUCT)),)
MODULE_BUILD_FROM_SOURCE := false
MAINLINE_COMPRESS_APEX_ADBD := false
MAINLINE_COMPRESS_APEX_ART := false
MAINLINE_COMPRESS_APEX_CELLBROADCAST := false
MAINLINE_COMPRESS_APEX_CONSCRYPT := false
MAINLINE_COMPRESS_APEX_RESOLV := false
MAINLINE_COMPRESS_APEX_EXTSERVICES := false
MAINLINE_COMPRESS_APEX_IPSEC := false
MAINLINE_COMPRESS_APEX_MEDIA := false
MAINLINE_COMPRESS_APEX_MEDIAPROVIDER := false
MAINLINE_COMPRESS_APEX_MEDIASWCODEC := false
MAINLINE_COMPRESS_APEX_NEURALNETWORKS := false
MAINLINE_COMPRESS_APEX_STATSD := false
MAINLINE_COMPRESS_APEX_PERMISSION := false
MAINLINE_COMPRESS_APEX_SCHEDULING := false
MAINLINE_COMPRESS_APEX_SDKEXT := false
MAINLINE_COMPRESS_APEX_TETHERING := false
MAINLINE_INCLUDE_WIFI_MODULE := true
MAINLINE_COMPRESS_APEX_WIFI := false
include vendor/partner_modules/build/mainline_modules.mk
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
