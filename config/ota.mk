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

ifneq ($(OTA_TYPE),UNOFFICIAL)
# OTA app
PRODUCT_PACKAGES += \
    Updates
	
endif
