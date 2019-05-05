# Telephony

IS_PHONE := true

# World APN list
PRODUCT_COPY_FILES += \
    vendor/ctosp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Default ringtone
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.ringtone=The_big_adventure.ogg

# Inherit full common Ctosp stuff
$(call inherit-product, vendor/ctosp/config/common_full.mk)
