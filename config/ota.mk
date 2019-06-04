ifneq ($(IS_GENERIC_SYSTEM_IMAGE), true)
ifeq ($(CTOSP_BUILD_TYPE), OFFICIAL)

ifeq ($(IS_GO_VERSION), true)
CTOSP_OTA_VERSION_CODE := pie_go
else
CTOSP_OTA_VERSION_CODE := pie
endif

CTOSP_PROPERTIES += \
    org.ctosp.ota.version_code=$(CTOSP_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    CtospOTA

PRODUCT_COPY_FILES += \
    vendor/ctosp/config/permissions/org.ctosp.ota.xml:system/etc/permissions/org.ctosp.ota.xml

endif
endif
