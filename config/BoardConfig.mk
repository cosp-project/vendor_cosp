include vendor/cosp/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cosp/config/BoardConfigQcom.mk
endif

include vendor/cosp/config/BoardConfigSoong.mk
