ifeq ($(TARGET_FLATTEN_APEX),false)
# Overlay
PRODUCT_PACKAGES += \
    ApexOverlay

# Enable Google Play system updates support
PRODUCT_SOONG_NAMESPACES += \
    vendor/extra/apex
endif
