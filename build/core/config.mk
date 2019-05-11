BUILD_RRO_SYSTEM_PACKAGE := $(TOPDIR)vendor/cosp/build/core/system_rro.mk

# Rules for MTK targets
include $(TOPDIR)vendor/cosp/build/core/mtk_target.mk

# We modify several neverallows, so let the build proceed
ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

# Rules for QCOM targets
include $(TOPDIR)vendor/cosp/build/core/qcom_target.mk
