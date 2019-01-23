# OTA default build type
ifeq ($(OTA_TYPE),)
OTA_TYPE=UNOFFICIAL
endif

# Make sure the uppercase is used
ifeq ($(OTA_TYPE),beta)
OTA_TYPE=BETA
endif
ifeq ($(OTA_TYPE),official)
OTA_TYPE=OFFICIAL
endif

#Device name
DEVICE := $(subst cosp_,,$(TARGET_PRODUCT))

ifneq ($(OTA_TYPE),UNOFFICIAL)
# OTA app
PRODUCT_PACKAGES += \
    Updates

# OTA Configuration
$(shell echo -e "OTA_Configuration\n \
ota_beta=https://raw.githubusercontent.com/cosp-project/OTAconfig/pie/ota_$(DEVICE)_beta.xml\n \
ota_official=https://raw.githubusercontent.com/cosp-project/OTAconfig/pie/ota_$(DEVICE)_official.xml\n \
device_name=org.cosp.device\n \
release_type=Pie\n \
version_source=org.cosp.version\n \
version_delimiter=-\n \
version_position=1\n \
version_format=yyMMdd" > $(OTA_DIR)/ota_conf)
endif
