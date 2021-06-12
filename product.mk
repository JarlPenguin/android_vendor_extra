# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey

# Updater
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += lineage.updater.allow_downgrading=true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += lineage.updater.uri="https://github.com/moto-msm8937/releases/raw/master/{device}/lineage18.json"
