ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CUSTOM_OTA_VERSION_CODE := ten

CUSTOM_PROPERTIES += \
    org.ctosp.ota.version_code=$(CUSTOM_OTA_VERSION_CODE)

PRODUCT_PACKAGES += \
   CtospOTA

PRODUCT_COPY_FILES += \
    vendor/ctosp/config/permissions/org.ctop.ota.xml:system/etc/permissions/org.ctosp.ota.xml

endif
